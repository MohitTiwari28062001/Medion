<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="Medion.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h1>&nbsp</h1>
        <asp:DataList ID="DataList1" runat="server" Width="90%" Style="margin: auto">
            <HeaderTemplate>
                <table width="100%" style="border: 1px solid transparent; border-collapse: collapse;">
                    <tr style="background-color: #242426; color: white; height: 60px; border: 1px solid black; border-collapse: collapse;">
                        <th width="10%">Product ID</th>
                        <th width="20%">Product Name</th>
                        <th width="10%">categoryType</th>
                        <th width="10%">productPrice</th>
                        <th width="15%">productImage</th>
                        <th width="10%">Quantity</th>
                        <th width="10%">Total Amount</th>
                        <th width="15%">-</th>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table width="100%" style="border: 1px solid #D8DADC; border-collapse: collapse;">
                    <tr style="border: 1px solid #D8DADC;">
                        <td width="10%" style="border: 1px solid #D8DADC; text-align: center">
                            <asp:Label ID="pid" runat="server" Text='<%#Eval("productID") %>'></asp:Label>
                        </td>
                        <td width="20%" style="border: 1px solid #D8DADC; text-align: center">
                            <asp:Label ID="pn" runat="server" Text='<%#Eval("productName") %>'></asp:Label>
                        </td>

                        <td width="10%" style="border: 1px solid #D8DADC; text-align: center">
                            <asp:Label ID="ct" runat="server" Text='<%#Eval("categoryType") %>'></asp:Label>
                        </td>
                        <td width="10%" style="border: 1px solid #D8DADC; text-align: center">
                            <asp:Label ID="pr" runat="server" Text='<%#Eval("productPrice") %>'></asp:Label>
                        </td>
                        <td width="15%" style="border: 1px solid #D8DADC; text-align: center">
                            <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("productImage", "{0}") %>' Width="100px" heigt="100px" />
                        </td>
                        <td width="10%" style="border: 1px solid #D8DADC; text-align: center">
                            <asp:Label ID="TextBox1" runat="server" Text='<%#Eval("quantity") %>' Width="30px"></asp:Label>
                        </td>
                        <td width="10%" style="border: 1px solid #D8DADC; text-align: center">
                            <asp:Label ID="totalAmount" runat="server" Text='<%#Eval("totalAmount") %>'></asp:Label>
                        </td>
                        <td width="15%" style="border: 1px solid #D8DADC; text-align: center">
                            <asp:Button ID="Button1" OnClick="Button1" runat="server" Text="Home" Style="background-color: #242426; padding: 10px 20px; margin-bottom: 10px; color: white; border: 0; border-radius: 5px; font-size: 16px" />
                            <asp:Button ID="Button2" OnClick="Button2" runat="server" Text="Proceed-To-Pay" Style="background-color: #242426; padding: 10px 20px; margin-right: 10px; color: white; border: 0; border-radius: 5px; font-size: 16px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <h1>&nbsp</h1>

    </form>

</asp:Content>
