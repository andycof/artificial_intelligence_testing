<%@ Page Language="C#" MasterPageFile="MasterPage.master" Debug="true" EnableEventValidation="false" Title="Untitled Page" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
    
  
   

<script runat=server>
    
   public void page_load(object o, EventArgs e)
    {
        if (!IsPostBack)
        {
String cl=Request.QueryString["a1"];
String se = Request.QueryString["a2"];
String se1 = Request.QueryString["a3"];
String se2 = Request.QueryString["a4"];


String aa = "select * from fee_detail where partyname='" + cl + "'productid='" + se + "'numberofproduct='" + se1 + "'dat_e='" + se2 + "' ";
OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["shi"].ConnectionString);
OleDbDataAdapter ad = new OleDbDataAdapter(aa, con);
con.Open();
DataSet ds = new DataSet();
ad.Fill(ds, "my");
dg.DataSource = ds;
dg.DataBind();

con.Close();

            
            
          
           

    
    
    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=900,width=1200');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script> 
     <form id="form1" runat="server">
    <div>

    <asp:DataGrid ID=dg runat=server    AutoGenerateColumns=false  DataSourceID=ds>
    
     <Columns>
    <asp:TemplateColumn>
    
    <ItemTemplate>
   <asp:TextBox ID=t1 Text= <%#Eval("partyname") %> runat=server></asp:TextBox>
    
      </ItemTemplate>
    
    </asp:TemplateColumn>
     <asp:TemplateColumn>
    
    <ItemTemplate>
   <asp:TextBox ID=t2 Text= <%#Eval("productid") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
    
     <asp:TemplateColumn>
    
    <ItemTemplate>
   <asp:TextBox ID=t3 Text= <%#Eval("productname") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
   
     <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t4 Text= <%#Eval("productprice") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
    
    <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t5 Text= <%#Eval("numberofproduct") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
    <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t6 Text= <%#Eval("totalcost") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
     <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t7 Text= <%#Eval("dat_e") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
    <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:TextBox ID=t8 Text= <%#Eval("transaction") %> runat=server></asp:TextBox>
      </ItemTemplate>
    
    </asp:TemplateColumn>
     <asp:TemplateColumn>
    
    <ItemTemplate>
    <asp:HiddenField ID=hf runat=server Value=<%#Eval("a_n") %> />
       <asp:Button ID="bb" Text="print" OnClick=printpanel   runat="server" />

      </ItemTemplate>
    
    </asp:TemplateColumn>

     </Columns>

     </asp:DataGrid>
    
    </div>
    </form>
    

</asp:Content>

