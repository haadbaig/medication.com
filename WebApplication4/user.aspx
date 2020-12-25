<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="WebApplication4.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head >
    <title><h1 style="color:white">USER</h1></title>
    <style>
        body {
            font-style: inherit;
            font-family: 'Times New Roman';
            color: black;
            font-size: 20px;
            background-color: beige;
            background-image: url('pat.jpg');
        }
        form{
           align-content:center
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
           width:60px;
           padding:6px 6px 6px 6px;

        }
        .b1{
            border:1px solid;
           border-color:blue;
           box-shadow:initial;
           border-color:indigo;
           border-radius:5px;
            width:200px;
           padding:6px 6px 6px 6px;
        }
        </style>
</head>
<body>
    <form id="form1">
            <h1>User</h1>
    <div>
    <b>Create an acount</b>
        <br />
        <br />
        First Name:
        <br />
    <asp:TextBox ID="txtName" class="b1" requiblue runat="server"></asp:TextBox>
        <br />
        <br />
     Last Name:
    <br />
   <asp:TextBox ID="TextBox2" class="b1" requiblue runat="server"></asp:TextBox>
<br />
        <br />
     UserName:
   <br />
  <asp:TextBox ID="TextBox3" class="b1" requiblue runat="server"></asp:TextBox>
        <br />
        <br />
        E-mail:
        <br />
       <asp:TextBox ID="TextBox1" class="b1" requiblue runat="server"></asp:TextBox>
        <br />
        <br />
     Password:
    <br />
     <asp:TextBox ID="txtPassword" class="b1" requiblue TextMode="password"
runat="server" ></asp:TextBox>
         <br />
        <br />
     Confirm Password:
    <br />
     <asp:TextBox ID="TextBox4" class="b1" requiblue TextMode="password"
runat="server" ></asp:TextBox>
        <br />
        <br />
        Age<label for="birthday">:</label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        Country:
        <asp:DropDownList ID="DropDownList1" runat="server">
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
        Gender:
        <asp:RadioButton ID="Male" GroupName="Gender" requiblue runat="server" Text="Male" />
        <asp:RadioButton ID="Female" GroupName="Gender" requiblue runat="server" Text="Female" />
        <br />
        <br />
        <asp:Button ID="btnSave" runat="server" Height="41px" Text="Sign Up" Width="155px" OnClick="btnSave_Click"  />
            </div>
    </form>
</body>
</asp:Content>
