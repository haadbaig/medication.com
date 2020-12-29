<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="WebApplication4.docSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
    <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="user.jpg" />
                        </center>
                     </div>
                  </div>
                   
                 
                  <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>User name</label>   
                          <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"  Width="131px" Enabled="False">Username </asp:TextBox>
                     </center>
                              
                           </div>
                      </div>
                   <div class="row">
                      <div class="col-md-12">
                          <center>
                          <label>Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Name" Width="131px"></asp:TextBox>
      </center>

                        </div>
                     </div>
                   
         
                    <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>Password</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Width="131px" TextMode="Password" ></asp:TextBox>
                         </center>
                              
                           </div>
                        </div>
                     
                        <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>Email Id</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="abc@gmail.com" Width="131px" Enabled="False">E-Mail</asp:TextBox>
                         </center>
                              
                           </div>
                        </div>
                     <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>BIO</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="BIO" Width="131px"></asp:TextBox>
                         </center>
                              
                           </div>
                        </div>
                     
          <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>Phone #</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="0000-0000000" Width="131px"></asp:TextBox>
                       
                               </center>
                              
                           </div>
                        </div>
                     
       <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>Age</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Age" Width="131px"></asp:TextBox>
                         </center>
                              
                           </div>
                        </div>
                   <center>
                   <asp:Button Enabled="true" BackColor="WhiteSmoke" runat="server" Text="Save" ForeColor="Black" OnClick="Unnamed1_Click" ></asp:Button>
                     </center>
                 
               </div>
                </div>
             </div>
        </center>
</asp:Content>
