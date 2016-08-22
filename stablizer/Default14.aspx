<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default14.aspx.cs" Inherits="Default14" %>
<script runat="server">
 public void f1(object o, EventArgs e)
 {
     ds.InsertCommand = "insert into employee(nam_e,ph_no,email,address,dept,salary) values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "')";
     ds.Insert();
 }
    </script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:AccessDataSource runat="server"  ID="ds" DataFile="~/d1.mdb"></asp:AccessDataSource>
 
<asp:ScriptManager ID="sm" runat="server"></asp:ScriptManager>
<div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<strong><b><i><h1>selling of product</h1></b></i></strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
<table>
<tr><td ></td></tr>
<tr>
<td>Party Name</td><td><asp:TextBox ID=t1 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>ProductId</td><td><asp:TextBox ID=t2 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Product Name</td><td><asp:TextBox ID=t3 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Product Price</td><td><asp:TextBox ID=t4 TextMode=MultiLine runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Department</td><td><asp:TextBox ID=t5  runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Salary</td><td><asp:TextBox ID=t6  runat=server></asp:TextBox></td>
</tr>
<tr>

<td>
<asp:Button runat=server ID=b1 Text=submit OnClick=f1 />
</td>
</tr>
</table></center>
</div>
</asp:Content>

