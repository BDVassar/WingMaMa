

namespace WingMaMa.Services;

public class FeedingService
{
  private readonly FeedingRepository _repo;

  public FeedingService(FeedingRepository repo)
  {
    _repo = repo;
  }

  internal Feeding Create(Feeding feedData)
  {
    Feeding feed = _repo.Create(feedData);
    return feed;
  }

}
