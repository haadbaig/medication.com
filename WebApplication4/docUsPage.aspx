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

             <center>
                   <asp:Button  Enabled="true" BackColor="WhiteSmoke" runat="server" Text="Edit Profile" ForeColor="Black" OnClick="Unnamed1_Click" ></asp:Button>
                     </center>
             </div>
          

          <%----------------------------------------------------------------------------------------------------------------%>

                
                   <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Appointments</h4>
                        </center>
                         <asp:Repeater ID="repeater1" runat="server">
                             <ItemTemplate>

                  <asp:Table ID="Table1" 
                    runat="server" 
                    Font-Size="X-Large" 
                    Width="550" 
                    Font-Names="Palatino"
                    BackColor="Orange"
                    BorderColor="DarkRed"
                    BorderWidth="2"
                    ForeColor="Snow"
                    CellPadding="5"
                    CellSpacing="5"
                    >
                    <asp:TableHeaderRow 
                        runat="server" 
                        ForeColor="Snow"
                        BackColor="OliveDrab"
                        Font-Bold="true"
                        >
                        <asp:TableHeaderCell>Patient Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time</asp:TableHeaderCell>
                        <%--<asp:TableHeaderCell>Value</asp:TableHeaderCell>--%>
                    </asp:TableHeaderRow>
                    <asp:TableRow 
                        ID="TableRow1" 
                        runat="server" 
                        BackColor="OrangeRed"
                        >
                        <asp:TableCell><%#Eval("pUser") %></asp:TableCell>
                        <asp:TableCell><%#Eval("[date]") %></asp:TableCell>
                        <asp:TableCell >
                            <asp:LinkButton runat="server" CommandArgument='<%#Eval("pUser") %>' Font-Size="Medium" Text="Delete Appointment" BackColor="Red" OnClick="Unnamed_Click1"/>
                        </asp:TableCell><%--<asp:TableCell>#F0FFFF</asp:TableCell>--%></asp:TableRow></asp:Table></ItemTemplate></asp:Repeater><div class="row">
                     <div class="col">
                        <center>
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <asp:Repeater ID="repeater2" runat="server">
                             <ItemTemplate>

                  <asp:Table ID="Table1" 
                    runat="server" 
                    Font-Size="X-Large" 
                    Width="550" 
                    Font-Names="Palatino"
                    BackColor="Orange"
                    BorderColor="DarkRed"
                    BorderWidth="2"
                    ForeColor="Snow"
                    CellPadding="5"
                    CellSpacing="5"
                    >
                    <asp:TableHeaderRow 
                        runat="server" 
                        ForeColor="Snow"
                        BackColor="OliveDrab"
                        Font-Bold="true"
                        >
                        <asp:TableHeaderCell>Patient Name</asp:TableHeaderCell><asp:TableHeaderCell>Comment</asp:TableHeaderCell><%--<asp:TableHeaderCell>Value</asp:TableHeaderCell>--%></asp:TableHeaderRow><asp:TableRow 
                        ID="TableRow1" 
                        runat="server" 
                        BackColor="OrangeRed"
                        >
                        <asp:TableCell><%#Eval("[from]") %></asp:TableCell><asp:TableCell><%#Eval("body") %></asp:TableCell><%--<asp:TableCell>#F0FFFF</asp:TableCell>--%></asp:TableRow></asp:Table></ItemTemplate></asp:Repeater></div></div></div></div></div></div></div></div></div></asp:Content>