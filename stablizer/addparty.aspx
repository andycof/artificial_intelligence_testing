<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" Debug="true" EnableEventValidation="false" AutoEventWireup="true" CodeFile="addparty.aspx.cs" Inherits="addparty" %>
<script runat="server">
 public void page_load(object o,EventArgs e)
    {}
 public void f1(object o, EventArgs e)
 {
     string aa = "insert into party(nam_e,ph_no,email,address) values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "')";
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
<strong><b><i><h1>PARTY REGISTRATION FORM</h1></b></i></strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
<table>
<tr><td ></td></tr>
<tr>
<td>NAME</td><td><asp:TextBox ID=t1 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Phone Number</td><td><asp:TextBox ID=t2 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Email Id</td><td><asp:TextBox ID=t3 runat=server></asp:TextBox></td>
</tr>
<tr>
<td>Address</td><td><asp:TextBox ID=t4 TextMode=MultiLine runat=server></asp:TextBox></td>
</tr>
<tr>

<td>
<asp:Button runat=server ID=b1 Text=submit OnClick=f1 />
</td>
</tr>
</table></center>
</div>
</asp:Content>

