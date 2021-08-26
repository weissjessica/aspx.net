<%@ Page Title="" Language="C#" MasterPageFile="~/Mastersite1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Uebungspruefung.Default" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="sqlDBuebung" DataKeyNames="ID_Adresse" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">ID_Adresse:
                <asp:Label ID="ID_AdresseLabel" runat="server" Text='<%# Eval("ID_Adresse") %>' />
                <br />
                ad_Name:
                <asp:Label ID="ad_NameLabel" runat="server" Text='<%# Eval("ad_Name") %>' />
                <br />
                ad_Vorname:
                <asp:Label ID="ad_VornameLabel" runat="server" Text='<%# Eval("ad_Vorname") %>' />
                <br />
                ad_Strasse:
                <asp:Label ID="ad_StrasseLabel" runat="server" Text='<%# Eval("ad_Strasse") %>' />
                <br />
                ad_Ort:
                <asp:Label ID="ad_OrtLabel" runat="server" Text='<%# Eval("ad_Ort") %>' />
                <br />
                ad_BMI:
                <asp:Label ID="ad_BMILabel" runat="server" Text='<%# Eval("ad_BMI") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Bearbeiten" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Löschen" />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">ID_Adresse:
                <asp:Label ID="ID_AdresseLabel1" runat="server" Text='<%# Eval("ID_Adresse") %>' />
                <br />
                ad_Name:
                <asp:TextBox ID="ad_NameTextBox" runat="server" Text='<%# Bind("ad_Name") %>' />
                <br />
                ad_Vorname:
                <asp:TextBox ID="ad_VornameTextBox" runat="server" Text='<%# Bind("ad_Vorname") %>' />
                <br />
                ad_Strasse:
                <asp:TextBox ID="ad_StrasseTextBox" runat="server" Text='<%# Bind("ad_Strasse") %>' />
                <br />
                ad_Ort:
                <asp:TextBox ID="ad_OrtTextBox" runat="server" Text='<%# Bind("ad_Ort") %>' />
                <br />
                ad_BMI:
                <asp:TextBox ID="ad_BMITextBox" runat="server" Text='<%# Bind("ad_BMI") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualisieren" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Abbrechen" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            Es wurden keine Daten zurückgegeben.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">ad_Name:
                <asp:TextBox ID="ad_NameTextBox" runat="server" Text='<%# Bind("ad_Name") %>' />
                <br />ad_Vorname:
                <asp:TextBox ID="ad_VornameTextBox" runat="server" Text='<%# Bind("ad_Vorname") %>' />
                <br />ad_Strasse:
                <asp:TextBox ID="ad_StrasseTextBox" runat="server" Text='<%# Bind("ad_Strasse") %>' />
                <br />ad_Ort:
                <asp:TextBox ID="ad_OrtTextBox" runat="server" Text='<%# Bind("ad_Ort") %>' />
                <br />ad_BMI:
                <asp:TextBox ID="ad_BMITextBox" runat="server" Text='<%# Bind("ad_BMI") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Einfügen" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Löschen" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">ID_Adresse:
                <asp:Label ID="ID_AdresseLabel" runat="server" Text='<%# Eval("ID_Adresse") %>' />
                <br />
                ad_Name:
                <asp:Label ID="ad_NameLabel" runat="server" Text='<%# Eval("ad_Name") %>' />
                <br />
                ad_Vorname:
                <asp:Label ID="ad_VornameLabel" runat="server" Text='<%# Eval("ad_Vorname") %>' />
                <br />
                ad_Strasse:
                <asp:Label ID="ad_StrasseLabel" runat="server" Text='<%# Eval("ad_Strasse") %>' />
                <br />
                ad_Ort:
                <asp:Label ID="ad_OrtLabel" runat="server" Text='<%# Eval("ad_Ort") %>' />
                <br />
                ad_BMI:
                <asp:Label ID="ad_BMILabel" runat="server" Text='<%# Eval("ad_BMI") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Bearbeiten" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Löschen" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID_Adresse:
                <asp:Label ID="ID_AdresseLabel" runat="server" Text='<%# Eval("ID_Adresse") %>' />
                <br />
                ad_Name:
                <asp:Label ID="ad_NameLabel" runat="server" Text='<%# Eval("ad_Name") %>' />
                <br />
                ad_Vorname:
                <asp:Label ID="ad_VornameLabel" runat="server" Text='<%# Eval("ad_Vorname") %>' />
                <br />
                ad_Strasse:
                <asp:Label ID="ad_StrasseLabel" runat="server" Text='<%# Eval("ad_Strasse") %>' />
                <br />
                ad_Ort:
                <asp:Label ID="ad_OrtLabel" runat="server" Text='<%# Eval("ad_Ort") %>' />
                <br />
                ad_BMI:
                <asp:Label ID="ad_BMILabel" runat="server" Text='<%# Eval("ad_BMI") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Bearbeiten" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Löschen" />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
<asp:SqlDataSource ID="sqlDBuebung" runat="server" ConnectionString="<%$ ConnectionStrings:sqlUebungstestConnectionString3 %>" DeleteCommand="DELETE FROM [tblAdresse] WHERE [ID_Adresse] = @ID_Adresse" InsertCommand="INSERT INTO [tblAdresse] ([ad_Name], [ad_Vorname], [ad_Strasse], [ad_Ort], [ad_BMI]) VALUES (@ad_Name, @ad_Vorname, @ad_Strasse, @ad_Ort, @ad_BMI)" SelectCommand="SELECT * FROM [tblAdresse] ORDER BY [ad_Name]" UpdateCommand="UPDATE [tblAdresse] SET [ad_Name] = @ad_Name, [ad_Vorname] = @ad_Vorname, [ad_Strasse] = @ad_Strasse, [ad_Ort] = @ad_Ort, [ad_BMI] = @ad_BMI WHERE [ID_Adresse] = @ID_Adresse">
    <DeleteParameters>
        <asp:Parameter Name="ID_Adresse" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ad_Name" Type="String" />
        <asp:Parameter Name="ad_Vorname" Type="String" />
        <asp:Parameter Name="ad_Strasse" Type="String" />
        <asp:Parameter Name="ad_Ort" Type="String" />
        <asp:Parameter Name="ad_BMI" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ad_Name" Type="String" />
        <asp:Parameter Name="ad_Vorname" Type="String" />
        <asp:Parameter Name="ad_Strasse" Type="String" />
        <asp:Parameter Name="ad_Ort" Type="String" />
        <asp:Parameter Name="ad_BMI" Type="Int32" />
        <asp:Parameter Name="ID_Adresse" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>

