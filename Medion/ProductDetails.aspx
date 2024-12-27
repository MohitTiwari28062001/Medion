<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Medion.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h1>&nbsp</h1>
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" Width="80%" Style="margin: auto" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <div style="border: 5px solid #D8DADC; border-radius: 5px;display: flex; flex-direction: column; justify-content: center; padding: 50px 30px; gap: 20px">
                    <img src="<%#Eval("productImg","{0}") %>" style="margin: auto; width: 650px; height: 650px" />
                    <p style="font-weight: bold; font-size: 20px"><%#Eval("productTitle") %></p>
                    <p style="font-size: 17px"><span style="font-weight: bold;">Description: &nbsp</span> <%#Eval("productDescription") %></p>
                    <p style="font-size: 17px"><span style="font-weight: bold;">Category-Type: &nbsp</span><%#Eval("categoryType") %></p>
                    <p style="font-size: 17px"><span style="font-weight: bold;">Price: &nbsp</span><%#Eval("price") %></p>
                    <div style="display: flex; flex-direction: row; justify-content: space-evenly">
                        <asp:Button Style="padding: 10px 20px; background-color: #242426; color: white; border: 0; border-radius: 5px; font-size: 16px" ID="Btn1" runat="server" Text="Go to Home" OnClick="Btn1_Click" />
                        <asp:Button Style="padding: 10px 20px; background-color: #242426; color: white; border: 0; border-radius: 5px; font-size: 16px" ID="Btn2" runat="server" Text="Add to cart" OnClick="Btn2_Click" />
                        <asp:Button Style="padding: 10px 20px; background-color: #242426; color: white; border: 0; border-radius: 5px; font-size: 16px" ID="Btn3" runat="server" Text="Proceed To Pay" OnClick="Btn3_Click" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <h1>&nbsp</h1>
    </form>
</asp:Content>
