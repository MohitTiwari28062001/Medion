<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="VitaminsNSupplements.aspx.cs" Inherits="Medion.VitaminsNSupplements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h1>&nbsp</h1>
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Style="background-color: #D8DADC; border-radius: 5px; gap: 10px; display: flex; flex-direction: row; margin: auto; flex-wrap: wrap; justify-content: space-between; align-items: center" RepeatColumns="3" Width="70%" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div style="background-color: white; width: 300px; height: 350px; border-radius: 5px; flex-wrap: wrap; margin: 20px; display: flex; justify-content: center; flex-direction: column; gap: 10px; padding: 10px 8px">

                    <image src="<%#Eval("productImg","{0}") %>" width="200" height="200" style="margin: auto"></image>
                    <p style="text-align: left; font-weight: bold; font-size: 17px; width: 265px"><%#Eval("productTitle") %></p>
                    <p style="text-align: left; color: #5a5859; font-weight: lighter; font-size: 16px;">Category-Type:&nbsp<%#Eval("categoryType") %></p>
                    <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 100%;">
                        <p>★4</p>
                        <asp:Button CommandArgument='<%#Eval("productID") %>' ID="btn" Style="background-color: #242426; padding: 10px 20px; margin-right: 10px; color: white; border: 0; border-radius: 5px; font-size: 16px" runat="server" Text='<%#Eval("price") %>'></asp:Button>
                    </div>

                </div>
            </ItemTemplate>
        </asp:DataList>
        <h1>&nbsp</h1>
    </form>
</asp:Content>
