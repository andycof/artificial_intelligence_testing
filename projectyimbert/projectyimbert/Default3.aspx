<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Data" %>
<script runat=server>
    String a;
    String b;
    String c = "";
    public void bt(object o, EventArgs e)
    {
        a = "select * from login where user_name='" + t1.Text + "' and pass_word='" + t2.Text + "'";
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=|DataDirectory|lib.mdb; Persist Security Info=False;");
        OleDbCommand cmd = new OleDbCommand(a, con);
        con.Open();
        OleDbDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            b = rdr["user_name"].ToString();
            Session["log"] = b;
            c = rdr["paas_word"].ToString();

        }
        if (b == t1.Text && c == t2.Text)
        {

            Response.Redirect("Default4.aspx");

        }
        else
        {
            l1.InnerText = "wrong id or pass";

        }




    }


</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<asp:Label runat=server ID=Label6 CssClass=box12>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;SignUp&nbsp;Now</asp:Label>
<br />
<br />
<br />
<br />
<asp:Label runat=server ID=Label3 CssClass=box13>User&nbsp;Name</asp:Label>
<asp:TextBox runat=server ID="t1"></asp:TextBox>
<asp:RequiredFieldValidator ID=rf runat=server ControlToValidate=t1 ErrorMessage=* Font-Bold=true ForeColor=Red></asp:RequiredFieldValidator>
<br /><br />
<asp:Label runat=server ID=ll2 CssClass=box13>
Password&nbsp;&nbsp;&nbsp;
</asp:Label>
<asp:TextBox runat=server ID="t2"></asp:TextBox>
<asp:RequiredFieldValidator ID=RequiredFieldValidator1 runat=server ControlToValidate=t1 ErrorMessage=* Font-Bold=true ForeColor=Red></asp:RequiredFieldValidator>
<br /><br />
<br />
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button Text=login ID=b1 runat=server OnClick=bt />
<label ID=l1 runat="server" style="font-style:italic; font-weight:bold; color:Red;"></label>
</center>
</asp:Content>

