<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>
<script runat="server">
    public void page_load(object o, EventArgs e)
    {

        if (!IsPostBack)
        {
            ds.SelectCommand = "select * from employee";
        }
    }
    public void show()
    {

        ds.SelectCommand = "select * from employee";
    }

    public void updt(object o, DataGridCommandEventArgs e)
    {
        HiddenField hh = (HiddenField)e.Item.FindControl("hf");
        TextBox tt = (TextBox)e.Item.FindControl("t1");
        TextBox tt1 = (TextBox)e.Item.FindControl("t2");
        TextBox tt2 = (TextBox)e.Item.FindControl("t3");
        TextBox tt3 = (TextBox)e.Item.FindControl("t4");
        TextBox tt4 = (TextBox)e.Item.FindControl("t5");
        TextBox tt5 = (TextBox)e.Item.FindControl("t6");
        ds.UpdateCommand = "update employee set nam_e='" + tt.Text + "',ph_no='" + tt1.Text + "',email='" + tt2.Text + "',address='" + tt3.Text + "',dept='" + tt4.Text + "',salary='" + tt5.Text + "' where a_n=" + hh.Value + "";
        ds.Update();
        show();


    }

    </script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:AccessDataSource DataFile="~/d1.mdb" runat=server ID=ds></asp:AccessDataSource>
 <asp:AccessDataSource DataFile="~/d1.mdb" runat=server ID=ds2></asp:AccessDataSource>
    <form id="form1" runat="server">
    <div>
    
     <asp:DataGrid ID=dg runat=server  AutoGenerateColumns=false DataSourceID=ds OnUpdateCommand=updt>
     <Columns>
    <asp:TemplateColumn>
    
    <ItemTemplate>
   <asp:TextBox ID=t1 Text= <%#Eval("nam_e") %> runat=server></asp:TextBox>
    
      </ItemTemplate>
    
    </asp:TemplateColumn>
     <asp:TemplateColumn>
    
    <ItemTemplate>
   <asp:TextBox ID=t2 Text= <%#Eval("ph_no") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
    
     <asp:TemplateColumn>
    
    <ItemTemplate>
   <asp:TextBox ID=t3 Text= <%#Eval("email") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
   
     <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t4 Text= <%#Eval("address") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
     <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t5 Text= <%#Eval("dept") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
     <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t6 Text= <%#Eval("salary") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
    
     <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:HiddenField ID=hf runat=server Value=<%#Eval("a_n") %> />
      <asp:Button ID=b1 runat=server Text=update CommandName="UPDATE" />

      </ItemTemplate>
    
    </asp:TemplateColumn>

     </Columns>

     </asp:DataGrid>
    </div>
    </form>

</asp:Content>

