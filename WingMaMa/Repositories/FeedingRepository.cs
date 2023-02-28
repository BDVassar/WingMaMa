

namespace WingMaMa.Repositories;

public class FeedingRepository
{
  private readonly IDbConnection _db;
  public FeedingRepository(IDbConnection db)
  {
    _db = db;
  }

  public Feeding Create(Feeding feedData)
  {
    string sql = @"
    INSERT INTO feeding
    ( createdAt)
    VALUES
    ( @createdAt)
    SELECT LAST_INSERT_ID();
    ";
    int id = _db.ExecuteScalar<int>(sql, feedData);
    feedData.Id = id;
    return feedData;
  }

}
