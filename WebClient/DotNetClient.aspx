<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DotNetClient.aspx.cs" Inherits="WebClient.DotNetClient" %>

<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>About - Business Analyst Website Template</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <style type="text/css">
        .auto-style1 {
            width: 192px;
        }
        .auto-style2 {
            width: 128px;
        }
        .auto-style3 {
            direction: ltr;
        }
        .auto-style4 {
            width: 100%;
        }
    </style>
</head>
<body>
	<form id="form1" runat="server">
	<div id="header">
		<h1><a href="index.html" id="sitetitle">Service</a></h1>
		<!--<ul>
			<li>
				<a href="index.html">Home</a>
			</li>
			<li>
				<a href="services.html">Services</a>
			</li>
			<li>
				<a href="blog.html">Blog</a>
			</li>
			<li class="current">
				<a href="about.html">About</a>
			</li>
			<li>
				<a href="contact.html">Contact</a>
			</li>
		</ul>-->
	</div>
	<div id="body">
		<div id="about">
            <div>
				<h2>Employee</h2>
    <table class="auto-style4">
        <tr>
            <td class="auto-style1">Employee ID:</td>
            <td>
                <asp:TextBox ID="emp_id" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Employee Name:</td>
            <td>
                <asp:TextBox ID="emp_name" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Department ID:</td>
            <td>
                <asp:TextBox ID="dept_id" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 26px" Text="Insert" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EService" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Emp_ID">
                            <ItemTemplate>
                                <div class="auto-style3">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Emp_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Emp_Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Emp_Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Emp_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DP_ID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2" Text='<%# Bind("DP_ID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("DP_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="EService" runat="server" DeleteMethod="Delete_Emp" InsertMethod="InsertEmp" SelectMethod="GetAllEmp" TypeName="WebClient.BusinessLayer" UpdateMethod="UpdateEmp">
                    <DeleteParameters>
                        <asp:Parameter Name="Emp_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Emp_ID" Type="Int32" />
                        <asp:Parameter Name="Emp_Name" Type="String" />
                        <asp:Parameter Name="DP_ID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Emp_ID" Type="Int32" />
                        <asp:Parameter Name="Emp_Name" Type="String" />
                        <asp:Parameter Name="DP_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        </table>
				
			</div>
			<div>
				<h2>Department</h2>
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style2">Department ID:</td>
                        <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Department Name:</td>
                        <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;&nbsp;</td>
                        <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("DP_ID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DP_Name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("DP_Name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Dep" InsertMethod="InsertDept" SelectMethod="GetAllDep" TypeName="WebClient.BusinessLayer" UpdateMethod="UpdateDept">
                                <DeleteParameters>
                                    <asp:Parameter Name="DP_ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="DP_ID" Type="Int32" />
                                    <asp:Parameter Name="DP_Name" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="DP_Name" Type="String" />
                                    <asp:Parameter Name="DP_ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>
                        </td>
                    </tr>
                </table>
				
			</div>
			
		</div>
		
	<div id="footer">
		<div>
			<a href="http://freewebsitetemplates.com/go/twitter/" target="_blank" id="twitter">Twitter</a>
			<a href="http://freewebsitetemplates.com/go/facebook/" target="_blank" id="facebook">Facebook</a>
			<a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" id="googleplus">Google&#43;</a>
		</div>
		<p>
			&copy; Copyright 2012. All rights reserved
		</p>
	</div>
    </form>
</body>
</html>