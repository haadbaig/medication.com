<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="docUsPage.aspx.cs" Inherits="WebApplication4.docUsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
      <link rel="Stylesheet" href="./Style1.css" type="text/css" />
  
   <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Profile</h4>
                             <span>Account status -</span>
                             <asp:Label CssClass="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your Status"></asp:Label>
                    
                        

                     </div>
                  </div>
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
                          <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" ReadOnly="True" Width="131px"></asp:TextBox>
                     </center>
                              
                           </div>
                      </div>
                   <div class="row">
                      <div class="col-md-12">
                          <center>
                          <label>Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Name" ReadOnly="True" Width="131px"></asp:TextBox>
      </center>

                        </div>
                     </div>
                   
         
                    <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>Password</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="*****" ReadOnly="True" Width="131px"></asp:TextBox>
                         </center>
                              
                           </div>
                        </div>
                     
                        <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>Email Id</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="abc@gmail.com" ReadOnly="True" Width="131px"></asp:TextBox>
                         </center>
                              
                           </div>
                        </div>
                     <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>BIO</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="BIO" ReadOnly="True" Width="131px"></asp:TextBox>
                         </center>
                              
                           </div>
                        </div>
                     
          <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>Phone #</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="0000-0000000" ReadOnly="True" Width="131px"></asp:TextBox>
                       
                               </center>
                              
                           </div>
                        </div>
                     
       <div class="row">
                     <div class="col-md-12">
                         <center>
                        <label>Age</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Age" ReadOnly="True" Width="131px"></asp:TextBox>
                         </center>
                              
                           </div>
                        </div>
                     
                 
               </div>
                </div>
             </div>
          
                
                   <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Appointments</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">

                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               
                   </br></br></br></br></br></br></br></br></br>
                  
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Hospitals</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">

                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>

            </div>

         </div>
          </div>
       </div>
</asp:Content>
