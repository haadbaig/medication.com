<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="medSt.aspx.cs" Inherits="WebApplication4.medSt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <head>
    <title>MEDICALSTORE</title>
    <style>
     body{
            font-style:inherit;
            font-family:'Times New Roman';
            color:black;
            font-size:20px;
            background-color:beige;
            background-image: url('store.jpg');
        }
        h1{
  font-size:40px;
            font-style:normal;
            font-family: 'billabong';
            color:black;
        }
        .Button{
           border:1px solid;
           border-color:blue;
           box-shadow:initial;
           border-color:crimson;
           width:60%;
           padding:6px 6px 6px 6px;

        }
        .b1{
            border:1px solid;
           border-color:blue;
           box-shadow:initial;
           border-color:indigo;
           border-radius:5px;
           width:100%;
           padding:0px;
        }
        </style>
</head>
<body>
    <form id="form1">
       
   <h1>Medical Store</h1>
    <div>
    <b>Create an acount</b>
        <br />
        <br />
        Name:
        <br />
       <asp:TextBox ID="txtName" class="b1" required runat="server"></asp:TextBox>
        <br />
        <br />
     UserName:
   <br />
      <asp:TextBox ID="TextBox2" class="b1" required runat="server"></asp:TextBox>
        <br />
        <br />
        E-mail:
        <br />
          <asp:TextBox ID="TextBox1" class="b1" required runat="server"></asp:TextBox>
        <br />
        <br />
     Password:
    <br />
    <asp:TextBox ID="txtPassword" class="b1" required TextMode="password"
runat="server"></asp:TextBox>
         <br />
        <br />
     Confirm Password:
    <br />
    <asp:TextBox ID="TextBox3" class="b1" required TextMode="password"
runat="server"></asp:TextBox>
        <br />
        <br />
        Country:
        <asp:DropDownList ID="DropDownList1" required runat="server">
<asp:ListItem Text="Select" Value="0"></asp:ListItem>
<asp:ListItem Text="Pakistan"
Value="PAK"></asp:ListItem>
<asp:ListItem Text="Australia"
Value="AUS"></asp:ListItem>
<asp:ListItem Text="USA"
Value="USA"></asp:ListItem>
<asp:ListItem Text="Canada"
Value="CAN"></asp:ListItem>
</asp:DropDownList>
        <br />
        <br />
       
        <asp:Button ID="btnSave" class="Button" Text="Login" runat="server" OnClick="btnSave_Click" />
        </div>
    </form>
</body>
</asp:Content>
