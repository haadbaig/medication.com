<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="medicPage.aspx.cs" Inherits="WebApplication4.medicPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<body>
        <link rel="stylesheet" href="card.css">
        <div class="container">
          <div class="card">
            <img src="./assets/images/med1.jpg" alt="Person" class="card__image">
              <asp:Repeater ID="repeater1" runat="server">
            <ItemTemplate>
                  <p class="card__name" style="padding-top:10%;" ><%#Eval("username")%></p>
            </ItemTemplate>
              </asp:Repeater>
              <div style="padding-top:20%;" class="row">
            <button style="width:100%" class="btn draw-border">Available Medicines</button>
            </div>
          </div>
        </div>
    </body>
</asp:Content>
