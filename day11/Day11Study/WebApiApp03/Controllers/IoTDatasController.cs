using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApiApp03.Models;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Diagnostics;

namespace WebApiApp03.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class IoTDatasController : ControllerBase
    {
        private readonly AppDbContext _context;

        public IoTDatasController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/IoTDatas
        [HttpGet]
        public async Task<ActionResult<IEnumerable<iot_datas>>> GetIotDatas(string serviceKey, string startDate, string endDate, string resultType)
        {
            // 실제 데이터포털(data.go.kr)에서 사용하는 방법
            // 1. 서비스키가 일치하는 요청만 수행
            if (serviceKey == null)
            {
                return BadRequest();
            }
            else
            {
                // 서버에서 키를 검색해서 검증된 키인지 확인하고 맞으면 진행
            }

            // 2. pageNo, numOfRows 파라미터가 있으면, 실제 데이터를 페이징해서 데이터를 돌려받음
            Debug.WriteLine(startDate, endDate);
            var result = await _context.iot_datas.FromSql($"SELECT * FROM iot_datas WhERE sensing_dt BETWEEN {startDate} AND {endDate}").ToListAsync();

            // 3. resultType이 xml과 json에 따라 리턴하는 데이터형을 변경
            if(resultType == "xml")
            {
                // XML로 형변환
            }
            else if(resultType == "jsons")
            {
                // JSON으로 형변환
            }

            return result;
        }

        // GET: api/IoTDatas/5
        [HttpGet("{id}")]
        public async Task<ActionResult<iot_datas>> GetIotData(int id)
        {
            var data = await _context.iot_datas.FindAsync(id);

            if (data == null)
            {
                return NotFound();
            }

            return data;
        }

        // PUT: api/IoTDatas/5
        //[HttpPut("{id}")]
        //public async Task<IActionResult> PutIotData(int id, iot_datas data)
        //{
        //    if (id != data.Id)
        //    {
        //        return BadRequest();
        //    }

        //    _context.Entry(data).State = EntityState.Modified;

        //    try
        //    {
        //        await _context.SaveChangesAsync();
        //    }
        //    catch (DbUpdateConcurrencyException)
        //    {
        //        if (!IotDataExists(id))
        //        {
        //            return NotFound();
        //        }
        //        else
        //        {
        //            throw;
        //        }
        //    }

        //    return NoContent();
        //}

        //// POST: api/IoTDatas
        //[HttpPost]
        //public async Task<ActionResult<iot_datas>> PostIotData(iot_datas data)
        //{
        //    _context.iot_datas.Add(data);
        //    await _context.SaveChangesAsync();

        //    return CreatedAtAction(nameof(GetIotData), new { id = data.Id }, data);
        //}

        //// DELETE: api/IoTDatas/5
        //[HttpDelete("{id}")]
        //public async Task<IActionResult> DeleteIotData(int id)
        //{
        //    var data = await _context.iot_datas.FindAsync(id);
        //    if (data == null)
        //    {
        //        return NotFound();
        //    }

        //    _context.iot_datas.Remove(data);
        //    await _context.SaveChangesAsync();

        //    return NoContent();
        //}

        //private bool IotDataExists(int id)
        //{
        //    return _context.iot_datas.Any(e => e.Id == id);
        //}
    }
}
