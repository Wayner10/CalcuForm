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
            <br />
            <br />
            <label>Valor 1:</label>
            <br />
            <asp:TextBox ID="Tvalor1"  runat="server"></asp:TextBox>
            <br />
            <br />
            <label>Valor 2:</label>
            <br />
            <asp:TextBox ID="Tvalor2"  runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnCalculo" runat="server" Text="Calcular operacion" OnClick="BtnCalculo_Click"/>
        </div>
    </form>
</body>
</html>
