<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormuCalcu.aspx.cs" Inherits="Calculator.FormuCalcu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculadora</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Calculadora</h2>
            <br />
            <label>Valor 1:</label>
            <br />
            <asp:TextBox ID="Tvalor1" runat="server" placeholder="Ingrese el primer número"></asp:TextBox>
            <br />
            <br />
            <label>Valor 2:</label>
            <br />
            <asp:TextBox ID="Tvalor2" runat="server" placeholder="Ingrese el segundo número"></asp:TextBox>
            <br />
            <br />
            <!-- Botones para realizar operaciones -->
            <asp:Button ID="BtnSuma" runat="server" Text="Sumar" OnClick="BtnSuma_Click"/>
            <br />
            <asp:Button ID="BtnResta" runat="server" Text="Restar" OnClick="BtnResta_Click"/>
            <br />
            <asp:Button ID="BtnMulti" runat="server" Text="Multiplicar" OnClick="BtnMulti_Click"/>
            <br />
            <asp:Button ID="BtnDivi" runat="server" Text="Dividir" OnClick="BtnDivi_Click"/>
            <br />
            <br />
            <!-- Radio buttons para seleccionar operaciones -->
            <asp:RadioButton ID="suma" runat="server" GroupName="radio" Text="Suma" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <br />
            <asp:RadioButton ID="resta" runat="server" GroupName="radio" Text="Resta" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <br />
            <asp:RadioButton ID="multiplicar" runat="server" GroupName="radio" Text="Multiplicación" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <br />
            <asp:RadioButton ID="division" runat="server" GroupName="radio" Text="División" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <br />
            <!-- Etiqueta para mostrar resultados -->
            <asp:Label ID="resultado" runat="server" Text="Resultado aquí" />
        </div>
    </form>
</body>
</html>
