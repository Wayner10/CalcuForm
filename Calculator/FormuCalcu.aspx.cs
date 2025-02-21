using System;
using System.Web.UI;

namespace Calculator
{
    public partial class FormuCalcu : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Evento de botón de suma
        protected void BtnSuma_Click(object sender, EventArgs e)
        {
            float num1, num2;
            if (TryParseInputs(out num1, out num2))
            {
                resultado.Text = "Resultado: " + (num1 + num2).ToString();
            }
        }

        // Evento de botón de resta
        protected void BtnResta_Click(object sender, EventArgs e)
        {
            float num1, num2;
            if (TryParseInputs(out num1, out num2))
            {
                resultado.Text = "Resultado: " + (num1 - num2).ToString();
            }
        }

        // Evento de botón de multiplicación
        protected void BtnMulti_Click(object sender, EventArgs e)
        {
            float num1, num2;
            if (TryParseInputs(out num1, out num2))
            {
                resultado.Text = "Resultado: " + (num1 * num2).ToString();
            }
        }

        // Evento de botón de división
        protected void BtnDivi_Click(object sender, EventArgs e)
        {
            float num1, num2;
            if (TryParseInputs(out num1, out num2))
            {
                if (num2 == 0)
                {
                    resultado.Text = "Error: No se puede dividir entre cero.";
                }
                else
                {
                    resultado.Text = "Resultado: " + (num1 / num2).ToString();
                }
            }
        }

        // Evento para los radio buttons
        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            float num1, num2;
            if (!TryParseInputs(out num1, out num2))
            {
                return;
            }

            if (suma.Checked)
            {
                resultado.Text = "Resultado: " + (num1 + num2).ToString();
            }
            else if (resta.Checked)
            {
                resultado.Text = "Resultado: " + (num1 - num2).ToString();
            }
            else if (multiplicar.Checked)
            {
                resultado.Text = "Resultado: " + (num1 * num2).ToString();
            }
            else if (division.Checked)
            {
                if (num2 == 0)
                {
                    resultado.Text = "Error: No se puede dividir entre cero.";
                }
                else
                {
                    resultado.Text = "Resultado: " + (num1 / num2).ToString();
                }
            }
        }

        // Método para validar y convertir entradas
        private bool TryParseInputs(out float num1, out float num2)
        {
            
            num1 = 0;
            num2 = 0;

            bool isValid = float.TryParse(Tvalor1.Text, out num1) && float.TryParse(Tvalor2.Text, out num2);
            if (!isValid)
            {
                resultado.Text = "Por favor, ingrese números válidos.";
            }
            return isValid;
        }
    }
}
