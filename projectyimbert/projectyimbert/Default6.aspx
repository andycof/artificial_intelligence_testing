<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>
 <%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Data" %>
 <script runat=server>
 public void page_load(object o, EventArgs e)
       
    {
        if (Session["log"] == null)
        {
            Response.Redirect("Default5.aspx");

        }
        else if (!IsPostBack)
        {
            ds.SelectCommand = "select * from data";
        }
    
    }
    public void show()
    {
        ds.SelectCommand = "select * from data";
    }
    public void edu(object o, DataGridCommandEventArgs e)
    {
        dg.EditItemIndex = e.Item.ItemIndex;
        show();
    }
    public void upd(object o, DataGridCommandEventArgs e)
    {
        TextBox tt = (TextBox)e.Item.FindControl("t1");
        TextBox tt1 = (TextBox)e.Item.FindControl("t2");
        TextBox tt2 = (TextBox)e.Item.FindControl("t3");
        TextBox tt3 = (TextBox)e.Item.FindControl("t4");
        HiddenField hh = (HiddenField)e.Item.FindControl("hf");
        ds.UpdateCommand = "update data set book_name='" + tt.Text + "',author='" + tt1.Text + "',category='"+tt2.Text+"',sub_category='"+tt3.Text+"' where a_n=" + hh.Value + "";
        ds.Update();
        show();

    }
    public void can(object o, DataGridCommandEventArgs e)
    {
        dg.EditItemIndex = -1;
        show();
    }
    public void del(object o, DataGridCommandEventArgs e)
    {
        HiddenField hh = (HiddenField)e.Item.FindControl("hf");
     
        ds.DeleteCommand = "delete from data where a_n="+hh.Value+"";
        ds.Delete();
        show();
    }
    
    </script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:AccessDataSource ID=ds runat=server DataFile="~/lib.mdb"></asp:AccessDataSource>
 <asp:DataGrid ID=dg runat=server OnEditCommand="edu" OnDeleteCommand="del" OnCancelCommand="can" OnUpdateCommand="upd" AutoGenerateColumns=false DataSourceID=ds>
    <Columns>
    <asp:TemplateColumn>
    
    <ItemTemplate>
    <%#Eval("book_name") %>
      </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="t1" Text=<%#Eval("book_name") %> runat="server"></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateColumn>
    


    <asp:TemplateColumn>
    
    <ItemTemplate>
    <%#Eval("author") %>
     <asp:HiddenField ID="hf" Value=<%#Eval("a_n") %> runat="server" />
  
    
    </ItemTemplate>
     <EditItemTemplate>
     <asp:HiddenField ID="hf" Value=<%#Eval("a_n") %> runat="server" />
  
    <asp:TextBox ID="t2" Text=<%#Eval("author") %> runat="server"></asp:TextBox>
    </EditItemTemplate>
   
    </asp:TemplateColumn>
    <asp:TemplateColumn>
    
    <ItemTemplate>
    <%#Eval("category") %>
     <asp:HiddenField ID="hf" Value=<%#Eval("a_n") %> runat="server" />
  
    
    </ItemTemplate>
     <EditItemTemplate>
     <asp:HiddenField ID="hf" Value=<%#Eval("a_n") %> runat="server" />
  
    <asp:TextBox ID="t3" Text=<%#Eval("category") %> runat="server"></asp:TextBox>
    </EditItemTemplate>
   
    </asp:TemplateColumn>
    <asp:TemplateColumn>
    
    <ItemTemplate>
    <%#Eval("sub_category") %>
     <asp:HiddenField ID="hf" Value=<%#Eval("a_n") %> runat="server" />
  
    
    </ItemTemplate>
     <EditItemTemplate>
     <asp:HiddenField ID="hf" Value=<%#Eval("a_n") %> runat="server" />
  
    <asp:TextBox ID="t3" Text=<%#Eval("sub_category") %> runat="server"></asp:TextBox>
    </EditItemTemplate>
   
    </asp:TemplateColumn>


    <asp:EditCommandColumn EditText="edit" CancelText="cancel" UpdateText="update" ></asp:EditCommandColumn>
    
    <asp:TemplateColumn>
    <ItemTemplate>
    <asp:Button ID="bb" Text="delete" OnClientClick="return confirmA('re u sure?')" CommandName="delete"  runat="server" />
    </ItemTemplate>
    </asp:TemplateColumn>

    <asp:TemplateColumn>
    <ItemTemplate>
    <a href="Default8.aspx?a1=<%#Eval("a_n") %>">
    click
    </a>
    </ItemTemplate>
    </asp:TemplateColumn>
    </Columns>
    
    
    
    </asp:DataGrid>
</asp:Content>

