
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.FileProviders;
using staffmanagment_api.Data.StaffManagementSystem.Data;
using staffmanagment_api.DTOs;
using staffmanagment_api.DTOs.staffmanagment_api.DTOs;
using staffmanagment_api.Mappers;

namespace staffmanagment_api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuditLogController : ControllerBase
    {
        private readonly AppDbContext? _dbContext;
        public AuditLogController(AppDbContext dbContext)
        {
            _dbContext = dbContext;
        }
        [HttpGet]
        public async Task<IActionResult> GetAlluditLogs()
        {
            try
            {
                var all_auditLogs = await _dbContext!.AuditLogs
                    .Include(aud => aud.Employee)
                    .Select(aud => AuditLogMapper.ToDto(aud))
                    .ToArrayAsync();
                if(all_auditLogs.Any())
                {
                    return Ok(all_auditLogs);
                }
                return NotFound();
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }
        [HttpGet("{id}")]
        public async Task<IActionResult> GetAuditLogByID(int id)
        {
            try
            {
                var find_auditLog = await _dbContext!.AuditLogs
                   .Include(aud => aud.Employee)
                   .Where(aud => aud.AuditLogID == id)
                   .Select(aud => AuditLogMapper.ToDto(aud))
                   .FirstOrDefaultAsync();
                if (find_auditLog == null)
                {
                     return NotFound();
                   
                }
                return Ok(find_auditLog);
            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
            finally { _dbContext?.Dispose(); }
        }
        [HttpPost]
        public async Task<IActionResult> PostAddNewAuditLog(CreateAuditLogDto createAuditLogDto)
        {
            _dbContext!.AuditLogs.Add(AuditLogMapper.FromCreateDto(createAuditLogDto));
            await _dbContext!.SaveChangesAsync();
            return Ok("This AuditLog already add to the list!");
        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAuditLog(int id)
        {

            try
            {
                var find_auditLog = await _dbContext!.AuditLogs.FindAsync(id);
                if (find_auditLog == null) return NotFound($"ID = {id} not found!");
                _dbContext!.AuditLogs.Remove(find_auditLog);
                await _dbContext!.SaveChangesAsync();
                return Ok("This AuditLog delete successful!");
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
            finally { _dbContext?.Dispose(); }
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> PutUpdateAuditLog(int id, CreateAuditLogDto createAuditLogDto)
        {
            try
            {
                var auditLog = await _dbContext!.AuditLogs.FindAsync(id);
                if (auditLog == null)
                {//
                    return NotFound("Audit-Log record not found.");
                }

                // Update fields
                auditLog.ChangeType = createAuditLogDto.ChangeType;
                auditLog.ChangeDate = createAuditLogDto.ChangeDate;
                auditLog.ChangedBy = createAuditLogDto.ChangedBy;
                auditLog.EmployeeID = createAuditLogDto.EmployeeID;

                // Save changes
                await _dbContext.SaveChangesAsync();
                return Ok("Audit-Log updated successfully!");
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
            finally { _dbContext?.Dispose(); }
        }
    }
}
