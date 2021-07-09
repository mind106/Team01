using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace ShopBanHang
{
    public static class XString
    {
        public static String str_slug(this String s)
        {
            String[][] symbols =
            {
                new String[] { "/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi", "a" },
                new String[] { "/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi", "e"},
                new String[] { "/i|í|ì|ỉ|ĩ|ị/gi", "i"},
                new String[] { "/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi", "o"},
                new String[] { "/ú|ù|ủ|ũ|ư|ứ|ừ|ử|ữ|ự/gi", "u"},
                new String[] { "/ý|ỳ|ỷ|ỹ|ỵ/gi", "y"},
                new String[] { "[\\s'\";,]","-"}

            };
            s = s.ToLower();
            foreach (var ss in symbols)
            {
                s = Regex.Replace(s, ss[0], ss[1]);
            }
            return s;
        }
    }
}