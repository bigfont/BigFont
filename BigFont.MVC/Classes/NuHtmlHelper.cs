using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BigFont.W3C
{
    /// <summary>
    /// Helpers to correct issues that might arise in the https://validator.w3.org/nu
    /// </summary>
    public static class NuHtmlHelper
    {
        /// <summary>
        /// Represent a URI in NFC and replace spaces with %20        
        /// </summary>
        /// <remarks>
        /// Characters should be represented in NFC and spaces should be escaped as %20.
        /// http://www.macchiato.com/unicode/nfc-faq
        /// </remarks>
        /// <param name="href">The string to modify</param>
        /// <returns>The modified result</returns>
        public static string HrefEncode(string href)
        {
            var result = href.Replace(" ", "%20");
            return result;
        }
    }
}