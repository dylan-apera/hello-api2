using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace HealthCheck.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class Players : ControllerBase
    {
        // GET: <Players>
        [HttpGet]
        public IActionResult Get()
        {
            //Construct object = new
            //Declare an array of objects (players)
            //Anonymous type
            var players = new[] {
                new { Name = "Dan", Email = "dan@microsoft.com", Address = "123 Street", PhoneNo = "1234", Rank = 1000},
                new { Name = "Dylan", Email = "dylan@microsoft.com", Address = "126 Street", PhoneNo = "122224", Rank = 1001},
                new { Name = "Dylan1", Email = "dylan1@microsoft.com", Address = "1216 Street", PhoneNo = "000", Rank = 1031}
                new { Name = "Dan1", Email = "dan1@microsoft.com", Address = "109 Street", PhoneNo = "1200", Rank = 1010},
            };

            return new JsonResult(players);
        }


    }
}
