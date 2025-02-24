using System;
using System.Web.UI;

namespace Calculator
{
    public partial class FormuCalcu : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Método principal para manejar todas las operaciones
        private void CalcularOperacion(string operacion)
        {
            float num1, num2;

            if (!TryParseInputs(out num1, out num2))
            {
                return;
            }

            switch (operacion)
            {
                case "Suma":
                    resultado.Text = "Resultado: " + (num1 + num2);
                    break;
                case "Resta":
                    resultado.Text = "Resultado: " + (num1 - num2);
                    break;
                case "Multiplicación":
                    resultado.Text = "Resultado: " + (num1 * num2);
                    break;
                case "División":
                    if (num2 == 0)
                        resultado.Text = "Error: No se puede dividir entre cero.";
                    else
                        resultado.Text = "Resultado: " + (num1 / num2);
                    break;
            }
        }

        // Métodos para cada tipo de entrada
        protected void EjecutarDesdeBoton(object sender, EventArgs e)
        {
            CalcularOperacion(((System.Web.UI.WebControls.Button)sender).Text);
        }

        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            if (suma.Checked) CalcularOperacion("Suma");
            else if (resta.Checked) CalcularOperacion("Resta");
            else if (multiplicar.Checked) CalcularOperacion("Multiplicación");
            else if (division.Checked) CalcularOperacion("División");
        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked) CalcularOperacion("Suma");
            if (CheckBox2.Checked) CalcularOperacion("Resta");
            if (CheckBox3.Checked) CalcularOperacion("Multiplicación");
            if (CheckBox4.Checked) CalcularOperacion("División");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalcularOperacion(DropDownList1.SelectedValue);
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalcularOperacion(ListBox1.SelectedValue);
        }

        // Validación de entrada
        private bool TryParseInputs(out float num1, out float num2)
        {
            num1 = num2 = 0;
            bool isValid = float.TryParse(Tvalor1.Text, out num1) && float.TryParse(Tvalor2.Text, out num2);

            if (!isValid)
                resultado.Text = "Por favor, ingrese números válidos.";

            return isValid;
        }
    }
}
