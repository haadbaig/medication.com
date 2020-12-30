<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title>LOGIN</title>
    
    <style>
        body
        {
            background-color: azure;
             font-style:normal;
            font-family:'Times New Roman';
            font-size:25px;
            background-size:contain;
        }
        h1{
           text-align:center;
           
        }
        form{
           
        }
        .p1
        {
            text-align:justify;
           color:cornflowerblue;
            text-align:center;
             font-size:25px;
        }
         .p2
        {
             margin-right: 3.5%;
            text-align:justify;
           color:cornflowerblue;
            text-align:center;
             font-size:25px;
        }
        
        .image{
            float:left;
        }
        
        .container {
          padding: 0px;
        }
       
        .Button {
          background-color:cornflowerblue; 
          border: none;
          color: white;
          padding: 15px 32px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;
          cursor: pointer;
          width:150px;
        }
        .b1{
            width:300px;
            padding: 15px 32px;
            display: inline-block;
             margin: 2px 2px;
        }
        .b2{

            width:300px;
            padding: 15px 32px;
            display: inline-block;
             margin: 2px 2px;
        }
        .Image2{
            background:inherit;
            width:auto;
            height:auto;
            image-rendering:auto
        }
    </style>
    <body>
        <div class="image">
        
          <asp:Image class="Image2" ImageUrl="https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg" runat="server" />  
            </div>
        <div>
             <br />
        <br />
         <h1>
            LOGIN
         </h1>
     </div>
        <div class="container">
        <br />
    <div class="p1">
        
         <b>Email:</b> 
   <asp:TextBox ID="txtName" class="b1" requiblue="1" runat="server" BorderStyle="Dotted" BorderWidth="2px"></asp:TextBox>
     <br />
        <br />
        <div class="p2">
      <b >Password:</b> 
       <asp:TextBox ID="txtPassword" class="b2" TextMode="password" requiblue ="1" runat="server" BorderStyle="Dotted" BorderWidth="2px" ></asp:TextBox>
        <br />
           
        <br />
            </div>
        <a>
        <asp:Button ID="btnSave" class="Button" Text="Login" runat="server" OnClick="btnSave_Click"/>
        </a>    
         <br />
        <br />
        <span class="s"> <a href="./forgetPassword.aspx">Forgotpassword?</a></span>
          <br />
     <br />
            Don't have an account?
        <span class="s"> <a href="selectUser.aspx">Sign up here</a></span> 
        <br />
    <asp:LinkButton CssClass="s" Font-Size="Medium" Text="Delete an Account?" runat="server" href="./deleteAnAccont.aspx" />     
    </div>
            
        </div>  
    
</asp:Content>
