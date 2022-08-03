using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net.Http;
using System.Web.UI.WebControls;

namespace WebApplication11
{
    public partial class crawler : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            crawl();
            

        }
        static async void crawl()
        {
            Main();
        }
       static async void  Main()
        {

            var url = "https://cust.edu.pk/";
            var httpclient = new HttpClient();

            var html = await httpclient.GetStringAsync(url);
        }
    }
}