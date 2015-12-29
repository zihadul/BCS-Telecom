using System;

public class HitCounter
{
	public HitCounter()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void IncreaseHit()
    {
        try
        {
            new  BLL.bllHitCounter().IncreaseHit();
        }
        catch (Exception)
        {
            throw;
        }
    }

}