<%@ Page Title="Uye Listesi" Language="C#" MasterPageFile="~/admin/MasterPage3.master" AutoEventWireup="true" CodeFile="uyelistesi.aspx.cs" Inherits="admin_uyelistesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="uye_email" HeaderText="uye_email" SortExpression="uye_email" />
        <asp:BoundField DataField="uye_sifre" HeaderText="uye_sifre" SortExpression="uye_sifre" />
        <asp:BoundField DataField="uye_ad" HeaderText="uye_ad" SortExpression="uye_ad" />
        <asp:BoundField DataField="uye_soyad" HeaderText="uye_soyad" SortExpression="uye_soyad" />
        <asp:BoundField DataField="uye_cinsiyet" HeaderText="uye_cinsiyet" SortExpression="uye_cinsiyet" />
        <asp:CheckBoxField DataField="uye_yonetici" HeaderText="uye_yonetici" SortExpression="uye_yonetici" />
        <asp:CheckBoxField DataField="uye_durumu" HeaderText="uye_durumu" SortExpression="uye_durumu" />
    </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9B0D5A_projeConnectionString1 %>" DeleteCommand="DELETE FROM [uye] WHERE [ID] = @ID" InsertCommand="INSERT INTO [uye] ([uye_email], [uye_sifre], [uye_ad], [uye_soyad], [uye_cinsiyet], [uye_dtarih], [uye_ktarih], [uye_yonetici], [uye_durumu]) VALUES (@uye_email, @uye_sifre, @uye_ad, @uye_soyad, @uye_cinsiyet, @uye_dtarih, @uye_ktarih, @uye_yonetici, @uye_durumu)" ProviderName="<%$ ConnectionStrings:DB_9B0D5A_projeConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [uye_email], [uye_sifre], [uye_ad], [uye_soyad], [uye_cinsiyet], [uye_dtarih], [uye_ktarih], [uye_yonetici], [uye_durumu] FROM [uye]" UpdateCommand="UPDATE [uye] SET [uye_email] = @uye_email, [uye_sifre] = @uye_sifre, [uye_ad] = @uye_ad, [uye_soyad] = @uye_soyad, [uye_cinsiyet] = @uye_cinsiyet, [uye_dtarih] = @uye_dtarih, [uye_ktarih] = @uye_ktarih, [uye_yonetici] = @uye_yonetici, [uye_durumu] = @uye_durumu WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="uye_email" Type="String" />
        <asp:Parameter Name="uye_sifre" Type="String" />
        <asp:Parameter Name="uye_ad" Type="String" />
        <asp:Parameter Name="uye_soyad" Type="String" />
        <asp:Parameter Name="uye_cinsiyet" Type="String" />
        <asp:Parameter DbType="Date" Name="uye_dtarih" />
        <asp:Parameter Name="uye_ktarih" Type="DateTime" />
        <asp:Parameter Name="uye_yonetici" Type="Boolean" />
        <asp:Parameter Name="uye_durumu" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="uye_email" Type="String" />
        <asp:Parameter Name="uye_sifre" Type="String" />
        <asp:Parameter Name="uye_ad" Type="String" />
        <asp:Parameter Name="uye_soyad" Type="String" />
        <asp:Parameter Name="uye_cinsiyet" Type="String" />
        <asp:Parameter Name="uye_yonetici" Type="Boolean" />
        <asp:Parameter Name="uye_durumu" Type="Boolean" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" CssClass="button" runat="server" Text="Yönetici ve Durum Düzenle" OnClick="Button1_Click" />
    <br />
    <asp:Button ID="Button2" CssClass="button" runat="server" Text="Uye Bilgilerini Düzenle" OnClick="Button2_Click" />
</asp:Content>

