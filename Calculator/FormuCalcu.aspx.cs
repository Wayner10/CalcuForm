using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace Calculator
{
	public partial class FormuCalcu : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void BtnCalculo_Click(object sender, EventArgs e)
        {
			float num1, num2, total;

			 num1 = float.Parse(Tvalor1. Text);
			 num2 = float.Parse(Tvalor2.Text);

			total = num1 + num2;

			resultado.Text = total.ToString();

        }
    }
}