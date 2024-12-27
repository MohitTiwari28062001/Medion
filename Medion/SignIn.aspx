<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Medion.SignIn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <p class="formTitle">Sign-In Form</p>
    <div class="signInDiv">
        <div>
            <img src="Content/Images/about-medicine.png"/>
        </div>
        <div>

            <asp:Label ID="Label3" runat="server" Class="signInLabel" Text="User Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" Class="signInTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Class="signInLabel" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" Class="signInTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" class="submitBtn" Text="Submit" OnClick="Button1_Click" />

            <br />
            <br />
            <asp:Label ID="Label5" runat="server"></asp:Label>

        </div>
    </div>
    </form>
</asp:Content>
