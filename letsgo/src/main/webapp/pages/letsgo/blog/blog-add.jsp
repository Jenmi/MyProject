<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>博客-新增</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
	<%@ include file="/commons/taglib.jsp" %>
	<link rel="stylesheet" href="<c:url value='/css/hippo-off-canvas.css'/>"  type="text/css">
	<link rel="stylesheet" href="<c:url value='/js/owl-carousel/owl.carousel.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/owl-carousel/owl.theme.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/owl-carousel/owl.transitions.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/rs-plugin/css/settings.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/flexslider/flexslider.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/isotope/isotope.css'/>">
	<link rel="stylesheet" href="<c:url value='/css/jquery-ui.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/magnific-popup/magnific-popup.css'/>">
	<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
	<link href='<c:url value="/style/bootstrap/bootstrap-datepicker3.min.css"/>' rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="<c:url value='/css/icomoon/style.css'/>" type="text/css">
	<link rel="stylesheet" href="<c:url value='/font-awesome/css/font-awesome.min.css'/>" type="text/css">
	<!-- SKIN -->
	<link rel="stylesheet" href="<c:url value='/css/color-scheme/default-black.css'/>" type="text/css">
	<script src="<c:url value='/js/owl-carousel/owl.carousel.min.js'/>"></script>
	<script src="<c:url value='/js/jflickrfeed.min.js'/>"></script>
	<script src="<c:url value='/js/rs-plugin/js/jquery.themepunch.tools.min.js'/>"></script>	
	<script src="<c:url value='/js/rs-plugin/js/jquery.themepunch.revolution.min.js'/>"></script>
	<script src="<c:url value='/js/tweecool.js'/>"></script>
	<script src="<c:url value='/js/flexslider/jquery.flexslider.js'/>"></script>
	<script src="<c:url value='/js/jquery.appear.js'/>"></script>
	<script src="<c:url value='/js/jquery.sticky.js'/>"></script>
	<script src="<c:url value='/js/jquery.countdown.min.js'/>"></script>
	<script src="<c:url value='/js/magnific-popup/jquery.magnific-popup.min.js'/>"></script>
	<script src="<c:url value='/js/flexslider/jquery.flexslider.js'/>"></script>
	<script src="<c:url value='/js/jquery-ui.js'/>"></script>




<link href="<c:url value="/style/home/style.css"/>" rel='stylesheet' type='text/css' />
<link href="<c:url value="/style/home/home.css"/>" rel='stylesheet' type='text/css' />

<!-- base 包 -->
<!-- 当滑轮欢动触发的事件 -->
<script src="<c:url value="/scripts/home/posfixed.js"/>"></script>
<link href="<c:url value="/style/blog/blog.css"/>" rel="stylesheet" type="text/css" media="all">
<script src="<c:url value="/scripts/blog/blog.js"/>"></script>
<script src="<c:url value="/utils/ueditor/ueditor.config.js"/>"></script>
<script src="<c:url value="/utils/ueditor/ueditor.all.js"/>"> </script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/utils/ueditor/lang/zh-cn/zh-cn.js"/>"></script>
<script type="text/javascript">
var editor = new UE.ui.Editor({
	//initialFrameHeight:300
	//这里可以选择自己需要的工具按钮名称,此处仅选择如下五个
		  toolbars:[
         ['fullscreen', 'source', '|', 'undo', 'redo', '|',
             'bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch','autotypeset','blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist','selectall', 'cleardoc', '|',
             'rowspacingtop', 'rowspacingbottom','lineheight','|',
             'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
             'directionalityltr', 'directionalityrtl', 'indent', '|',
             'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|','touppercase','tolowercase','|',
             'link', 'unlink', 'anchor', '|', 'imagenone', 'imageleft', 'imageright','imagecenter', '|',
             'insertimage', 'emotion','scrawl', 'insertvideo','music','attachment', 'map', 'gmap', 'insertframe','highlightcode','webapp','pagebreak','template','background', '|',
             'horizontal', 'date', 'time', 'spechars','snapscreen', 'wordimage', '|',
             'inserttable', 'deletetable', 'insertparagraphbeforetable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'mergeright', 'mergedown', 'splittocells', 'splittorows', 'splittocols', '|',
             'print', 'preview', 'searchreplace','help']
     ]
     //focus时自动清空初始化时的内容
     //autoClearinitialContent:true,
     //关闭字数统计
    // wordCount:false,
     //关闭elementPath
     //elementPathEnabled:false
     //更多其他参数，请参考editor_config.js中的配置项
});
editor.render("editor");
	$(function(){
		 $(".chzn-select-deselect").chosen({allow_single_deselect:false});
	 	/* $("#scroll").posfixed({
			distance:1,
			pos:"top",
			type:"while",
			hide:false,
			voffset:100
		});   */
	});
	function blogSubmit(){
		$("#blogContent").val(UE.getEditor('editor').getContent());
		$("#blogForm").submit();
	}
</script>
</head>
<body class="" style="background-color: rgba(0, 0, 0, 0.50);" >
	
	<div class="blog-backimg" style=" width:100%;height:100%;position: fixed; z-index:-1"></div>
	<!-- header -->
	<%@ include file="../head.jsp" %>
	<div class="container"  style="height:1024px;">
	<%@ include file="blog-head.jsp" %>
	<!-- 内容 -->
	<form action="${ctx }/blog/doadd" id="blogForm" method="POST" enctype="multipart/form-data">
		<%@ include file="form-include.jsp" %>
	</form>
	<script type="text/javascript">
	//实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent(){
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
</script>
</div>
</body>
</html>