<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--     Khai báo thư viện -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WELLCOME TO ICSSE 2017</title>
<meta charset="utf-8">
<!-- Khai báo các thư viện css-->
<link rel="shortcut icon" type="image/png" href="images/icon.png" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Nhúng style.css do ta tạo vào trang web -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- Khai báo các thư viện js-->
<script src="lib/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="lib/jquery.dataTables.min.js"></script>
<script src="lib/dataTables.bootstrap.min.js"></script>
<script>
			$(document).ready(function() {
				$('#table').DataTable();
			});
	  </script>
<!-- Nhúng validation.js do ta tạo vào trang web -->
<script type="text/javascript" src="js/validation.js"></script>
<!-- Textarea chuyển thành html -->
<script src="lib/tinymce/js/tinymce/tinymce.min.js"></script>
<script src="lib/tinymce/js/tinymce/jquery.tinymce.min.js"></script>
<!-- jquery ui  dialog-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.0/themes/smoothness/jquery-ui.css">
<script>
	tinymce
			.init({
				/* replace textarea having class .tinymce with tinymce editor */
				selector : "textarea",

				/* theme of the editor */
				theme : "modern",
				skin : "lightgray",

				/* width and height of the editor */
				width : "100%",
				height : 300,

				/* display statusbar */
				statubar : true,

				/* plugin */
				plugins : [
						"advlist autolink link image lists charmap print preview hr anchor pagebreak",
						"searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
						"save table contextmenu directionality emoticons template paste textcolor" ],

				/* toolbar */
				toolbar : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media fullpage | forecolor backcolor emoticons",

				/* style */
				style_formats : [ {
					title : "Headers",
					items : [ {
						title : "Header 1",
						format : "h1"
					}, {
						title : "Header 2",
						format : "h2"
					}, {
						title : "Header 3",
						format : "h3"
					}, {
						title : "Header 4",
						format : "h4"
					}, {
						title : "Header 5",
						format : "h5"
					}, {
						title : "Header 6",
						format : "h6"
					} ]
				}, {
					title : "Inline",
					items : [ {
						title : "Bold",
						icon : "bold",
						format : "bold"
					}, {
						title : "Italic",
						icon : "italic",
						format : "italic"
					}, {
						title : "Underline",
						icon : "underline",
						format : "underline"
					}, {
						title : "Strikethrough",
						icon : "strikethrough",
						format : "strikethrough"
					}, {
						title : "Superscript",
						icon : "superscript",
						format : "superscript"
					}, {
						title : "Subscript",
						icon : "subscript",
						format : "subscript"
					}, {
						title : "Code",
						icon : "code",
						format : "code"
					} ]
				}, {
					title : "Blocks",
					items : [ {
						title : "Paragraph",
						format : "p"
					}, {
						title : "Blockquote",
						format : "blockquote"
					}, {
						title : "Div",
						format : "div"
					}, {
						title : "Pre",
						format : "pre"
					} ]
				}, {
					title : "Alignment",
					items : [ {
						title : "Left",
						icon : "alignleft",
						format : "alignleft"
					}, {
						title : "Center",
						icon : "aligncenter",
						format : "aligncenter"
					}, {
						title : "Right",
						icon : "alignright",
						format : "alignright"
					}, {
						title : "Justify",
						icon : "alignjustify",
						format : "alignjustify"
					} ]
				} ]
			});
</script>
</head>
<!-- Body -->
<body class="mybody">
	<%-- thông báo --%>
	<c:if test="${announce ne ''}">
		<script type="text/javascript">
		 		var announce = '${announce}';
				alert(announce);
			</script>
	</c:if>
	<div class="header">
		<div class="text-center">
			<img class="img-responsive" src="images/Banner.jpg"
				title="ICSSE 2017" alt="No Image">
		</div>
	</div>
	<div class="slide">
		<!-- Slide  -->
		<div class="text-center">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">

				<!-- Phần các chỉ số  -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Phần bao các slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="images/slide1.jpg" alt="Slide 1">
					</div>

					<div class="item">
						<img src="images/slide2.jpg" alt="Slide 2">
					</div>

					<div class="item">
						<img src="images/slide3.jpg" alt="Slide 3">
					</div>
				</div>

				<!-- Control điều khiển bên trái và bên phải -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>

	<div>
		<!-- Menu-->
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>

				<div class="collapse navbar-collapse" id="myNavbar">
					<div class="navbar-header">
						<ul class="nav navbar-nav navbar-center">
							<li><a class="glyphicon glyphicon-home"
								style="text-align: center;" href="home"></a></li>
							<li><a href="home">HOME</a></li>
							<li>
								<div class="dropdown show">
									<a class="btn btn-secondary dropdown-toggle" onclick="doimau()"
										id="about" href="#" role="button" id="dropdownMenuLink"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"
										style="padding: 16px 12px; font-size: 12px; color: #fff;">ABOUT</a>

									<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
										<a class="dropdown-item" href="about_icsse"><span
											class="glyphicon glyphicon-briefcase"
											style="color: #847f7f; padding: 10px; font-size: 14px;">&nbsp;ISCCE</span></a>
										<a class="dropdown-item" href="about_hcmute"><span
											class="glyphicon glyphicon-book"
											style="color: #847f7f; padding: 10px; font-size: 14px;"">&nbsp;HCMUTE</span></a>
										<a class="dropdown-item" href="about_committees"><span
											class="glyphicon glyphicon-globe"
											style="color: #847f7f; padding: 10px; font-size: 14px;">&nbsp;COMMITEES</span></a>
									</div>
								</div>
							</li>
							<li><a href="program">PROGRAM</a></li>
							<li><a href="publication">PUBLICATION</a></li>
							<li><a href="contact">CONTACT</a></li>
						</ul>
						<!-- check username  -->
						<%@ page import="java.io.*,java.util.*"%>
						<%@ page import="icsse2017.model.Account"%>
						<%
							//get username
							Account user = (Account) session.getAttribute("user");
							if (user != null) {
						%>
						<div class="navbar-right navbar-log text-center">
							<a href="manage_news"><button class="btn btn-primary">
									<span class="glyphicon glyphicon-folder-open"></span> Manage
									News
								</button></a> <a href="logout"><button class="btn btn-primary">
									<span class="glyphicon glyphicon-log-out"></span> Log Out
								</button></a>
						</div>
						<%
							} else {
								request.getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);

							}
						%>

					</div>
				</div>
		</nav>
	</div>
	<!--Manager-->
	<c:choose>
		<c:when test="${mode == 'LIST'}">
			<div class="row content" style="margin-left: 5px; margin-right: 5px;">
				<!--Thong bao-->
				<div class="row manage_news">
					<div class="titleInfo title">NEWS</div>
					<br /> <br>
					<div class="col-sm-9 col-xs-9"></div>
					<div class="col-sm-3 col-xs-3">
						<a href="add-news"><button
								class="addcandidate btn btn-primary btn">
								<span class="fa fa-plus-circle"> </span>Add News
							</button></a>
					</div>
					<div class="table-responsive col-sm-12 col-xs-12">
						<table id="table" class="table table-bordered table-striped"
							style="font-size: 12px">
							<thead>
								<tr>
									<th class="text-center">ID</th>
									<th class="text-center">Title</th>
									<th class="text-center">Date</th>
									<th class="text-center">Author</th>
									<th class="text-center">Option</th>
								</tr>
							</thead>
							<tbody style="font-size: 14px;">
								<c:forEach var="news" items="${newss}">
									<tr>
										<td>${news.id}</td>
										<td>${news.title}</td>
										<td>${news.date}</td>
										<td><c:forEach var="account" items="${accounts}">
												<c:if test="${account.id == news.username}">
														${account.username}
													</c:if>
											</c:forEach>
										<td><select
											style="width: 80px !important; height: 26px !important;"
											onchange="myFunction(this.value, ${news.id})">
												<option value="0">Option</option>
												<option value="2">Edit</option>
												<option value="1">Delete</option>
										</select></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- chọn action -->
					<script type="text/javascript">
								function myFunction(val, id) {
									if (val == 1) {
										var dynamicDialog = $('<div id="conformBox">Are you sure to delete?</div>');
									        
									        dynamicDialog.dialog({
									                title : "Warning",
									                closeOnEscape: true,
									                modal : true,
									        
									               buttons : 
									                        [{
									                                text : "Delete",
									                                click : function() {
									                                	$(this).dialog("close");
									                                	window.location.assign('delete-news?id=' + id)
									                                }
									                        },
									                        {
									                                text : "Cancel",
									                                click : function() {
									                                        $(this).dialog("close");
									                                }
									                        }]
									        }); 
									} 
									else if (val == 2) {
										window.location.assign('update-news?id=' + id)
									}									
								}
							</script>
					<br />
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'NEW'}">
			<div class="row content" style="margin-left: 5px; margin-right: 5px;">
				<!--Thong bao-->
				<div class="row manage_news">
					<div class="titleInfo title">ADD NEWS</div>
					<form action="save-news" method="POST" style="align-items: center;"
						enctype="multipart/form-data">
						<div class="form-group col-sm-12 col-xs-12">
							<input type="hidden" name="id" value="0" />
						</div>
						<div class="col-sm-2">
							<span style="margin-top: 10px"><strong>Title</strong></span>
						</div>
						<div class="col-sm-10">
							<div class="input-group">
								<span class="input-group-addon" id="basic-addon"> <i
									class="fa fa-align-justify" aria-hidden="true"></i>
								</span> <input id="title" type="text"
									class="form-control content_input" placeholder="Enter title"
									name="title" aria-describedby="basic-addon" required>
							</div>
						</div>
						<div class="khoangcach">
							<br> <br>
						</div>
						<br>
						<div class="khoangcach">
							<br> <br>
						</div>
						<div>
							<span><strong>Content</strong></span>
						</div>
						<div class="khoangcach">
							<br>
						</div>
						<br>
						<textarea cols="80" id="content" name="content" rows="10">
					</textarea>
						<div class="khoangcach">
							<br> <br>
						</div>
						<br>
						<div class="form-group col-sm-12 col-xs-12">
							<input type="hidden" name="date"
								value="<%=(new java.util.Date()).toLocaleString()%>" />
						</div>
						<div class="form-group col-sm-12 col-xs-12">
							<input type="hidden" name="username" value="<%=user.getId()%>" />
						</div>

						<div class="form-group col-sm-12 col-xs-12">
							<label>Tệp đính kèm</label> <input type="file"
								class="form-control" name="file">
						</div>

						<div class="col-sm-6 col-xs-6 text-center">
							<button id="Confirm_info" class="btn btn-primary" type="submit"
								style="width: 100px">
								<span class="glyphicon glyphicon-ok"></span> OK
							</button>
						</div>

					</form>
					<div class="col-sm-6 col-xs-6 text-center">
						<a href="manage_news"><button id="Reset_info"
								class="btn btn-danger">
								<span class="glyphicon glyphicon-remove"></span> Cancel
							</button></a>
					</div>
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'UPDATE'}">
			<div class="row content" style="margin-left: 5px; margin-right: 5px;">
				<!--Thong bao-->
				<div class="row manage_news">
					<div class="titleInfo title">UPDATE NEWS</div>
					<form action="save-news" method="POST" style="align-items: center;"
						enctype="multipart/form-data">

						<div class="form-group col-sm-12 col-xs-12">
							<input type="hidden" name="id" value="${news.id}" />
						</div>
						<div class="col-sm-2">
							<span style="margin-top: 10px"><strong>Title</strong></span>
						</div>
						<div class="col-sm-10">
							<div class="input-group">
								<span class="input-group-addon" id="basic-addon"> <i
									class="fa fa-align-justify" aria-hidden="true"></i>
								</span> <input id="title" type="text"
									class="form-control content_input" placeholder="Enter title"
									name="title" value="${news.title}"
									aria-describedby="basic-addon" required>
							</div>
						</div>
						<div class="khoangcach">
							<br> <br>
						</div>
						<br>
						<div class="khoangcach">
							<br> <br>
						</div>
						<div>
							<span><strong>Content</strong></span>
						</div>
						<div class="khoangcach">
							<br>
						</div>
						<br>
						<textarea cols="80" id="content" name="content" rows="10">${news.content}
					</textarea>
						<div class="khoangcach">
							<br> <br>
						</div>
						<br>
						<div class="form-group col-sm-12 col-xs-12">
							<input type="hidden" name="date"
								value="<%=(new java.util.Date()).toLocaleString()%>" />
						</div>
						<div class="form-group col-sm-12 col-xs-12">
							<input type="hidden" name="username" value="${news.username}" />
						</div>

						<div class="form-group col-sm-12 col-xs-12">
							<div>
								<a href="${news.link}" target="_blank"><span>Link
										Documment:</span></a>
							</div>
							<label>Tệp đính kèm</label> <input type="file"
								class="form-control" name="file">
						</div>

						<div class="col-sm-6 col-xs-6 text-center">
							<button id="Confirm_info" class="btn btn-primary" type="submit"
								style="width: 100px">
								<span class="glyphicon glyphicon-ok"></span> OK
							</button>
						</div>

					</form>
					<div class="col-sm-6 col-xs-6 text-center">
						<a href="manage_news"><button id="Reset_info"
								class="btn btn-danger">
								<span class="glyphicon glyphicon-remove"></span> Cancel
							</button></a>
					</div>
				</div>
			</div>
		</c:when>
	</c:choose>
	<br>
	<!--footer-->
	<div class="footer">
		<span style="font-size: 16px; color: #ffff00;">4th
			International Conference on Green Technology and Sustainable
			Development&nbsp;&nbsp; <br /> HCMC University of Technology and
			Education <br /> Add: No 1 Vo Van Ngan Street, Linh Chieu Ward, Thu
			Duc District, Ho Chi Minh City <br /> Tel: (+84.8) 37 221 223 - Ext:
			8161 or 8443 <br /> E-mail: gtsd2018@hcmute.edu.vn <br />
		</span> <br />
	</div>
</body>
</html>