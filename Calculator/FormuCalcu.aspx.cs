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

        protected void BtnSuma_Click(object sender, EventArgs e)
        {
            float num1, num2, totalSuma;

            num1 = float.Parse(Tvalor1.Text);
            num2 = float.Parse(Tvalor2.Text);

            totalSuma = num1 + num2;

            resultado.Text = totalSuma.ToString();
        }

        protected void BtnResta_Click(object sender, EventArgs e)
        {
            float num1, num2, totalResta;

            num1 = float.Parse(Tvalor1.Text);
            num2 = float.Parse(Tvalor2.Text);

            totalResta = num1 - num2;

            resultadoResta.Text = totalResta.ToString();
        }

        protected void BtnMulti_Click(object sender, EventArgs e)
        {
            float num1, num2, totalMulti;

            num1 = float.Parse(Tvalor1.Text);
            num2 = float.Parse(Tvalor2.Text);

            totalMulti = num1 * num2;

            resultadoMulti.Text = totalMulti.ToString();
        }

        protected void BtnDivi_Click(object sender, EventArgs e)
        {
            float num1, num2, totalDivi;

            num1 = float.Parse(Tvalor1.Text);
            num2 = float.Parse(Tvalor2.Text);

            totalDivi = num1 / num2;

            resultadoDivi.Text = totalDivi.ToString();
        }

        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton rb = sender as RadioButton;
            if (rb != null && rb.Checked)
            {
                lblResult.Text = "Seleccionaste: " + totalDivi.ToString().Text;
            }
        }

    }
}
