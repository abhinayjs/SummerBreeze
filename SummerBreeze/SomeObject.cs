using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SummerBreeze
{
	public class SomeObject
	{

        public string RandomString()
        {
            string randomString = "";
            string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            Random rand = new Random();
            int length = rand.Next(1, 10);
            int j;
            for (int i = 0; i < length; i++)
            {
                j = rand.Next(0, length);
                randomString += chars[j];
            }
            return randomString;
        }

        public int RandomNumber()
        {
            int randomNumber;
            Random rand = new Random();
            randomNumber = rand.Next(0, 10);
            return randomNumber;
        }

	}
}