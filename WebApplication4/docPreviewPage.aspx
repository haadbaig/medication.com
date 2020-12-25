<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="docPreviewPage.aspx.cs" Inherits="WebApplication4.docPreviewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="justify-content:flex-start; display:flex; flex-direction:row;">
        <div>
        <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl="~/assets/images/doc.png" Width="197px" />
        </div>
        <div>    
        <h1 style="font-weight:bolder; padding-top:65%;" id="docName" runat="server" ><%#Eval(" ") %></h1>
        </div>
    </div>
    <div>
        <h1 style="font-weight:bolder; border:groove"  >Reviews</h1>
    </div>
    <div style="border:groove">
            <div>

                <input runat="server" id="addComm" title="Add a comment..." style="width:100%;" />
                <asp:Button runat="server" style="border:dashed" Text="Done" Font-Bold="True" OnClick="Unnamed1_Click" />
            </div>
    </div>
    <div style="border:groove" >
        <div runat="server" id ="cName">
            <%#Eval("from") %>
        </div>
        <div runat="server" id="commBody">
            <%#Eval("body") %>
        </div>
    </div>
</asp:Content>
