<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglib.jsp" %>

<div class="content-message" style="">
		<script type="text/javascript">
			$(function(){/* 初始化值 */
				$("#radChl${photo.type}").attr("checked","checked");
			});
		</script>
		<div style="padding:5px 10px;height:100%">
			图片标题 &nbsp;
			<div style="">
				<input type="text" class="form-control" style="" id="photoTitle" name="photoTitle" value="${photo.photoTitle }" placeholder="标题">
			</div>
			<br>
			图片内容
			<div style="">
				<textarea rows="5" id="photoContent" name="photoContent" class="form-control" cols="100%" value="${photo.photoContent }" ></textarea>
			</div>
			<br>
			上传
			<div style="width:100%">
				<input type="file" name="photoFile"/>
			</div>
			<br>
			图片分类
			<div class="radioBox">
				<input type='radio' name='type' id='radChl1' value='1' /><label for='radChl1'>美景</label> &nbsp;&nbsp;
				<input type='radio' name='type' id='radChl2' value='2' /><label for='radChl2'>人物</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl3' value='3' /><label for='radChl3'>物品</label>&nbsp;&nbsp;
				<input type='radio' name='type' id='radChl4' value='4' /><label for='radChl4'>其他</label>&nbsp;&nbsp;
			</div>
			<br>
			<div class="contact-but">
				<input name="photoId" type="hidden" value="${photo.photoId }"/>
				<input name="createDate" type="hidden" value='<fmt:formatDate value="${photo.createDate }"/>'/>
				<input name="userId" type="hidden" value="${photo.userId }"/>
				<input type="submit" value="发表文章" class="btn btn-primary" />
				<input type="button" value="取消" class="btn btn-default" /> 
			</div>
			
		</div>
	</div>