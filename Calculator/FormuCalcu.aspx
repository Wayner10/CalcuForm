<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormuCalcu.aspx.cs" Inherits="Calculator.FormuCalcu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Calculadora</h2>
            <br />
            <asp:Label ID="resultado" runat="server" Text=" "></asp:Label>
            <asp:Label ID="resultadoResta" runat="server" Text=" "></asp:Label>
            <asp:Label ID="resultadoMulti" runat="server" Text=" "></asp:Label>
            <asp:Label ID="resultadoDivi" runat="server" Text=" "></asp:Label>
            <br />
            <br />
            <label>Valor 1:</label>
            <br />
            <asp:TextBox ID="Tvalor1" runat="server"></asp:TextBox>
            <br />
            <br />
            <label>Valor 2:</label>
            <br />
            <asp:TextBox ID="Tvalor2" runat="server"></asp:TextBox>
            <br />
            <br />
            <!-- Botón para sumar -->
            <asp:Button ID="BtnSuma" runat="server" Text="Sumar" OnClick="BtnSuma_Click"/>
            <br />
            <!-- Boton resta-->
            <asp:Button ID="BtnResta" runat="server" Text="Restar" OnClick="BtnResta_Click"/>
            <br />
            <!--Boton multuplicar-->
            <asp:Button ID="BtnMulti" runat="server" Text="Multiplicar" OnClick="BtnMulti_Click"/>
            <br />
            <!--Boton division-->
            <asp:Button ID="BtnDivi" runat="server" Text="Dividir" OnClick="BtnDivi_Click"/>

            <br />
            <br />
            <br />
            <asp:RadioButton ID="suma" runat="server" GroupName="radio" Text="Suma" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <br />
            <asp:RadioButton ID="resta" runat="server" GroupName="radio" Text="Resta" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <br />
            <asp:RadioButton ID="multiplicar" Text="Multiplicacion" runat="server" GroupName="radio" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <br />
            <asp:RadioButton ID="division" Text="Division" runat="server" GroupName="radio" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <br />
            <asp:Label ID="lblResult" runat="server" Text="Resultado" />
        </div> 
    </form>
</body>
</html>
