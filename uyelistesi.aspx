<%@ Page Title="Üye Listesi" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uyelistesi.aspx.cs" Inherits="uyelistesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="uye_email" HeaderText="uye_email" SortExpression="uye_email" />
        <asp:BoundField DataField="uye_ad" HeaderText="uye_ad" SortExpression="uye_ad" />
        <asp:BoundField DataField="uye_soyad" HeaderText="uye_soyad" SortExpression="uye_soyad" />
        <asp:BoundField DataField="uye_cinsiyet" HeaderText="uye_cinsiyet" SortExpression="uye_cinsiyet" />
        <asp:CheckBoxField DataField="uye_yonetici" HeaderText="uye_yonetici" SortExpression="uye_yonetici" />
        <asp:CheckBoxField DataField="uye_durumu" HeaderText="uye_durumu" SortExpression="uye_durumu" />
    </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9B0D5A_projeConnectionString1 %>" DeleteCommand="DELETE FROM [uye] WHERE [ID] = @ID" InsertCommand="INSERT INTO [uye] ([uye_email], [uye_sifre], [uye_ad], [uye_soyad], [uye_cinsiyet], [uye_dtarih], [uye_ktarih], [uye_yönetici], [uye_durumu]) VALUES (@uye_email, @uye_sifre, @uye_ad, @uye_soyad, @uye_cinsiyet, @uye_dtarih, @uye_ktarih, @uye_yonetici, @uye_durumu)" ProviderName="<%$ ConnectionStrings:DB_9B0D5A_projeConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [uye_email], [uye_sifre], [uye_ad], [uye_soyad], [uye_cinsiyet], [uye_dtarih], [uye_ktarih], [uye_yonetici], [uye_durumu] FROM [uye]" UpdateCommand="UPDATE [uye] SET [uye_email] = @uye_email, [uye_sifre] = @uye_sifre, [uye_ad] = @uye_ad, [uye_soyad] = @uye_soyad, [uye_cinsiyet] = @uye_cinsiyet, [uye_dtarih] = @uye_dtarih, [uye_ktarih] = @uye_ktarih, [uye_yonetici] = @uye_yönetici, [uye_durumu] = @uye_durumu WHERE [ID] = @ID">
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
        <asp:Parameter DbType="Date" Name="uye_dtarih" />
        <asp:Parameter Name="uye_ktarih" Type="DateTime" />
        <asp:Parameter Name="uye_yonetici" Type="Boolean" />
        <asp:Parameter Name="uye_durumu" Type="Boolean" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
   
</asp:Content>

