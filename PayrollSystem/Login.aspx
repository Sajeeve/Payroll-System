<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master"%>
   <asp:Content ID="Content1" ContentPlaceHolderID = "ContentPlaceHolder2" runat="server" >
   <center>
        <table class="style1" style="width: 494px;" frame="box">
            <tr>
                <td class="style7" colspan="4">
                        Login
                </td>   
            </tr>
            <tr>
                <td colspan="4">
                        &nbsp;
                </td>   
            </tr>
            <tr>
                <td class="style6" >
                    &nbsp;</td>
                <td class="style3" >
                    Email ID:</td>
                <td class="style2" height="40px">
                    <asp:TextBox ID="Email" runat="server" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </td>
                <td class="style4" height="40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Email" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6" >
                    &nbsp;</td>
                <td class="style3" >
                    Password:</td>
                <td class="style2" >
                    <asp:TextBox ID="Password" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td class="style4" height="40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="Password" ErrorMessage="Password is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style8">
                    <asp:RadioButton ID="rdoadmin" runat="server" Checked="True" 
                        GroupName="m" Text="Admin" />
                    <asp:RadioButton ID="rdoemployee" runat="server" GroupName="m" 
                        Text="Employee" />
                 </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="LoginButton" runat="server" onclick="LoginButton_Click" 
                        style="text-align: center" Text="Login" Font-Bold="True" Height="32px" 
                        Width="79px"/> &nbsp;
                    <asp:HyperLink ID="ToRegister" runat="server" NavigateUrl="~/Registration.aspx" Font-Bold="True">Register</asp:HyperLink>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
    </center>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 172px;
        }
        .style2
        {
            width: 225px;
        }
        .style3
        {
            font-family: "Sitka Heading";
            font-weight: bold;
        }
        .style4
        {
            width: 112px;
        }
        .style5
        {
            width: 80px;
        }
        .style6
        {
            font-family: "Sitka Heading";
            font-weight: bold;
            width: 80px;
        }
        .style7
        {
            background-color:Green;
            font-size:24px;
            text-align:center;
            width:25px;
            font-weight:bold;
            font-family:Carlito;
        }
        .style8
        {
            font-weight:bold;
        }
    </style>
</asp:Content>
