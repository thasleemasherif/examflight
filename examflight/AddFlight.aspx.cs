using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace examflight
{
    public partial class AddFlight : System.Web.UI.Page
    {
        private void ShowData()
        {
            filemanagementsystem op = new filemanagementsystem();
            DataSet ds = new DataSet();
            ds = op.GetData();
            GridFlight.DataSource = ds.Tables["flght"];
            GridFlight.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ShowData();
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextId.Text);
            string src = TextSourc.Text;
            string dst = TextDest.Text;
            int seat = int.Parse(TextSeat.Text);
            float fare = float.Parse(TextFare.Text);

            flight f = new flight(id, src, dst, seat, fare);
            filemanagementsystem fs= new filemanagementsystem();
            bool check=fs.addFlight(f);
            if(check==true)
            {
                this.ShowData();
                LabelError.Text = "Flight details added successfully";
               
            }
            else
            {
                LabelError.Text = "Addition not done";
            }
            this.ShowData();

        }
    }
}