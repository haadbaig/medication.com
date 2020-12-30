<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="docPage.aspx.cs" Inherits="WebApplication4.docPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="card1.css">
<asp:Repeater ID="repeaterControl" runat="server" OnItemCommand="repeaterControl_ItemCommand">
    <ItemTemplate>
        <div class="container">
          <table>
              <tr>
                  <td>
                <div class="card">
                <img src="https://lh3.googleusercontent.com/ytP9VP86DItizVX2YNA-xTYzV09IS7rh4WexVp7eilIcfHmm74B7odbcwD5DTXmL0PF42i2wnRKSFPBHlmSjCblWHDCD2oD1oaM1CGFcSd48VBKJfsCi4bS170PKxGwji8CPmehwPw=w200-h247-no" alt="Person" class="card__image">
                <p><asp:Label class="card__name" ID="label1" runat="server" ><%#Eval("username") %></asp:Label></p>
                <asp:Button runat="server"  class="btn draw-border" CommandArgument='<%# Eval("username") %>' Text="Veiw Profile" OnClick="Button1_Click"></asp:Button>
                </div>
                  <td>
              </tr>
          </table>
        </div>
    </ItemTemplate>
</asp:Repeater>
</asp:Content>
