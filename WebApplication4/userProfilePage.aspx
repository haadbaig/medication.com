<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userProfilePage.aspx.cs" Inherits="WebApplication4.userProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head>
    <!--
    /   Shahala: Free Template by FreeHTML5.co
    /   Author: https://freehtml5.co
    /   Facebook: https://facebook.com/fh5co
    /   Twitter: https://twitter.com/fh5co
    -->

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Medication.com</title>
</head>

<body>
    <header class="mt-0 pt-0">
        <div class="bg-cover clearfix pt-3" style="justify-content:center">
            <h2 class="logo">Medication . com</h2>
            <nav class="nav nav-fill mx-auto" style="display:flex;flex-direction:row;">
                <li class="nav-item">
                    <a class="nav-link" href="https://facebook.com/" target="_blank"><i
                            class="fab fa-facebook-f"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://twitter.com/" target="_blank"><i
                            class="fab fa-twitter"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fab fa-instagram"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fab fa-google-plus-g"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-rss"></i></a>
                </li>
            </nav>
            <div class="ml-0 mr-0 pb-1">
                <nav class="navbar navbar-expand-md">
                    <button class="navbar-toggler ml-auto" data-target="#my-nav" data-toggle="collapse"
                        aria-controls="my-nav" aria-expanded="false" onclick="myFunction(this)"
                        aria-label="Toggle navigation">
                        <span class="bar1"></span> <span class="bar2"></span> <span class="bar3"></span>
                    </button>
                    <div id="my-nav" class="collapse navbar-collapse">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <asp:LinkButton OnClick="Unnamed_Click" CssClass="nav-link"  runat="server">SETTINGS</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.aspx">LOGOUT</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div>
                <asp:Label ID="userNm" style="font-size:xx-large; font-weight:bolder; color:white" runat="server"></asp:Label>
            </div>
        </div>
    </header>
    <div class="row" style="display:flex; flex-direction:row;">
        <div class="card">
          <img src="./assets/images/doc.png" alt="Avatar" style="width:100%">
          <div class="container" runat="server">
            <asp:LinkButton runat="server" OnClick="Unnamed1_Click"><h4><b>Doctors</b></h4></asp:LinkButton>  
          </div>
        </div>
          <div class="card">
          <img src="./assets/images/ms.png" alt="Avatar" style="width:100%">
          <div class="container">
            <asp:LinkButton runat="server" href="./medicPage.aspx"><h4><b>Medical Stores</b></h4></asp:LinkButton> 
          </div>
        </div>
    </div>
    
    
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/jquery-1.12.0.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.yu2fvl.js"></script>
    <script src="assets/js/main.js"></script>

</body>
    </a>
</asp:Content>
