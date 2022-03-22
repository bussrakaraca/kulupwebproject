<%@ Page Title="Kulüp Yetki ver" Language="C#" MasterPageFile="~/admin/MasterPage3.master" AutoEventWireup="true" CodeFile="kulupyetkilibelirle.aspx.cs" Inherits="admin_kulupyetkilibelirle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="kulup_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="kulup_ID" HeaderText="kulup_ID" ReadOnly="True" SortExpression="kulup_ID" />
            <asp:BoundField DataField="kulup_ad" HeaderText="kulup_ad" SortExpression="kulup_ad" />
            <asp:BoundField DataField="kulup_baskan" HeaderText="kulup_baskan" SortExpression="kulup_baskan" />
            <asp:BoundField DataField="kulup_sekreter" HeaderText="kulup_sekreter" SortExpression="kulup_sekreter" />
            <asp:BoundField DataField="kulup_sayman" HeaderText="kulup_sayman" SortExpression="kulup_sayman" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9B0D5A_projeConnectionString1 %>" DeleteCommand="DELETE FROM [kulup] WHERE [kulup_ID] = @kulup_ID" InsertCommand="INSERT INTO [kulup] ([kulup_ad], [kulup_aciklama], [kulup_baskan], [kulup_sekreter], [kulup_sayman]) VALUES (@kulup_ad, @kulup_aciklama, @kulup_baskan, @kulup_sekreter, @kulup_sayman)" ProviderName="<%$ ConnectionStrings:DB_9B0D5A_projeConnectionString3.ProviderName %>" SelectCommand="SELECT [kulup_ID], [kulup_ad], [kulup_aciklama], [kulup_baskan], [kulup_sekreter], [kulup_sayman] FROM [kulup]" UpdateCommand="UPDATE [kulup] SET [kulup_ad] = @kulup_ad, [kulup_aciklama] = @kulup_aciklama, [kulup_baskan] = @kulup_baskan, [kulup_sekreter] = @kulup_sekreter, [kulup_sayman] = @kulup_sayman WHERE [kulup_ID] = @kulup_ID">
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
</asp:Content>

