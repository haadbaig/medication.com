<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="medicPage.aspx.cs" Inherits="WebApplication4.medicPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<body>
        <link rel="stylesheet" href="card.css">
        <div class="container">
          <div class="card">
            <img src="./assets/images/med1.jpg" alt="Person" class="card__image">
            <p class="card__name" style="padding-top:10%;" ></p>
            <div style="padding-top:20%;" class="row">
            <button style="width:100%" class="btn draw-border">Available Pharmacies</button>
            </div>
          </div>
        </div>
    </body>
</asp:Content>
