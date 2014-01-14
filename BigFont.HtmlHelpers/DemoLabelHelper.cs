using System;

namespace BigFont.HtmlHelpers
{
    public class DemoLabelHelper
    {
        public static string Label(string target, string text)
        {
            return String.Format("<label for='{0}'>{1}</label>", target, text);
        }
    }
}
