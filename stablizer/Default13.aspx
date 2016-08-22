<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default13.aspx.cs" Inherits="Default13" %>
 <script>
 public void page_load(object o,EventArgs e)
    {

    if(!IsPostBack)

        {
            ds2.SelectCommand = "select * from party";
            d1.DataTextField = "nam_e";
            d1.DataValueField = "a_n";
          
        }

    }
     public void f1(object o, EventArgs e)
   {
   ds.SelectCommand=" select from  party(nam_e,,ph_no,email,address) where a_n=";
   ds1.SelectCommand="select from partytransaction(partyname,productid,productname,productprice,numberpfproduct,totalcost,dat_e,transaction)";
   
   }

    </script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:AccessDataSource ID="ds2" runat=server DataFile="~/d1.mdb"></asp:AccessDataSource>

<asp:AccessDataSource ID="ds" runat=server DataFile="~/d1.mdb"></asp:AccessDataSource>
<asp:AccessDataSource ID="ds1" runat=server DataFile="~/d1.mdb"></asp:AccessDataSource>
<div>
<table>
<tr>
<td>
<asp:DropDownList ID=d1 runat=server AutoPostBack=true AppendDataBoundItems=true DataSourceID="ds1">
<asp:ListItem>
select
</asp:ListItem>
</asp:DropDownList>
</td>
</tr>
<tr>
<td>
<asp:Button ID=b11 runat=server onclick=f1 />
</td>
</tr>
</table>
</div>
<div>
<asp:DataGrid ID=dg runat=server DataSourceID=ds AutoGenerateColumns=false  AllowPaging=true PageSize=3 PagerStyle-Mode="NumericPages" OnPageIndexChanged=pg  >
<Columns>
<asp:TemplateColumn HeaderText="NAME">
<ItemTemplate>
<%#Eval("nam_e")%>
</ItemTemplate>
</asp:TemplateColumn>

<asp:TemplateColumn HeaderText="PHONE NUMBER">
<ItemTemplate>
<%#Eval("ph_no") %>
</ItemTemplate>

</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="EMAIL ID">
<ItemTemplate>
<%#Eval("email") %>
</ItemTemplate>

</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="ADDRESS">
<ItemTemplate>
<%#Eval("address") %>
</ItemTemplate>

</asp:TemplateColumn>


</Columns>
</asp:DataGrid>
<asp:Label ID=l1 runat=server >TRANSACTIONS OF COMPANY ARE</asp:Label>
<asp:DataGrid ID=D2 runat=server DataSourceID=ds AutoGenerateColumns=false  AllowPaging=true PageSize=3 PagerStyle-Mode="NumericPages" OnPageIndexChanged=pg  >
<Columns>
<asp:TemplateColumn HeaderText="Party Name">
<ItemTemplate>
<%#Eval("partyname")%>
</ItemTemplate>
</asp:TemplateColumn>

<asp:TemplateColumn HeaderText="Product Id">
<ItemTemplate>
<%#Eval("productid") %>
</ItemTemplate>

</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="Product Name">
<ItemTemplate>
<%#Eval("productname") %>
</ItemTemplate>

</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="Product Price">
<ItemTemplate>
<%#Eval("productprice") %>
</ItemTemplate>

</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="Number Of Product">
<ItemTemplate>
<%#Eval("numberofproduct") %>
</ItemTemplate>

</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="Total Cost">
<ItemTemplate>
<%#Eval("Total Cost") %>
</ItemTemplate>

</asp:TemplateColumn>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="Date Of Transaction">
<ItemTemplate>
<%#Eval("dat_e") %>
</ItemTemplate>

</asp:TemplateColumn>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="Type Of Transaction">
<ItemTemplate>
<%#Eval("transaction") %>
</ItemTemplate>

</asp:TemplateColumn>
</Columns>
</asp:DataGrid>
</div>
</asp:Content>

