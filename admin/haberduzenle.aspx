<%@ Page Title="Haber Düzenle" Language="C#" MasterPageFile="~/admin/MasterPage3.master" AutoEventWireup="true" CodeFile="haberduzenle.aspx.cs" Inherits="admin_Haberduzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="haber_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="haber_ID" HeaderText="haber_ID" ReadOnly="True" SortExpression="haber_ID" InsertVisible="False" />
            <asp:BoundField DataField="haber_baslik" HeaderText="haber_baslik" SortExpression="haber_baslik" />
            <asp:BoundField DataField="haber_detay" HeaderText="haber_detay" SortExpression="haber_detay" />
            <asp:BoundField DataField="haber_tarih" HeaderText="haber_tarih" SortExpression="haber_tarih" />
            <asp:BoundField DataField="uye_ad" HeaderText="uye_ad" SortExpression="uye_ad" />
            <asp:BoundField DataField="uye_soyad" HeaderText="uye_soyad" SortExpression="uye_soyad" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9B0D5A_projeConnectionString1 %>" DeleteCommand="DELETE FROM [haber] WHERE [haber_ID] = @haber_ID" InsertCommand="INSERT INTO [haber] ([haber_baslik], [haber_detay], [haber_tarih], [haber_ekleyen]) VALUES (@haber_baslik, @haber_detay, @haber_tarih, @haber_ekleyen)" SelectCommand="SELECT haber.haber_ID, haber.haber_baslik, haber.haber_detay, haber.haber_tarih, uye.uye_ad, uye.uye_soyad FROM haber INNER JOIN uye ON haber.haber_ekleyen = uye.ID" UpdateCommand="UPDATE [haber] SET [haber_baslik] = @haber_baslik, [haber_detay] = @haber_detay, [haber_tarih] = @haber_tarih, [haber_ekleyen] = @haber_ekleyen WHERE [haber_ID] = @haber_ID">
        <DeleteParameters>
            <asp:Parameter Name="haber_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="haber_baslik" Type="String" />
            <asp:Parameter Name="haber_detay" Type="String" />
            <asp:Parameter Name="haber_tarih" Type="DateTime" />
            <asp:Parameter Name="haber_ekleyen" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="haber_baslik" Type="String" />
            <asp:Parameter Name="haber_detay" Type="String" />
            <asp:Parameter Name="haber_tarih" Type="DateTime" />
            <asp:Parameter Name="haber_ekleyen" Type="Int32" />
            <asp:Parameter Name="haber_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

