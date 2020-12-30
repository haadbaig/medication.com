<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="deleteMedicine.aspx.cs" Inherits="WebApplication4.deleteMedicine" %>
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
           width: 150px;
       }

   </style>
</head>
<body>
    <div id="form1" runat="server">
        <div>
        <br />
         <h1>
Write name of medicine you want to delete in field below:
         </h1>
        <br />
        </div>
        <br />
         <label for="medName"><b></b></label>
    <input runat="server" id="medN" type="text" placeholder="Medicine Name" name="medName" required>
        <br />
        <br />
          <br />
        <a href="1.aspx">
        <asp:Button ID="btnSave" class="Button" Text="Delete" OnClick="btnSave_Click" runat="server" />
            </a>
    </div>
</body>
</asp:Content>
