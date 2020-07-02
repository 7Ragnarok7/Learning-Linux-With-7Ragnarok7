public class Clock
{
	public static void main(String args[])
	{
		int sec, min, hr;
		sec = min = hr = 0;
		while(true)
		{
			try
			{
				if(sec == 60)
				{
					min ++;
					sec = 0;
					System.out.print("\r         ");
				}

				if(min == 60)
				{	hr ++;
					min = 0;
				}

				System.out.print("\r" + hr + ":" + min + ":" + sec);
				sec ++;
				Thread.sleep(1000);
			}

			catch(Exception e)
			{
				System.out.print(e);
			}
		}
	}
}
