<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PriyankaProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>


  <asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

  

  <div id="index-banner" class="parallax-container z-depth-1">
    <div class="section no-pad-bot">
      <div class="container">
        <br><br>
        <h1 class="header center teal-text text-lighten-2">BEHIND THE NAME</h1>
        <div class="row center">
          <h5 class="header col s12 dark"> <blockquote>      
    "Always end the name of your child with a vowel, so that when you yell, the name will carry."</blockquote></h5>
        </div>
        <div class="row center">
          <a href="Top.aspx" id="download-button" class="btn-large waves-effect waves-light teal lighten-1">Get Started</a>
        </div>
        <br><br>

      </div>
    </div>
        <%--  --%>
    <div class="parallax"><img src="images/baby1.jpg" alt="Unsplashed background img 1"/></div>
  </div>


  <div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">group</i></h2>
            <h5 class="center">Popular Name</h5>

            <p class="light">We have a large collection of names and we tell you most popular names across years from 1942 to 2013.</p>
              
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">flash_on</i></h2>
            <h5 class="center">Trend</h5>

            <p class="light">Analyse the trend in names and their popularity</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">settings</i></h2>
            <h5 class="center">User Experience</h5>

            <p class="light">Visual analyse data by graphs and charts.</p>
          </div>
        </div>
      </div>

    </div>
  </div>


  


  <div class="parallax-container valign-wrapper">
    
    <div class="parallax"><img src="images/baby2.jpg" alt="Unsplashed background img 3"/></div>
  </div>

  <footer class="page-footer teal" id="contactus">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Company Bio</h5>
          <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>


        </div>
     
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Made by <a class="brown-text text-lighten-3" href="#">Priyanka</a>
      </div>
    </div>
  </footer>



  



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
