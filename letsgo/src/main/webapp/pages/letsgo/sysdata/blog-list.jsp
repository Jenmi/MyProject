<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--   <%@ include file="/commons/taglib.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>HOME</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<script src="<c:url value="/scripts/jquery-1.8.2-min.js"/>"></script>
	<link href='<c:url value="/style/bootstrap/bootstrap.css"/>' rel='stylesheet' type='text/css' />
	<link href="<c:url value="/scripts/bootstrap-table/bootstrap-table.css"/>" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
	<script src="<c:url value="/scripts/bootstrap/bootstrap.js"/>"></script>
	<script src="<c:url value="/scripts/bootstrap-table/bootstrap-table.js"/>" type="text/javascript"></script>
	<script src="<c:url value="/scripts/bootstrap-table/bootstrap-table-export.js"/>" type="text/javascript"></script>
	<link rel="stylesheet" href="<c:url value='/font-awesome/css/font-awesome.min.css'/>" type="text/css">
	<script src="<c:url value="/scripts/bootstrap-table/tableExport/jquery.base64.js"/>" type="text/javascript"></script>
	<script src="<c:url value="/scripts/bootstrap-table/tableExport/tableExport.js"/>"></script>
</head>
<body id="portfolio-wide-four-m">
<div id="main-wrapper">
	<div class="offcanvas-pusher">
		<div class="content-wrapper">
			<div class="outer-wrapper">
			<%@ include file="/pages/letsgo/head.jsp" %>
<!-- PAGE HEADER -->
<div class="page_header">
	<div class="page_header_parallax">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3><span>Blog</span>Lorem ipsum dolor <br>amet iplus</h3>
				</div>
			</div>
		</div>
	</div>
	<div class="bcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="bcrumbs">
						<li><a href="${ctx}/home"><i class="fa fa-home"></i> Home</a></li>
						<li>BLog</li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- INNER CONTENT -->
<div class="inner-content" style="padding:50px 0;">
	<div class="container">
		<div class="row">
			<div class="col-md-12 blog-content">
				<!-- <table id="form" style="width:100%">
					<tr><td>1</td><td>1</td><td>1</td></tr>
				</table> -->
				<table id="reportTable">
				</table>
				<div class="blog-sep"></div>
			</div>
		</div>
	</div>
</div>
<!-- TWEET / SUBSCRIBE -->
<div class="footer-top">
	<div class="container">
		<div class="row">
			<div class="col-md-6 f-tweet">
				<small>Follow<em>Twitter</em></small>
				<div class="tweet-info">
					<div id="tweetcool"></div>
				</div>
			</div>
			<div class="col-md-6 f-subscribe">
				<small>Sign up<em>Newsletter</em></small>
				<form>
					<input placeholder="Search here ..." type="text">
					<button type="submit">Subscribe</button>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- Look Message  -->
    <div class="modal fade" id="lookMessage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header" style="margin-bottom: 20px">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel" ><fmt:message key="inbox.inform"></fmt:message></h4>
	      </div>
	      <div class="modal-body" id="content" style="">
	        	<table class="table table-hover table-striped">
	        		<tr><td>Code<td><td class=""><input name="code" value="" style="width:100%"/></td></tr>
	        		<tr><td>名称<td><td class=""><input name="code" value="" style="width:100%"/></td></tr>
	        		<tr><td>值<td><td class=""><input name="code" value="" style="width:100%"/></td></tr>
	        		<tr><td>内容<td><td class=""><textarea name="code" style="width:100%" ></textarea></td></tr>
	        	</table>
	      </div>
	      <div class="modal-footer">
	       	<button type="button" class="btn btn-primary" onclick="" data-dismiss="modal">确定</button>
	       	<button type="button" class="btn btn-default" onclick="" data-dismiss="modal">取消</button>
	      </div>
	    </div>
	  </div>
	</div>
	</form> 
    <!-- Look Message end -->
</div>
</div> <!-- /.content-wrapper -->
</div> <!-- .offcanvas-pusher -->
</div><!-- /#main-wrapper -->
<!-- Preloader -->
<div id="preloader">
	<div id="status">
		<div class="status-mes"></div>
	</div>
</div>
<script src="<c:url value="/scripts/bootstrap/bootstrap-datepicker.js"/>"></script>
<script src="<c:url value='/js/main.js'/>"></script>
<script src="<c:url value='/js/gmaps/greyscale.js'/>"></script>
<script type="application/javascript" >
	$(function(){
		$(".datepicker").datepicker({
			autoclose: true,//选中之后自动隐藏日期选择框
			clearBtn: true,//清除按钮
			todayBtn: 'linked',//今日按钮
			format: "yyyy-mm-dd",//日期格式
		});
	});

	function zan(blogId){
		$.post("${ctx}/blog/"+blogId+"/good",function(data){
			if(data == 'false'){
				alert("对不起，您已经赞过，请明天再来吧！");
			}else if(data=='true'){
				var num = $("#zanNum"+blogId).text();
				$("#zanNum"+blogId).text(parseInt(num)+1);
			}
		});
	}
	function bad(blogId){
		$.post("${ctx}/blog/"+blogId+"/bad",function(data){
			if(data == 'false'){
				alert("对不起，您已经鄙视过，不好勿喷，请给建议，我将万分感谢！");
			}else if(data=='true'){
				var num = $("#badNum"+blogId).text();
				$("#badNum"+blogId).text(parseInt(num)+1);
			}
		});
	}

	/* http://bootstrap-table.wenzhixin.net.cn/zh-cn/documentation/ 帮助文档 */
	$(function () {
		$('#reportTable').bootstrapTable({
			method: 'get',
			cache: false,
			//height: 400,
			striped: true,
			pagination: true,
			pageSize: 20,
			pageNumber:1,
			pageList: [10, 20, 50, 100, 200, 500],
			search: false,
			remove:true,
			opEdit:true,
			opShow:true,
			showColumns: true,
			showRefresh: false,
			showExport: true,
			exportTypes: ['csv','txt','xml'],
			search: false,
			clickToSelect: true,
			columns: [{field:"email_id",title:"ALL",align:"center",valign:"middle",sortable:"false",checkbox:"true"},{field:"user_email",title:"email",align:"center",valign:"middle",sortable:"true"},{field:"user_company",title:"company",align:"center",valign:"middle",sortable:"true"},{field:"user_dates",title:"date",align:"center",valign:"middle",sortable:"true"},{field:"user_lastlogintime",title:"lastlogintime",align:"center",valign:"middle",sortable:"true"},{field:"user_version",title:"version",align:"center",valign:"middle",sortable:"true"},{field:"user_isv2",title:"isv2",align:"center",valign:"middle",sortable:"true"},{field:"userstatus_usertype",title:"usertype",align:"center",valign:"middle",sortable:"true"},{field:"userstatus_package_id",title:"package_id",align:"center",valign:"middle",sortable:"true"},{field:"userstatus_end_time",title:"end_time",align:"center",valign:"middle",sortable:"true"},{field:"options",title:"options",align:"center",valign:"middle"}],
			data : [{"email_id":"1","user_email":"20dai.rikon@gmail.com","options":"<a href='onclick(this)' class='eidt'>edit</a>","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"email_id":"1","user_email":"20140416@xxxxddffg.com","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"email_id":"2","user_email":"20083matsumoto-hs@polus.co.jp","user_company":"","user_dates":"2014-10-31 13:02:47","user_lastlogintime":"1414726074","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"20.2.n0.5@gmail.com","user_company":"","user_dates":"2014-11-21 11:00:10","user_lastlogintime":"1416564204","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1st.pocket.wars@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"1hourbunko@gmail.com","user_company":"","user_dates":"2014-10-18 07:52:40","user_lastlogintime":"1413618760","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"1chan.723@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"1a2y0a2@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"1@1.com","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"1@1.cn","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"19790220.rie@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1410998738","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"19711216@kamoshita-naoya.jp","user_company":"xxxx","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"19273587@qq.com","user_company":"","user_dates":"2014-12-08 09:03:38","user_lastlogintime":"1418029418","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"19267224@qq.com","user_company":"","user_dates":"2014-10-24 16:00:09","user_lastlogintime":"1411444446","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":"19.rainwater@gmail.com","user_company":"","user_dates":"2014-12-08 16:43:04","user_lastlogintime":"1418056984","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"189836234@qq.com","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"1874560645@qq.comsara2014","user_company":"NULL","user_dates":"2014-12-03 07:25:19","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"18616026485@163.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"1848837120@qq.com","user_company":"NULL","user_dates":"2014-10-20 08:08:59","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"172306759@qq.com","user_company":"","user_dates":"2014-10-30 05:09:21","user_lastlogintime":"1414645761","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"16raryo1@gmail.com","user_company":"PLD","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"16@ko-zu.com","user_company":"","user_dates":"2014-10-28 00:35:48","user_lastlogintime":"1414456548","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"163_hanye@163.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"3","userstatus_package_id":"100012","userstatus_end_time":"1441036800000"},{"user_email":"15652394455@163.com","user_company":"vicky-yang","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1410330193","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":"1522212167@qq.com","user_company":"","user_dates":"2014-12-08 09:03:04","user_lastlogintime":"1418029384","user_version":"1","user_isv2":"0","userstatus_usertype":"2","userstatus_package_id":"100010","userstatus_end_time":"1439045999000"},{"user_email":"14codemail@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1408461794","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"1475_ishi@mail.sofmap.co.jp","user_company":"株式会社ソフマップ","user_dates":"2014-12-04 02:50:15","user_lastlogintime":"1417661415","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1475.ishi@gmail.com","user_company":"","user_dates":"2014-12-04 02:53:04","user_lastlogintime":"1417661584","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1357040404@qq.com","user_company":"dasdsa","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"1342608193@qq.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":"1296bty@gmail.com","user_company":"studio koaa","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1410838384","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"125699954@qq.com","user_company":"TL zhongguomeng","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1408086219","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"125482750@qq.com","user_company":"","user_dates":"2014-10-23 16:00:10","user_lastlogintime":"1411314157","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":"123@789.com","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":"123@456.com","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":"123@234.com","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":"123@123.com","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":"1234zhuxu@163.com","user_company":"asiainfo","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"123123@1.1","user_company":"NULL","user_dates":"2014-11-05 07:13:20","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1228689783@qq.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1407315451","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"1212@11.1","user_company":"NULL","user_dates":"2014-11-05 07:12:40","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"12121@ptengine.com","user_company":"NULL","user_dates":"2014-10-23 13:48:58","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1209910627@qq.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"1209839271@qq.com","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"11n008@yamanashi-eiwa.ac.jp","user_company":"","user_dates":"2014-10-21 14:04:54","user_lastlogintime":"1413872406","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"11ashien@gmail.com","user_company":"","user_dates":"2014-11-21 13:04:00","user_lastlogintime":"1416351979","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"11@11.1","user_company":"NULL","user_dates":"2014-11-19 03:10:40","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1179696697@qq.com","user_company":"yunrui","user_dates":"2014-12-08 15:23:37","user_lastlogintime":"1418052217","user_version":"1","user_isv2":"1","userstatus_usertype":"3","userstatus_package_id":"100011","userstatus_end_time":"1419055650640"},{"user_email":"111@111.1","user_company":"NULL","user_dates":"2014-10-23 12:04:48","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1111@1111.1","user_company":"NULL","user_dates":"2014-10-23 13:09:45","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"10dashin@gmail.com","user_company":"TENDA","user_dates":"2014-11-12 06:42:41","user_lastlogintime":"1415774561","user_version":"0","user_isv2":"0","userstatus_usertype":"2","userstatus_package_id":"100020","userstatus_end_time":"0"},{"user_email":"109da.music@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1408479330","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"103373139@qq.com","user_company":"NULL","user_dates":"2014-10-29 11:24:06","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1033731391775@qq.com","user_company":"NULL","user_dates":"2014-10-29 11:27:41","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1031kara@gmail.com","user_company":"aniwo","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1412251657","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1025432471@qq.com","user_company":"Digitaling","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1406102621","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":"100percentc@gmail.com","user_company":"個人","user_dates":"2014-10-21 14:04:54","user_lastlogintime":"1413650769","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1002025@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"1000trez@gmail.com","user_company":"（仮称）CHEAPFRIEND","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1409492613","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"1000ten@gmail.com","user_company":"株式会社デザインフィル","user_dates":"2014-10-15 00:39:39","user_lastlogintime":"1413333579","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"10000loveandpeace@gmail.com","user_company":"個人","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"1.infobiz@gmail.com","user_company":"","user_dates":"2014-10-31 13:02:46","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"1.9.rainwatar@gmail.com","user_company":"","user_dates":"2014-11-21 13:03:49","user_lastlogintime":"0","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"0da.hasegawa@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"0a0a0a0a99@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1413150772","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"0930s.n0930@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"0918sakai@gmail.com","user_company":"匿名","user_dates":"2014-10-21 14:04:56","user_lastlogintime":"1413870712","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"0814wawa@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"07jman27@gmail.com","user_company":"アクティブメディア株式会社","user_dates":"2014-12-08 02:52:52","user_lastlogintime":"1418007172","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"06l1145@gmail.com","user_company":"","user_dates":"2014-11-10 10:12:49","user_lastlogintime":"1415614369","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"0518sakurako@gmail.com","user_company":"","user_dates":"2014-11-23 20:44:26","user_lastlogintime":"1416775466","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"0409juzo@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1408787759","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"023754023216ruisu@gmail.com","user_company":"","user_dates":"2014-12-08 02:06:37","user_lastlogintime":"1418004396","user_version":"0","user_isv2":"1","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"01@lionhunter.jp","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"010curtain@gmail.com","user_company":"株式会社リホーム","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":"00cc34d5@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1411457187","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":"007xiaopeng@163.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":" yitengqingqiu@yahoo.co.jp","user_company":"個人ユーザーです","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":" tinpan_m@yahoo.co.jp","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1412825366","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" suu_08_02@yahoo.co.jp","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" shinichiro.kitamikado.tm@gmail.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" ptengine_juneikai_central@medical-design.co.jp","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" next.2027.revo@gmail.com","user_company":"","user_dates":"2014-10-21 14:04:46","user_lastlogintime":"1412873616","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":" nakanishi.tomoko@wacom.co.jp","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":" masako.yamazaki@inte.co.jp","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" mail@smooth600.net","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":" kusakabe.shinichi@wacom.co.jp","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1410747435","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"NULL"},{"user_email":" joycekan@wusi.com","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1410876967","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":" joel.palmer@lockpath.com","user_company":"NULL","user_dates":"2014-12-05 17:47:28","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"3","userstatus_package_id":"100011","userstatus_end_time":"1420480048761"},{"user_email":" jaco_test@yahoo.co.jp","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1409899596","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" iwasaki@tym.yppnet.co.jp","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" ivars.prokofjevs@esynergy.lv","user_company":"NULL","user_dates":"2014-11-27 10:27:58","user_lastlogintime":"0","user_version":"1","user_isv2":"1","userstatus_usertype":"3","userstatus_package_id":"100011","userstatus_end_time":"1419762478088"},{"user_email":" info@chiba-satoyama.net","user_company":"特定非営利活動法人ちば里山センター","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"1409021151","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" emily.podhajsky@lockpath.com","user_company":"NULL","user_dates":"2014-12-05 19:52:24","user_lastlogintime":"1417809144","user_version":"1","user_isv2":"0","userstatus_usertype":"3","userstatus_package_id":"100011","userstatus_end_time":"1420480046906"},{"user_email":" chiyono.4656@i.softbank.jp","user_company":"厚木シロコロホルモン焼き千代乃","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" amalsabriyah@gmail.com","user_company":"Tealand Trading LLC","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"1","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100001","userstatus_end_time":"0"},{"user_email":" adfa@d.com","user_company":"NULL","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"},{"user_email":" Toms.Rozentals@csolutions.lv","user_company":"NULL","user_dates":"2014-11-27 10:27:55","user_lastlogintime":"0","user_version":"1","user_isv2":"1","userstatus_usertype":"3","userstatus_package_id":"100011","userstatus_end_time":"1419762476029"},{"user_email":"  support@uraroute.com","user_company":"","user_dates":"2014-10-14 05:20:46","user_lastlogintime":"1413264046","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"0"},{"user_email":" 	hikari_hikaru_feelsogood@yahoo.co.jp","user_company":"","user_dates":"2014-10-13 13:35:51","user_lastlogintime":"0","user_version":"0","user_isv2":"0","userstatus_usertype":"0","userstatus_package_id":"100014","userstatus_end_time":"NULL"}],
			onPageChange: function (size, number) {
				//$("#pageSizeInput").val(size);
				//$("#pageNumberInput").val(number);
				
				//var form = $('#tableForm');
				//form.action= '${base}/showReport';
				//form.submit();
            },
			//onSort: function (name, order) {
           // },
			//formatShowingRows: function (pageFrom, pageTo, totalRows) {
			//	return '';
           // },
			//formatRecordsPerPage: function () {
			//	return '';
          //  },
            formatNoMatches: function(){
            	return '无符合条件的记录';
            }
		});
		$(window).resize(function () {
			$('#reportTable').bootstrapTable('resetView');
		});
		//$('#reportTable').bootstrapTable('remove', {field: 'id', values: ids});
		
		OpBindEvent();	
	})
	/* function OpBindEvent(){
		$(".opEditClass").click(function(){
			//alert($(this).parent().);
			$('#lookMessage').modal('show');
		})
	} */
	function tableEdit(val, id){
		alert(id);
		$("#myModalLabel").text("编辑")
		$('#lookMessage').modal('show');
	}
	function tableAdd(val, id){
		alert(id);
		$("#myModalLabel").text("添加")
		$('#lookMessage').modal('show');
	}
	function tableShow(val, id){
		$("#myModalLabel").text("显示")
		$('#lookMessage').modal('show');
	}
	
</script>

</body>


</html>