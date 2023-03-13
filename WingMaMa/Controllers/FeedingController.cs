

namespace WingMaMa.Controllers;

[ApiController]
[Route("api/[controller]")]
public class FeedingController : ControllerBase
{
  private readonly Auth0Provider _auth;
  private readonly FeedingService _FeedingService;

  public FeedingController(Auth0Provider auth, FeedingService feedingService)
  {
    _auth = auth;
    _FeedingService = feedingService;
  }

  [HttpPost]
  // [Authorize]
  public ActionResult<Feeding> Create([FromBody] Feeding FeedData)
  {
    try
    {
      // Account userInfo = await _auth.GetUserInfoAsync<Account>(HttpContext);

      Feeding Feed = _FeedingService.Create(FeedData);
      return Ok(Feed);
    }
    catch (Exception e)
    {

      return BadRequest(e.Message);
    }
  }
}
