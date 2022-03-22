<%@ Page Title="Şifremi Unuttum" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sifremiunuttum.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div runat="server" class="title" id="Giris">
				<h2>Şifremi Unuttum</h2>
			</div>
    <p>
        <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label><asp:TextBox ID="TextBox1" runat="server" style="margin-left: 33px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" CssClass="button" runat="server" Text="Gönder" OnClick="Button1_Click" />
    </p>
</asp:Content>

