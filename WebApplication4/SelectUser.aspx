<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectUser.aspx.cs" Inherits="WebApplication4.SelectUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head >
    <title>SELECT USER</title>
    <style>
     body{
            font-style:inherit;
            font-family:'Comic Sans MS';
            font-size:20px;
            background-color:beige;
            background-image: url('ll.jpg');
           
        }
      h1{
            text-align:center;
           font-size:30px;
        }
      .b{
          
          text-align:center;
           border:1px solid;
           box-shadow:initial;
           border-color:indigo;
           border-radius:5px;
            width:180px;
            height:30px;
           padding:6px 6px 6px 6px;
           margin-left:45%;
               font-size:30px;
      }
      .b1{
        
          text-align:center;
           border:1px solid;
           box-shadow:initial;
           border-radius:5px;
            width:100px;
            height:20px;
           padding:6px 6px 6px 6px;
          margin-top:300px;
          margin-right:50px;
               font-size:20px;
      }
     .image{
            float:left;
            margin-left: 30px;
        }
      .image1{
           display:inline;
            margin-left: 100px;
             margin-right: auto;
        }
      .image2{
          display:inline;
          float:right;
          margin-right:30px;
      }
        </style>
</head>
<body>
    <form id="form1">
        <div>
             
            </div>
<div>
             <br />
             <br />
    <div  >
   <asp:TextBox ID="txtTextValue" CssClass="b" ReadOnly="True" Text="LOGIN AS" runat="server"></asp:TextBox>
       </div>
     <br />
             <br />
    <div class="image">
     <a href="user.aspx">
       <asp:Image ID="Image2" ImageUrl="https://image.shutterstock.com/image-vector/user-icon-trendy-flat-style-260nw-418179856.jpg"
runat="server" />  
     </a>
        </div>
        <div class="image1">
     <a href="doctor.aspx">
       <asp:Image ID="Image1" ImageUrl="https://image.shutterstock.com/image-vector/doctor-logo-icon-260nw-1347420734.jpg"
runat="server" />  
     </a>
        </div>
     <div class="image2">
     <a href="medSt.aspx">
       <asp:Image ID="Image3" ImageUrl="https://image.shutterstock.com/image-vector/pharmacy-logo-eco-green-cross-260nw-551634181.jpg"
runat="server" />  
     </a>
        </div>
        </div>
    </form>
</body>
</asp:Content>
