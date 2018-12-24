<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WingtipToys.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>The Great Auction contact page.</h3>
    <address>
        Illinska Street, 2<br />
        Kyiv, Ukraine<br />
        <abbr title="Phone">P:</abbr>
        096-246-9902
        <br />
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2539.7502649381813!2d30.51966131557244!3d50.46437497947719!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4ce40f315d233%3A0x633596d5b3593996!2sBC+ILLINSKY!5e0!3m2!1sru!2sua!4v1542659983643" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:naukmari@gmail.com">naukmari@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:naukmari@gmail.com">naukmari@gmail.com</a>
    </address>
</asp:Content>
