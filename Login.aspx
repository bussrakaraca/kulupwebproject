<%@ Page Title="Giriş" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div runat="server" class="title" id="Giris">
				<h2>Giriş</h2>
			</div>
         <p> <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 12px"></asp:TextBox></p>
    <br />
    <p><asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 23px" TextMode="Password"></asp:TextBox></p>
    
   <p> 
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/sifremiunuttum.aspx" Target="_blank" ToolTip="Şifremi Unuttum">Şifreni mi unuttun?</asp:HyperLink>
         </p>
    <p>
        <asp:Label ID="Label3" runat="server"></asp:Label></p>
    <p>
        <asp:Button ID="Button1" CssClass="button" runat="server" Text="Giriş" OnClick="Button1_Click" />
        <asp:Button ID="Button2" CssClass="button" runat="server" Text="Kaydol" style="margin-left: 29px" />
    </p>
</asp:Content>

