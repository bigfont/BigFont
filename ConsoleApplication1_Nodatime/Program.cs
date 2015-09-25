using System;
using NodaTime;
using NodaTime.Text;

namespace ConsoleApplication1_Nodatime
{
    class Program
    {
        public static void Log(string x) => Console.WriteLine(x);
        public static void Read() => Console.ReadLine();

        static void Main(string[] args)
        {
            var localDateTime = new LocalDateTime(2015, 09, 08, 17, 0);
            var zone = DateTimeZoneProviders.Tzdb.GetZoneOrNull("America/Vancouver");
            var zonedDateTime = localDateTime.InZoneStrictly(zone);
            Log(zonedDateTime.ToOffsetDateTime().ToString());
            Read();
        }
    }
}
