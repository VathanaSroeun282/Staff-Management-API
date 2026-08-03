using System.Runtime.CompilerServices;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Infrastructure;
using Microsoft.EntityFrameworkCore;
using staffmanagment_api.Data.StaffManagementSystem.Data;
using staffmanagment_api.DTOs;
using staffmanagment_api.DTOs.staffmanagment_api.DTOs;
using staffmanagment_api.Mappers;
using staffmanagment_api.Models;

namespace staffmanagment_api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class RoleController : ControllerBase
    {
        private readonly AppDbContext? _context;
        public RoleController(AppDbContext context)
        {
            _context = context;
        }
        [HttpGet]
        public async Task<IActionResult> GetRole()
        {
            try
            {
                //var allRole = "null";
                var allRole = await _context!.Roles.Include(role=>role.Employees).Select(
                    e => RoleMapper.ToDto(e)
                    ).ToListAsync();
                if (allRole == null || allRole.Count == 0)
                {
                    return NotFound("No roles found");
                }
                return Ok(allRole);
            }
            catch
            {
                return StatusCode(500, "Internal server error while fetching roles");
            }
        }
        [HttpGet("{id:int}")]
        public async Task<IActionResult> GetRoleByID(int id)
        {
            var find_Role = await _context!.Roles.FindAsync(id);
            if (find_Role == null)
            {
                return NotFound($"Role with ID {id} not found");
            }
            return Ok(find_Role);
        }
        [HttpPost]
        public async Task<IActionResult> PostAddNewRole(CreateRoleDto newRole)
        {
            var find_Role = await _context!.Roles.FirstOrDefaultAsync(r => r.RoleName == newRole.RoleName);
            if (find_Role == null) {
                await _context.Roles.AddAsync(new Role { 
                    RoleName = newRole.RoleName
                });
                await _context.SaveChangesAsync();
                return Ok("New Role '"+newRole.RoleName+"' has been created!");
            }
            return NotFound("Your insert role is conflict! Please try again later!");
        }
        [HttpDelete("{id:int}")]
        public async Task<IActionResult> DeleteRole(int id)
        {
            var find_Role = await _context!.Roles.FindAsync(id);
            if(find_Role == null)
            {
                return NotFound($"Role with ID {id} not found");
            }
            _context.Roles.Remove(find_Role);
            await _context.SaveChangesAsync();
            return Ok($"Delete Role {find_Role.RoleName}");
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateRole(int id, UpdateRoleDto createRoleDto)
        {
            try
            {
                var role = await _context!.Roles.FindAsync(id);
                if (role == null)
                {//
                    return NotFound("Role record not found.");
                }
                // Update fields
                role.RoleName = createRoleDto.RoleName;
                // Save changes
                await _context.SaveChangesAsync();
                return Ok("Role has been updated successfully!");
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
            finally { _context?.Dispose(); }
        }
    }
}