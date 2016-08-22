<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>
<script runat=server>
    public void page_load(object o, EventArgs e)
       
    {
        if (Session["log"] == null)
        {
            Response.Redirect("Default3.aspx");

        }
        else if (!IsPostBack)
        {
            string p = Request.QueryString["a1"];
           
            Response.Write(p);
            
            ds.SelectCommand = "select * from data where category=" + p + " ";
        }
    
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

