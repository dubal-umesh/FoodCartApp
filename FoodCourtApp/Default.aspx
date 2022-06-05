<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FoodCourtApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .lead
        {
            font-size:14px !important;
            text-align:center;
        }
    </style>

    <div class="jumbotron">
        <h2 style="text-align:center; font-weight:bold;color:darkgreen;">Welcome to UPCROWM</h2>
        <p class="lead">The flavours come from the culture of Nature.</p>
        <p class="lead">Desire meets a new food.</p>
        <p class="lead">The joy of getting the best.</p>
        <p><a href="ProductsCatalog.aspx" class="btn btn-primary btn-lg">Order Now &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Siddhagiri Museum-13.4 Km from Kolhapur</h2>
            <img height="100px" width="200px" src="Images/siddhagiri-museum1.jpg" />
            <p>
                Also known as Kaneri Math. Siddhagiri Gramjivan Wax Museum is situated in Kaneri, Kolhapur. The museum is housed within the Shri Kshetra Siddhagiri Math along with a Shiva Temple. The museum depicts rural village life with the help of wax and cement statues. Sprawling over 7 acres, the repository is surrounded by lush greenery and countryside locales.
            </p>

        </div>
        <div class="col-md-4">
            <h2>Jyotiba Temple -21 Km from Kolhapur</h2>
            <img height="100px" width="200px" src="Images/JyotibhaMandir.jpg" />
            <p>
                The beautiful temple of Kolhapur, known as the Jyotiba Temple lies near the village of Ratnagiri in Maharashtra. The temple is constantly laden with 'rang which translates to colour, implying the colour used to play Holi. This is because the gulal is offered to Lord Jyotiba as a token of sincerity by the pilgrims. The glorious temple is built for Lord Jyotiba as its name suggests, who was believed to be an embodiment of three different deities.
            </p>

        </div>
        <div class="col-md-4">
            <h2>Panhala Fort - 20 Km from Kolhapur</h2>
            <img height="100px" width="200px" src="Images/PanhalaFort.jpg" />
            <p>
                The Panhala Fort lies 20 km away from the main city of Kolhapur, situated at its north-west. This fort holds its position amongst the most massive location in the country and is the largest one in the Deccan region. It was built in a strategic position where a major trade route ran within Maharashtra from Bijapur to the coasts of Arabian Sea. This place is not only a must-visit for the people who love exploring historic locations but also for those who love to trek.
            </p>

        </div>
    </div>

</asp:Content>
