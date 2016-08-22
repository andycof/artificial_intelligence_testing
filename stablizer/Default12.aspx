<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="Default12" %>
<script runat="server">
    public void page_load(object o, EventArgs e)
    {
       String p = Request.QueryString["a1"];
       Response.Write(p);
        
     String aa = "select * from product where a_n="+p+"";
      OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["shi"].ConnectionString);
      OleDbDataAdapter ad = new OleDbDataAdapter(aa, con);
      con.Open();
      DataSet ds = new DataSet();
      ad.Fill(ds, "my");
      dg.DataSource = ds;
      dg.DataBind();

      con.Close();
        

    }
    public void del(object o, DataGridCommandEventArgs e)
    {
        HiddenField hh = (HiddenField)e.Item.FindControl("hf");

        ds.DeleteCommand = "delete from product where a_n=" + hh.Value + "";
        ds.Delete();
        show();
    }
    public void show()
    {
        ds.SelectCommand = "select * from product";
    }
    </script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:AccessDataSource ID=ds runat=server DataFile="~/d1.mdb"></asp:AccessDataSource>
    <form id="form1" runat="server">
    <div>

    <asp:DataGrid ID=dg runat=server  OnDeleteCommand="del"   AutoGenerateColumns=false DataSourceID=ds>
    
     <Columns>
    <asp:TemplateColumn>
    
    <ItemTemplate>
   <asp:TextBox ID=t1 Text= <%#Eval("product id") %> runat=server></asp:TextBox>
    
      </ItemTemplate>
    
    </asp:TemplateColumn>
     <asp:TemplateColumn>
    
    <ItemTemplate>
   <asp:TextBox ID=t2 Text= <%#Eval("productname") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
    
     <asp:TemplateColumn>
    
    <ItemTemplate>
   <asp:TextBox ID=t3 Text= <%#Eval("category") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
   
     <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t4 Text= <%#Eval("price") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
    <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t5 Text= <%#Eval("numberofproducts") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
    
     <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:HiddenField ID=hf runat=server Value=<%#Eval("a_n") %> />
       <asp:Button ID="bb" Text="delete" OnClientClick="return confirmA('re u sure?')" CommandName="delete"  runat="server" />

      </ItemTemplate>
    
    </asp:TemplateColumn>

     </Columns>

     </asp:DataGrid>
    
    </div>
    </form>
</asp:Content>

