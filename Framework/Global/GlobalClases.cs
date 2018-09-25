using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace JBC_PMIS_Government.Global
{
    class GlobalClases
    {
    }

    class StringTime
    {
        public int Hours { get; set; }
        public int Minutes { get; set; }
        public bool IsAfternoon { get; set; }

        public StringTime(string timeString)
        {
            IsAfternoon = timeString.Contains("pm");
            timeString = timeString.Replace("pm", "").Replace("am", "").Trim();

            Hours = int.Parse(timeString.Split(':')[0]);
            Minutes = int.Parse(timeString.Split(':')[1]);
        }

        public TimeSpan ToTimeSpan()
        {
            if (IsAfternoon)
            {
                if (Hours < 12)
                {
                    Hours += 12;
                }
            }
            return new TimeSpan(Hours, Minutes, 00);
        }

        public TimeSpan Add(StringTime time2)
        {
            return this.ToTimeSpan().Add(time2.ToTimeSpan());
        }
    }
}
