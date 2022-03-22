<%@ Page Title="Haber Ekle" Language="C#" MasterPageFile="~/admin/MasterPage3.master" AutoEventWireup="true" CodeFile="haberekle.aspx.cs" Inherits="haberekle" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">
        <h2>HABER EKLE</h2>
        <asp:Label ID="Label1" runat="server" Text="Haber Başlık"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <br />
    <div>
        <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
        <p>
            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Haber Ekle" OnClick="Button1_Click" />
        </p>
    </div>
</asp:Content>

