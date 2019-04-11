using System;
using System.Diagnostics;
using System.Web.Services;
using System.Web.UI;


namespace OnlineTraining
{
    public partial class ClassVideo : System.Web.UI.Page
    {
        Stopwatch sw;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Create new stopwatch.
            //stopwatch = new Stopwatch();
            Timer1.Interval = (1000);

            // Begin timing.
            //stopwatch.Start();

            sw = new Stopwatch();
            Timer1.Enabled = true;
            sw.Start();

            // start processing emails

            // when finished 
            
            
            // Stop timing.
            //stopwatch.Stop();

            // Write result.
            //Console.WriteLine("Time elapsed: {0}", stopwatch.Elapsed);
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "Running for " + sw.Elapsed.Seconds.ToString() + "seconds";
        }

        [WebMethod]
        public static string StopAndLeave()
        {
            return "success";
        }
    }
}