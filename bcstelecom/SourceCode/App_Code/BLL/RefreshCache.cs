using Microsoft.Practices.EnterpriseLibrary.Caching;

/// <summary>
/// Summary description for RefreshCache
/// </summary>
public class RefreshCache : ICacheItemRefreshAction
{
    public void Refresh(string removedKey, object expiredValue, CacheItemRemovedReason removalReason)
    {
        CacheFactory.GetCacheManager("CacheNotice").Flush();
        CacheFactory.GetCacheManager("CacheEvent").Flush();
        CacheFactory.GetCacheManager("CacheMessage").Flush();
        CacheFactory.GetCacheManager("CacheContent").Flush();
        CacheFactory.GetCacheManager("CacheHitCounter").Flush();
        CacheFactory.GetCacheManager("CachePoll").Flush();
        CacheFactory.GetCacheManager("CachePhotograph").Flush();
        CacheFactory.GetCacheManager("CacheDocuments").Flush();
      
        
    }
}