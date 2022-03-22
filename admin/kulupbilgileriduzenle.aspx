<%@ Page Title="Kulüp Bilgilerini Düzenle" Language="C#" MasterPageFile="~/admin/MasterPage3.master" AutoEventWireup="true" CodeFile="kulupbilgileriduzenle.aspx.cs" Inherits="admin_kulupbilgileriduzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="kulup_ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="kulup_ID" HeaderText="kulup_ID" ReadOnly="True" SortExpression="kulup_ID" InsertVisible="False" />
            <asp:BoundField DataField="kulup_ad" HeaderText="kulup_ad" SortExpression="kulup_ad" />
            <asp:BoundField DataField="ogretmen_ad" HeaderText="ogretmen_ad" SortExpression="ogretmen_ad" />
            <asp:BoundField DataField="ogretmen_soyad" HeaderText="ogretmen_soyad" SortExpression="ogretmen_soyad" />
            <asp:BoundField DataField="ogretmen_brans" HeaderText="ogretmen_brans" SortExpression="ogretmen_brans" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9B0D5A_projeConnectionString1 %>" DeleteCommand="DELETE FROM [kulup] WHERE [kulup_ID] = @kulup_ID" InsertCommand="INSERT INTO [kulup] ([kulup_ad], [kulup_aciklama], [kulup_baskan], [kulup_sekreter], [kulup_sayman]) VALUES (@kulup_ad, @kulup_aciklama, @kulup_baskan, @kulup_sekreter, @kulup_sayman)" SelectCommand="SELECT kulup.kulup_ID, kulup.kulup_ad, ogretmen.ogretmen_ad, ogretmen.ogretmen_soyad, ogretmen.ogretmen_brans FROM kulup INNER JOIN kulup_ogr ON kulup.kulup_ID = kulup_ogr.kulup_Id INNER JOIN ogretmen ON kulup_ogr.ogretmen_Id = ogretmen.ogretmen_ID" UpdateCommand="UPDATE [kulup] SET [kulup_ad] = @kulup_ad, [kulup_aciklama] = @kulup_aciklama, [kulup_baskan] = @kulup_baskan, [kulup_sekreter] = @kulup_sekreter, [kulup_sayman] = @kulup_sayman WHERE [kulup_ID] = @kulup_ID">
        <DeleteParameters>
            <asp:Parameter Name="kulup_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="kulup_ad" Type="String" />
            <asp:Parameter Name="kulup_aciklama" Type="String" />
            <asp:Parameter Name="kulup_baskan" Type="Int32" />
            <asp:Parameter Name="kulup_sekreter" Type="Int32" />
            <asp:Parameter Name="kulup_sayman" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="kulup_ad" Type="String" />
            <asp:Parameter Name="kulup_aciklama" Type="String" />
            <asp:Parameter Name="kulup_baskan" Type="Int32" />
            <asp:Parameter Name="kulup_sekreter" Type="Int32" />
            <asp:Parameter Name="kulup_sayman" Type="Int32" />
            <asp:Parameter Name="kulup_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <asp:Button ID="Button1" CssClass="button" runat="server" Text="Kulup yetkilileri belirle" OnClick="Button1_Click"/>

</asp:Content>

