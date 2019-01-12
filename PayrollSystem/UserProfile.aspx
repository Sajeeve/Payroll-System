<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" MasterPageFile = "~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID = ContentPlaceHolder2 runat=server >
    <center>
    <div style="height: 109px; width: 282px">
    
        <asp:Label ID="welcome" runat="server" Text="Welcome ....." 
            style="font-weight: 700"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="LogoutButton" runat="server" onclick="LogoutButton_Click" 
            Text="Logout" Height="36px" style="font-weight: 700" Width="83px" />
    
    </div>
    </center>
  </asp:Content> 
