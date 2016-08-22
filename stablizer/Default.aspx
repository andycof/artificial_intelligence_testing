<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<script runat="server">
 public void page_load(object o,EventArgs e)
    {}
 public void f1(object o, EventArgs e)
 {
     string aa = "insert into party(partyname,productid,productname,productprice,numberofproduct,totalcost,dat_e,transaction) values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "','" + t7.Text + "','" + t8.Text + "')";
     OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["shi"].ConnectionString);
     OleDbCommand cmd = new OleDbCommand(aa, con);
     con.Open();
     cmd.ExecuteNonQuery();
     Page.RegisterStartupScript("hj", "<sc" + "ript>alert('product selled')</s" + "cript>");

     con.Close();
     Response.Redirect("bbfee.aspx?a1=" + t1.text + "&a2=" + t2.text + "&a3=" + t5.text + "&a4=" +t7.Text + "");
 }
    </script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="sm" runat="server"></asp:ScriptManager>
<div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<strong><b><i><h1>Product selling window</h1></b></i></strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
<table>
<tr><td ></td></tr>
<tr>
<td>Party Name</td><td><asp:TextBox ID=t1 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Product Id</td><td><asp:TextBox ID=t2 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Product Name</td><td><asp:TextBox ID=t3 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Product Price</td><td><asp:TextBox ID=t4 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Number Of Product</td><td><asp:TextBox ID=t5 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Total Cost</td><td><asp:TextBox ID=t6 runat=server></asp:TextBox></td>
</tr>
<tr>
<tr>
<td>Date</td><td><asp:TextBox ID=t7 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Type Of Transaction</td><td><asp:TextBox ID=t8 runat=server></asp:TextBox></td>
</tr>
<tr>
<tr>
<td>
<asp:Button runat=server ID=b1 Text=SELL OnClick=f1 />
</td>
</tr>
</table></center>
</div>
</asp:Content>

