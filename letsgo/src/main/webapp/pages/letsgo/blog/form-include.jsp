<%@ page contentType="text/html;charset=UTF-8" %>


<link href="<c:url value="/utils/bootstrap-fileupload/fileinput.css" />" rel="stylesheet" type="text/css"  />
<script src="<c:url value="/utils/bootstrap-fileupload/fileinput.js" />"></script>
<script href="<c:url value="/utils/bootstrap-fileupload/fileinput_locale_zh.js" />"></script>
<div class="content-message" style="">
		<script type="text/javascript">
			$(function(){/* 初始化值 */
				$("#blogBlong").val("${blog.blogBlong}");
				$("#blogBlong").trigger("chosen:updated");
				$("#radChl${blog.type}").attr("checked","checked");
			});
		</script>
		<div style="padding:5px 10px;height:100%">
			<div>
				<div class="form-group">
					<input id="blogImg" type="file" name="files" multiple="multiple"  data-overwrite-initial="false" data-min-file-count="2">
				</div>
			</div>
			文章标题 &nbsp;
			<div style="">
				<select class="chzn-select-deselect" id="blogBlong" name="blogBlong" style="width: 80px; float:left;"
							data-placeholder="Choose a country...">
						<option value="1">原创</option>
						<option value="2">转载</option>
						<option value="3">翻译</option>
				</select>
				<input type="text" class="form-control" style="" id="blogTitle" name="title" value="${blog.title }" placeholder="标题">
			</div>
			<br>
			文章内容
			<textarea rows="5" id="blogContent" name="content"cols="5" value="${blog.content }" hidden="hidden"></textarea>
			<div style="width:100%;height:500px;  overflow:scroll;">
			    <script id="editor" type="text/plain" style="width:1050px;height:100%; ">
					${blog.content}
				</script>
			</div>
			<br>
			文章分类
			<div class="radioBox">
				<input type='radio' name='type' id='radChl1' value='1' /><label for='radChl1'>移动开发</label> &nbsp;&nbsp;
				<input type='radio' name='type' id='radChl2' value='2' /><label for='radChl2'>Web前端</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl3' value='3' /><label for='radChl3'>JAVA</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl4' value='4' /><label for='radChl4'>架构设计</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl5' value='5' /><label for='radChl5'>编程语言</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl6' value='6' /><label for='radChl6'>互联网</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl7' value='7' /><label for='radChl7'>数据库</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl8' value='8' /><label for='radChl8'>系统运维</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl9' value='9' /><label for='radChl9'>云计算</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl10' value='10' /><label for='radChl10'>生活</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl11' value='11' /><label for='radChl11'>综合</label>&nbsp;&nbsp;
			</div>
			<br>
			<div class="contact-but">
				<input name="blogId" type="hidden" value="${blog.blogId }"/>
				<input name="status" type="hidden" value="${blog.status }"/>
				<input name="zanNum" type="hidden" value="${blog.zanNum }"/>
				<input name="createDate" type="hidden" value='<fmt:formatDate value="${blog.createDate }"/>'/>
				<input name="commentNum" type="hidden" value="${blog.commentNum }"/>
				<input name="userId" type="hidden" value="${blog.userId }"/>
				<input type="submit" onclick="blogSubmit()" value="发表文章" class="btn btn-primary" />
				<input type="submit" value="保存草稿" class="btn btn-primary" />
				<input type="submit" value="取消" class="btn btn-default" />
			</div>

		</div>
	</div>
	<script>
            $("#blogImg").fileinput({
                language: 'zh',
                uploadUrl: "${ctx}/blog/uploadImg", // you must set a valid URL here else you will get an error
                allowedFileExtensions : ['jpg', 'png','gif'],
                overwriteInitial: false,
                showUpload: true,
                showCaption: false,
                showRemove: false,
                maxFileSize: 1000,
				maxFilesNum: 10,
                //allowedFileTypes: ['image', 'video', 'flash'],
                slugCallback: function(filename) {
                    return filename.replace('(', '_').replace(']', '_');
                }
            });


	</script>