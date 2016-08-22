<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Data" %>
<script runat=server>
public void bt(object o, EventArgs e)
    {

        string path1 = Server.MapPath(".") + "/pic/";
        string path2 = Server.MapPath(".") + "/pdf/";
        string p1 =fu1.FileName;
        string p2 = fu2.FileName;
    
        fu1.SaveAs(path1 + p1);
        fu2.SaveAs(path2 + p2);
        ds.InsertCommand = "insert into data(book_name,author,pic,pdf,category,sub_category) values('" + t1.Text + "','" + t2.Text + "','" + d1.SelectedItem.Text + "','" + d2.SelectedItem.Text + "','" + p1 + "','" + p2 + "')";
        
        ds.Insert();
        
        
        
        
    }
    </script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:AccessDataSource ID=ds runat=server DataFile="~/lib.mdb"></asp:AccessDataSource>
<center>
<table>
    <tr><td style="width: 208px">Name</td><td style="width: 240px"><asp:TextBox ID=t1 runat=server></asp:TextBox></td><td style="width: 46px"></td></tr>
    <tr><td style="width: 208px">Author</td><td style="width: 240px">
    <asp:TextBox ID=t2 runat=server></asp:TextBox></td>
    <td style="width: 46px"></td></tr>
    <tr><td style="width: 208px">category</td>
    <td style="width: 240px">
    <asp:DropDownList ID=d1 runat=server>
<asp:ListItem >Management</asp:ListItem>
<asp:ListItem>Foreign Studies</asp:ListItem>
<asp:ListItem>Govt and Pvt Jobs</asp:ListItem>
<asp:ListItem>Arts commerce and law</asp:ListItem>
<asp:ListItem>SCI and Tech</asp:ListItem>
<asp:ListItem>School Programs</asp:ListItem>
</asp:DropDownList>
    </td>
    <td style="width: 46px"></td></tr>
    <tr><td style="width: 208px">sub category</td>
    <td style="width: 240px">
     <asp:DropDownList ID=d2 runat=server>
<asp:ListItem >MBA Entrance</asp:ListItem>
<asp:ListItem>BBA Entrance</asp:ListItem>
<asp:ListItem>Hotel Management</asp:ListItem>
<asp:ListItem>Marketing Management</asp:ListItem>
<asp:ListItem>Human Resources</asp:ListItem>
<asp:ListItem>Finance</asp:ListItem>
<asp:ListItem >GMAT</asp:ListItem>
<asp:ListItem>SAT</asp:ListItem>
<asp:ListItem>Bank PO Clerical</asp:ListItem>
<asp:ListItem>CSAT</asp:ListItem>
<asp:ListItem>CTET</asp:ListItem>
<asp:ListItem>Placement Paper</asp:ListItem>
<asp:ListItem >SSC</asp:ListItem>
<asp:ListItem>Intelligence Bureau</asp:ListItem>
<asp:ListItem>Railway</asp:ListItem>
<asp:ListItem>UGC</asp:ListItem>
<asp:ListItem>Law</asp:ListItem>
<asp:ListItem>Law Entrance</asp:ListItem>
<asp:ListItem >Fashion Designing</asp:ListItem>
<asp:ListItem>CA-CPT</asp:ListItem>
<asp:ListItem>Commerce</asp:ListItem>
<asp:ListItem>Gandian Studies</asp:ListItem>
<asp:ListItem>General Knowledge</asp:ListItem>
<asp:ListItem>English</asp:ListItem>
<asp:ListItem>French</asp:ListItem>
<asp:ListItem >Engineering Entrance</asp:ListItem>
<asp:ListItem>Medical Entrance</asp:ListItem>
<asp:ListItem>GATE</asp:ListItem>
<asp:ListItem>IES</asp:ListItem>
<asp:ListItem>MCA</asp:ListItem>
<asp:ListItem>BCA</asp:ListItem>
<asp:ListItem >Pharma</asp:ListItem>
<asp:ListItem>B.sc</asp:ListItem>
<asp:ListItem>B.tech</asp:ListItem>
<asp:ListItem>CBSE(III-X)</asp:ListItem>
<asp:ListItem>Classes XI-XII</asp:ListItem>
<asp:ListItem>CBSE-PSA</asp:ListItem>
<asp:ListItem>ICSE(VI-X)</asp:ListItem>
<asp:ListItem>NTPC/NETS/KVPY</asp:ListItem>
</asp:DropDownList>
    <td style="width: 46px"></td></tr>
    <tr><td style="width: 208px">Photo Upload</td><td style="width: 240px"><asp:FileUpload ID=fu1 runat=server /></td><td style="width: 46px"></td></tr>
    <tr><td style="width: 208px">Pdf Upload</td><td style="width: 240px"><asp:FileUpload ID=fu2 runat=server /></td><td style="width: 46px"></td></tr>
    
    <tr><td></td><td><asp:Button ID=b  Text="SUBMIT" OnClick=bt runat=server /></td><td></td></tr>
    </table>
    </center>
</asp:Content>

