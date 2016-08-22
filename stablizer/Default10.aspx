<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default10.aspx.cs" Inherits="Default10" %>
<script runat="server">
 public void page_load(object o,EventArgs e)
    {}
 public void f1(object o, EventArgs e)
 {
     String aa = "insert into product(productid,productname,category,price,numberofproduct) values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "',)";
     OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["shi"].ConnectionString);
     OleDbCommand cmd = new OleDbCommand(aa, con);
     con.Open();
     cmd.ExecuteNonQuery();
     Page.RegisterStartupScript("hj", "<sc" + "ript>alert('Record Entered')</s" + "cript>");

     con.Close();
 }
    </script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<asp:ScriptManager ID="sm" runat="server"></asp:ScriptManager>
<div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<strong><b><i><h1>ADD PRODUCT</h1></b></i></strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
<table>
<tr><td ></td></tr>
<tr>
<td>Product id</td><td><asp:TextBox ID=t1 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Product name</td><td><asp:TextBox ID=t2 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Category</td><td><asp:TextBox ID=t3 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Price</td><td><asp:TextBox ID=t4  runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Number of products</td><td><asp:TextBox ID=t5  runat=server></asp:TextBox></td>
</tr>
<tr>
<td>
<asp:Button runat=server ID=b1 Text=submit OnClick=f1 />
</td>
</tr>
</table></center>
</div>
</asp:Content>

