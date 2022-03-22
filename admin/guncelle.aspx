<%@ Page Title="Yönetici Güncelleme" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="guncelle.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><asp:Label ID="Label1" runat="server" Text="Ad"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="a" style="margin-left: 144px"></asp:TextBox> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bu alan boş geçilemez panpa" Display="None" ControlToValidate="TextBox1" ValidationGroup="a">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Soyad"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="a" style="margin-left: 120px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bu alanda boş geçilemez panpa" Display="None" ControlToValidate="TextBox2" ValidationGroup="a">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="a" style="margin-left: 124px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Uygun bir ifade gir" Display="None" ControlToValidate="TextBox3" ValidationGroup="a">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Cinsiyet"></asp:Label>
     <asp:RadioButtonList ID="RadioButtonList1" runat="server" ValidationGroup="a">
         <asp:ListItem Value="E">Erkek</asp:ListItem>
         <asp:ListItem Value="K">Kadın</asp:ListItem>
     </asp:RadioButtonList>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" Display="None" ErrorMessage="Lütfen Bir Cinsiyet Seçiniz " ValidationGroup="a"></asp:RequiredFieldValidator>
     <br />
    <asp:Label ID="Label5" runat="server" Text="Şifre"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="a" style="margin-left: 128px" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Şifreler Eşleşmiyor" ControlToCompare="TextBox6" ControlToValidate="TextBox5" Display="None" ValidationGroup="a" Visible="False">*</asp:CompareValidator>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Şifre(tekrar)"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="a" style="margin-left: 77px" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" CssClass="button" runat="server" Text="Güncelle" ValidationGroup="a" OnClick="Button1_Click" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="a" />
    </div>
</asp:Content>

