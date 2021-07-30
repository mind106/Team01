using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace ShopBanHang.Models
{
    public class PaypalLogger
    {
        public static string LogDirectryPath = Environment.CurrentDirectory;
        public static void Log(String messages)
        {
            try
            {
                StreamWriter strw = new StreamWriter(LogDirectryPath + "\\PaypalError.log", true);
                strw.WriteLine("{0}--->{1}", DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss"), messages);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}