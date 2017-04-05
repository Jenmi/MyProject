var editor = new UE.ui.Editor({
 		 toolbars: [
	 	   ['emotion']
	] 
});
function createEditor(masterId,id){
	$("#text-dive"+id).html(''+
		'<div class="replyClass" style="display: block;">'+
	    '	<script id="editorId'+id+'" type="text/plain" style="width:90%;height:100%;"></script>'+
		'   <div>'+
		'    	<div class="">'+
		'			<input type="button" value="确定" class="btn btn-primary"  onclick="saveEditor('+masterId+','+id+')"/>'+
		'			<input type="button" value="取消" onclick="$(\'.replyClass'+id+'\').css(\'display\',\'none\')" class="btn btn-default" />'+
		'	&nbsp;&nbsp;<input type="text" name="content" id="visitName'+id+'" placeholder="您的匿名？" value="" class="placeholder" style="width:200px;">'+
		'	&nbsp;&nbsp;<input type="text" name="content" id="towho'+id+'" placeholder="对谁说？" value="" class="placeholder" style="width:200px;">'+
		'		</div>'+
		'   </div>'+
		'</div>'
	);
	
 	editor.render("editorId"+id);
}
function saveEditor(masterId,id){
	var visitName = $("#visitName"+id).val();
	var toWho = $("#towho"+id).val()
	if(visitName==""){
		visitName == "默认值"+id
	}if(toWho==""){
		
	}
	var content = UE.getEditor('editorId'+id).getContent();
	var comment = new Object();
	comment.bestUp = $("#replay"+id).attr("value");
	comment.blongUp = id;
	comment.content ="<label>"+visitName;
	if(toWho != ''){
		comment.content = comment.content + " to "+toWho;
	}
	comment.content = comment.content +": </label>" + content;
	comment.type=2;
	$.post("/letsgo/blogcomment/"+masterId+"/commentadd",comment,function(data){
		if(data=='false'){
			alert("回复失败！");
		}else{
			$("#text-dive"+id).html('');
			$("#child-content").append("<div>"+comment.content+"</div>");
		}
	})
}
