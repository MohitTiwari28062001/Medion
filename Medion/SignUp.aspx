<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Medion.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">
    
        <p class="formTitle"> Sign-Up Form</p>
    <div class="signInDiv">
        <div class="signInOne"><img src="Content/Images/Medicine.png"/></div>
        <div class="signInTwo">
            <asp:Label ID="Label3" runat="server" Class="signInLabel" Text="User Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" Class="signInTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Class="signInLabel" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Class="signInTextBox"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Class="signInLabel"  Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Class="signInTextBox"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Class="signInLabel" Text="City"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Class="signInTextBox"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Class="signInLabel" Text="Gender"></asp:Label>
            <br />
            <asp:Panel ID="Panel1" runat="server" Width="480px">
                <br />
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Others" />
            </asp:Panel>
            <br />
            <asp:Label ID="Label8" runat="server" Class="signInLabel" Text="Phone Number"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox6" runat="server" Class="signInTextBox"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" class="submitBtn" Text="Submit" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label9" runat="server"></asp:Label>
        </div>
    </div>
    </form>
</asp:Content>
