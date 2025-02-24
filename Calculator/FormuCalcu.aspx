<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormuCalcu.aspx.cs" Inherits="Calculator.FormuCalcu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculadora</title>
    <link rel="stylesheet" type="text/css" href="Calculadora.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Calculadora</h2>
            <br />
            <label>Valor 1:</label>
            <asp:TextBox ID="Tvalor1" runat="server" placeholder="Ingrese el primer número"></asp:TextBox>
            <br />
            <label>Valor 2:</label>
            <asp:TextBox ID="Tvalor2" runat="server" placeholder="Ingrese el segundo número"></asp:TextBox>
            <br /><br />

            <!-- Botones para realizar operaciones -->
            <asp:Button ID="BtnSuma" runat="server" Text="Suma" OnClick="EjecutarDesdeBoton"/>
            <asp:Button ID="BtnResta" runat="server" Text="Resta" OnClick="EjecutarDesdeBoton"/>
            <asp:Button ID="BtnMulti" runat="server" Text="Multiplicación" OnClick="EjecutarDesdeBoton"/>
            <asp:Button ID="BtnDivi" runat="server" Text="División" OnClick="EjecutarDesdeBoton"/>
            <br /><br />

            <!-- Radio buttons para seleccionar operaciones -->
            <asp:RadioButton ID="suma" runat="server" GroupName="radio" Text="Suma" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <asp:RadioButton ID="resta" runat="server" GroupName="radio" Text="Resta" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <asp:RadioButton ID="multiplicar" runat="server" GroupName="radio" Text="Multiplicación" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <asp:RadioButton ID="division" runat="server" GroupName="radio" Text="División" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            <br /><br />

            <!-- Checkboxes para operaciones -->
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Suma" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/>
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Resta" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/>
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Multiplicación" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/>
            <asp:CheckBox ID="CheckBox4" runat="server" Text="División" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/>
            <br /><br />

            <!-- Dropdownlist para operaciones -->
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="Suma" Value="Suma"></asp:ListItem>
                <asp:ListItem Text="Resta" Value="Resta"></asp:ListItem>
                <asp:ListItem Text="Multiplicación" Value="Multiplicación"></asp:ListItem>
                <asp:ListItem Text="División" Value="División"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <!-- Listbox para operaciones -->
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                <asp:ListItem Text="Suma" Value="Suma"></asp:ListItem>
                <asp:ListItem Text="Resta" Value="Resta"></asp:ListItem>
                <asp:ListItem Text="Multiplicación" Value="Multiplicación"></asp:ListItem>
                <asp:ListItem Text="División" Value="División"></asp:ListItem>
            </asp:ListBox>
            <br /><br />

            <!-- Etiqueta para mostrar resultados -->
            <asp:Label ID="resultado" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
