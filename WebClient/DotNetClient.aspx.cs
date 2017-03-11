using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient
{
    public partial class DotNetClient : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int DP_ID = int.Parse(TextBox4.Text);
            string DP_Name = TextBox5.Text;
            BusinessLayer b = new BusinessLayer();
            b.InsertDept(DP_ID, DP_Name); ;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int Emp_ID= int.Parse(emp_id.Text);
            string Emp_Name =emp_name.Text;
            int DP_ID = int.Parse(dept_id.Text);
           
            BusinessLayer b = new BusinessLayer();
            b.InsertEmp(Emp_ID, Emp_Name, DP_ID); ;

        }
    }
}