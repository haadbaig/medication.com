<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="docPreviewPage.aspx.cs" Inherits="WebApplication4.docPreviewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="justify-content:flex-start; display:flex; flex-direction:row;">
        <div>
        <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl="~/assets/images/doc.png" Width="197px" />
        </div>
        <div style="padding-top:10.2%; padding-left:0.5%">
            <center>
                <div >    
                    <asp:Label style="font-weight:bolder; padding-top:65%;" id="dName" runat="server" />
                </div>
                <div>
                    <asp:Button runat="server" Text="Book This Doctor" BackColor="Black" BorderStyle="Groove" Enabled="true" ForeColor="White" OnClick="Unnamed1_Click1"  />
                </div>
            </center>
        </div>
        <div>
            <asp:Button Text="Book an appointment" BackColor="CadetBlue" ForeColor="White" BorderStyle="Groove" />
        </div>
    </div>
    <div style="border:groove">
            <div>
                <input runat="server" name="addComm" id="addComm" title="Add a comment..." style="width:100%;" />
                <asp:Button runat="server" style="border:dashed" Text="Done" Font-Bold="True" OnClick="Unnamed1_Click" />
            </div>
    </div>
    <div>
        <h1 style="font-weight:bolder; border:groove"  >Reviews</h1>
    </div>
    
    <asp:Repeater ID="repeater1" runat="server">
    <ItemTemplate>
    <div style="border:groove" >
        <div runat="server" id ="cName">
            <%#Eval("from") %>
        </div>
        <div>

        </div>
        <div runat="server" id="commBody">
            <%#Eval("body") %>
        </div>
    </div>
    </ItemTemplate>
</asp:Repeater>
</asp:Content>
