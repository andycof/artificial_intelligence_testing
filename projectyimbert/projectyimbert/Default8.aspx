<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Data" %>
<script runat=server>
    public void page_load(object o, EventArgs e)
    {
        string p = Request.QueryString["a1"];
        string q = Request.QueryString["a2"];
        Response.Write(p);
        Response.Write(q);
        ds.SelectCommand = "select * from data where book_name=" + p + " and author=" + q+ " ";
      

        
    
    
    }  
    
    
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:AccessDataSource ID=ds runat=server DataFile="~/lib.mdb"></asp:AccessDataSource>
<asp:DataList ID="DataList1" runat="server" DataKeyField="a_n"
    DataSourceID="ds" EnableViewState="False">
     <ItemTemplate>
        NAME OF BOOK       <asp:Label ID="ProductIDLabel" runat="server"
                            Text='<%# Eval("book_name") %>' /><br />
      AUTHOR     <asp:Label ID="ProductNameLabel" runat="server"
                            Text='<%# Eval("author") %>' /><br />
        CATEGORY      <asp:Label ID="SupplierIDLabel" runat="server"
                            Text='<%# Eval("category") %>' /><br />
        SUBCATEGORY      <asp:Label ID="CategoryIDLabel" runat="server"
                            Text='<%# Eval("sub_category") %>'/><br />
        IMAGE <asp:Label ID="QuantityPerUnitLabel" runat="server"
                            Text='<%# Eval("image") %>' /><br />
        PDF       <asp:Label ID="UnitPriceLabel" runat="server"
                            Text='<%# Eval("pdf") %>' /><br />
       
        <br />
    </ItemTemplate>
</asp:DataList>
</asp:Content>

