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
            width: 199px;
        }
    </style>
</head>
<body>
	<form id="form1" runat="server">
	<div id="header">
		<h1><a href="index.html" id="sitetitle">Business Analyst</a></h1>
		<ul>
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
		</ul>
	</div>
	<div id="body">
		<div id="about">
            <div>
				<h2>Employee</h2>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">Employee ID:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
				
			</div>
			<div>
				<h2>Department</h2>
                <table style="width: 100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
				
			</div>
			<div>
				<h2>We Have More Templates for You</h2>
				<p>
					Looking for more templates? Just browse through all our <a href="http://www.freewebsitetemplates.com/">Free Website Templates</a> and find what you&#39;re looking for. But if you don&#39;t find any website template you can use, you can try our <a href="http://www.freewebsitetemplates.com/freewebdesign/">Free Web Design</a> service and tell us all about it. Maybe you&#39;re looking for something different, something special. And we love the challenge of doing something different and something special.
				</p>
			</div>
			<div>
				<h2>Be Part of Our Community</h2>
				<p>
					If you&#39;re experiencing issues and concerns about this website template, join the discussion <a href="http://www.freewebsitetemplates.com/forums/">on our forum</a> and meet other people in the community who share the same interests with you.
				</p>
				<p>
					<span>Template details</span> Design version 3<br>Code version 2<br>Website Template details, discussion and updates for this <a href="http://www.freewebsitetemplates.com/discuss/businessanalystwebsitetemplate/">Business Analyst Website Template</a>.<br>Website Template design by <a href="http://www.freewebsitetemplates.com/">Free Website Templates</a>.<br>Please feel free to remove some or all the text and links of this page and replace it with your own About content.
				</p>
			</div>
		</div>
		<div id="testimonials">
			<h2>Testimonials</h2>
			<ul>
				<li>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat sodales semper. Cras libero lorem, posuere ac pharetra sed, porttitor ac elit. Etiam sed sem nec orci molestie convallis. Donec suscipit fringilla ipsum, id iaculis ante dignissim sit amet. Morbi venenatis tincidunt turpis, eget fermentum orci tristique nec. Suspendisse viverra mollis velit sed adipiscing. Maecenas quis erat felis, nec rutrum magna.
					</p>
					<span>- Happy Client</span>
				</li>
				<li>
					<p>
						Mauris turpis est, sagittis at luctus in, faucibus at odio. Curabitur ac arcu et mi convallis lacinia ac quis odio. Pellentesque vitae arcu nibh. Nulla nec dapibus ligula. Suspendisse non neque et ante egestas ornare a quis diam. Praesent ac metus elit. Maecenas gravida tortor eu magna eleifend sed consectetur urna lacinia. Morbi tristique augue eget nisi blandit laoreet. Sed luctus dolor eget nisi aliquam eu condimentum elit accumsan. Suspendisse potenti.
					</p>
					<span>- Big Corporation Client</span>
				</li>
			</ul>
			<ul>
				<li>
					<p>
						Sed aliquam massa nec mauris accumsan interdum. Etiam pretium, risus eget sollicitudin laoreet, nisl massa venenatis sem, condimentum rhoncus libero leo ut risus. Aliquam erat volutpat. Mauris ac libero odio, sit amet fringilla felis. Integer pulvinar sodales nibh, sed consequat magna aliquam quis. Maecenas auctor magna sit amet lorem tempus volutpat sit amet eu neque.
					</p>
					<span>- Satisfied Customer</span>
				</li>
				<li>
					<p>
						Donec dignissim vestibulum pretium. Sed congue sagittis malesuada. Praesent eu justo at dui tincidunt viverra et sed nisi. Integer eu ante nunc. Nam accumsan interdum egestas. Ut lectus nunc, adipiscing nec sagittis id, eleifend vitae massa. Integer quis arcu et ligula feugiat posuere. Proin eu cursus sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia.
					</p>
					<span>- Entrepreneur</span>
				</li>
			</ul>
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