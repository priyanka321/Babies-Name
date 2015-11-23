using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PriyankaProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public List<Name> trendresult;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["name"] != null && Request["year"] != null & Request["gender"] != null)
            {
                DataAccess da = new DataAccess();
                trendresult = da.SelectTrend(Request["year"], Request["name"], Request["gender"]);
                etname.Value = Request["name"];
                etyear.Value = Request["year"];

            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            String name = etname.Value;
            String year = etyear.Value;
            int igender = gender.SelectedIndex;
            String sgender = null;

            switch (igender)
            {
                case 0:
                    sgender = "male";
                    break;
                case 1:
                    sgender = "female";
                    break;

            }


            DataAccess da = new DataAccess();
            trendresult = da.SelectTrend(year, name, sgender);










        }
    }
}