using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PriyankaProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public List<Name> resulttop;
        public List<List<Name>> topranking;


        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            String top = ettop.Value;
            String year = etyear.Value;
            int igender = gender.SelectedIndex;

            String sgender = null;
            switch (igender)
            {
                case 0:
                    sgender = "both";
                    break;
                case 1:
                    sgender = "male";
                    break;
                case 2:
                    sgender = "female";
                    break;
            }

            DataAccess da = new DataAccess();
            resulttop = da.SelectTop(year, top, sgender);
            topranking = new List<List<Name>>();
            topranking.Add(da.SelectTop(year, "10", sgender));
            topranking.Add(da.SelectTop(year, "50", sgender));
            topranking.Add(da.SelectTop(year, "100", sgender));
            topranking.Add(da.SelectTop(year, "250", sgender));







        }
    }
}