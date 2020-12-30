<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="deleteAnAccont.aspx.cs" Inherits="WebApplication4.deleteAnAccont" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <head>
    <title>FORGOT PASSWORD</title>
   <style>
        body
        {
             text-align:center;
            background-color: darkgray;
             font-style:normal;
            font-family:'Times New Roman';
            font-size:25px;
        }
        h1{
            text-align:center;
            font-size:50px;
           
        }
       input[type=text], input[type=password], input[type=email] {
           width: 300px;
           padding: 12px 20px;
           margin: 8px 0;
           display: inline-block;
           border: 1px solid #ccc;
           box-sizing: border-box;
       }
        
        .Button {
           background-color:black;
           border: none;
           color: white;
           padding: 15px 32px;
           text-align: center;
           text-decoration: none;
           display: inline-block;
           font-size: 16px;
           margin: 4px 2px;
           cursor: pointer;
           
       }

   </style>
</head>
<body>
    <div id="form1" runat="server">
        <div>
        <br />
         <h1>
Are you sure you want to delete your account?
         </h1>
        <br />
        </div>
        <br />
         <label for="medName"><b></b></label>
    <input runat="server" id="accE" type="text" placeholder="Account Email" name="medName" required>
        <br />
         <label for="medName"><b></b></label>
    <input runat="server" id="accU" type="text" placeholder="Account Username" name="medName" required>
        <br />
        
         <label for="medName"><b></b></label>
    <input runat="server" id="accP" type="text" placeholder="Account Password" name="medName" required>
        <br />
        <br />
          <br />
        <a href="">
        <asp:Button ID="btnSave" class="Button" Text="Delete Account" runat="server" OnClick="btnSave_Click" />
            </a>
    </div>
</body>

</asp:Content>
