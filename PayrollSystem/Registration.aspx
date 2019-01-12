<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID = "ContentPlaceHolder2" runat="server" >
        <table class="style1" 
            
            style="background-color: #CCCCCC; z-index: auto; left: 188px; position: relative; top: -11px;">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style6" colspan="2">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                </td>
            <td class="style6" colspan="2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration</strong></td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style6" colspan="2">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                User Name :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="UserName" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="180px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="UserName" ErrorMessage="User Name is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Email :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="Email" runat="server" BorderColor="Black" BorderStyle="Solid" 
                    BorderWidth="1px" Height="20px" Width="180px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Email" ErrorMessage=" Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Email" ErrorMessage="Invalid Email ID" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Password :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="Password" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="180px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Password" ErrorMessage="Password is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Confirm password :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="CPassword" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="180px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="CPassword" ErrorMessage="Confirm password is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                    <br/>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="Password" ControlToValidate="CPassword" 
                    ErrorMessage="Both Password must be same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Country :</td>
            <td class="style4" colspan="2">
                <asp:DropDownList ID="Country" runat="server" Height="20px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="180px">
                    <asp:ListItem>--Select Country --</asp:ListItem>
                    <asp:ListItem>Sri Lanka</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Country" ErrorMessage="Country is required" ForeColor="Red" 
                    InitialValue="--Select Country --"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style11">
                &nbsp;&nbsp;
                <asp:Button ID="Submit" runat="server" onclick="Button1_Click" Text="Submit" 
                    CssClass="style9" />
                &nbsp;&nbsp; </td>
            <td class="style10">
                <input id="Reset" type="reset" value="Reset" class="style9" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="style1">
                </td>
            <td class="style1">
            </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            height: 22px;
        }
        .style2
        {
            text-align: right;
        }
    </style>
</asp:Content>

