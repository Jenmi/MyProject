<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<%--bootstrap 上传功能 start--%>
<script src="<c:url value="/scripts/jquery-1.11.0.min.js"/>"></script>
<link href='<c:url value="/css/bootstrap.css"/>' rel='stylesheet' type='text/css' />
<link href="<c:url value="/utils/bootstrap-fileupload/fileinput.css" />" rel='stylesheet' type='text/css'/>
<script src="<c:url value="/utils/bootstrap-fileupload/fileinput.js" />"></script>
<script src="<c:url value="/js/bootstrap.js"/>"></script>
<%--bootstrap 上传功能 end--%>
<body>

<h1>功能测试区</h1>


<%--bootstrap 上传功能 start--%>
<form enctype="multipart/form-data">
<div class="form-group">
    <input id="file-1" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="2">
</div>
</form>

<script type="application/javascript">
    $("#file-1").fileinput({
        language: 'zh',
        uploadUrl: '#', // you must set a valid URL here else you will get an error
        allowedFileExtensions : ['jpg', 'png','gif'],
        overwriteInitial: false,
        showUpload: false,
        showCaption: false,
        showRemove: false,
        maxFileSize: 1000,
        maxFilesNum: 10,
        //allowedFileTypes: ['image', 'video', 'flash'],
        /*slugCallback: function(filename) {
         return filename.replace('(', '_').replace(']', '_');
         }*/
    });
</script>
<%--bootstrap 上传功能 end--%>
</body>



</html>
