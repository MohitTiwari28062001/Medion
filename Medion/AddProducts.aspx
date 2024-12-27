<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="Medion.AddProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    add products

        <p class="formTitle"> Sign-Up Form</p>
<div class="signInDiv">
    <div class="signInOne"><img src="Content/Images/Medicine.png"/></div>
    <div class="signInTwo">
       
        <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Product Name"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
       
    </div>
</div>
    </form>
</asp:Content>
