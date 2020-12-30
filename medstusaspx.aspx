<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MEDICAL STORE</title>
    <style>
        body {
	margin: 0;
	background: white;
	font-family: 'Work Sans', sans-serif;
	font-weight: 800;
}

.container {
	width: 80%;
	margin: 0 auto;
}

header {
  background: #55d6aa;
}

header::after {
  content: '';
  display: table;
  clear: both;
}

.logo {
  float: left;
  padding: 10px 0;
}

nav {
  float: right;
}


nav ul {
  margin: 0;
  padding: 0;
  list-style: none;
}

nav li {
  display: inline-block;
  margin-left: 70px;
  padding-top: 23px;

  position: relative;
}

nav a {
  color: #444;
  text-decoration: none;
  text-transform: uppercase;
  font-size: 14px;
}

nav a:hover {
  color: #000;
}

nav a::before {
  content: '';
  display: block;
  height: 5px;
  background-color: #444;

  position: absolute;
  top: 0;
  width: 0%;

  transition: all ease-in-out 250ms;
}

nav a:hover::before {
  width: 100%;
}
 .Button {
           background-color:gray;
           border-color:gray;
           font-size: 16px;
           /*border: none;*/
          /* color: white;
           padding: 15px 32px;
           text-align: center;
           text-decoration: none;
           display: inline-block;
           
           margin: 4px 2px;
           cursor: pointer;
           width: 150px;*/
       }
 table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
background-color:cadetblue;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}



    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
      <h1 class="logo"></h1>

      <nav>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="#">Edit</a></li>
        </ul>
      </nav>
             <br />
             <br />
            <h1>Medical Store</h1>

<table style="width:100%">
  <tr>
    <th>Medicine</th>
    <th>Status</th> 
    <th>Quantity</th>
  </tr>
  <tr>
    <td>Panadol</td>
    <td>Available</td>
    <td>50</td>
  </tr>
  
</table>
<br>

   <nav>   
        <ul>      
              <br />
         <li><a href="1.aspx">
        <asp:Button ID="btnSave" class="Button" Text="Add" runat="server" />
            </a></li>
        <li> <a href="1.aspx">
        <asp:Button ID="Button1" class="Button" Text="Delete" runat="server" />
            </a> </li>
             </ul>
      </nav>
        </div>
    </form>
</body>
</html>
