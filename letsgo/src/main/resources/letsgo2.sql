SET SESSION FOREIGN_KEY_CHECKS=0;


/* Create Tables */

-- 博客
CREATE TABLE blog
(
	blog_id int NOT NULL COMMENT '博客id',
	-- 博客标题
	title varchar(1024) COMMENT '标题',
	content varchar(2048) COMMENT '内容',
	-- 参见字典表blog_blong
	-- 博客是否是属于转载
	-- 
	blog_blong int COMMENT '博客属于',
	type int COMMENT '说说类型',
	-- 参见字典表“blog_status”
	status int COMMENT '说说状态',
	zan_num int COMMENT '赞的次数',
	-- 创建时间
	create_date datetime COMMENT '创建时间',
	update_date date COMMENT '修改时间',
	comment_num int COMMENT '评论次数',
	user_id int NOT NULL COMMENT '用户ID',
	PRIMARY KEY (blog_id)
) COMMENT = '博客';


-- blogcomment_atch_relevance
CREATE TABLE blogcomment_atch_relevance
(
	relevance_id int NOT NULL COMMENT '博客和附件关联的id',
	-- 1是
	-- 2否
	is_delete int COMMENT '逻辑删除 ',
	comment_id int NOT NULL COMMENT '评论Id',
	-- 编号，无实际意义
	atch_id int NOT NULL COMMENT '附件ID',
	PRIMARY KEY (relevance_id)
) COMMENT = 'blogcomment_atch_relevance';


-- 附件
CREATE TABLE blog_atch
(
	-- 编号，无实际意义
	atch_id int NOT NULL AUTO_INCREMENT COMMENT '附件ID',
	-- 文件名称（带后缀，无路径）
	org_file_name varchar(128) NOT NULL COMMENT '原始文件名',
	-- 保存在服务器上的文件名，带后缀、带相对路径
	-- 
	server_file_path_name varchar(1024) COMMENT '服务器保存路径文件名',
	-- 附件的相关描述
	description varchar(1024) COMMENT '描述',
	upload_time datetime COMMENT '上传时间',
	-- 上传者员工账号的登录名
	upload_user_name char(32) COMMENT '上传用户名',
	PRIMARY KEY (atch_id)
) COMMENT = '附件';


-- blog_atch_relevance
CREATE TABLE blog_atch_relevance
(
	relevance_id int NOT NULL COMMENT '博客和附件关联的id',
	-- 1是
	-- 2否
	is_delete int COMMENT '逻辑删除 ',
	blog_id int NOT NULL COMMENT '博客id',
	-- 编号，无实际意义
	atch_id int NOT NULL COMMENT '附件ID',
	PRIMARY KEY (relevance_id)
) COMMENT = 'blog_atch_relevance';


-- 博客评论
CREATE TABLE blog_comment
(
	comment_id int NOT NULL COMMENT '评论Id',
	user_id int COMMENT '用户id',
	-- 如果没有用户，则是匿名，则用ip
	anonymous varchar(10) COMMENT '匿名',
	content varchar(1024) COMMENT '评论内容',
	-- 创建时间
	create_date datetime COMMENT '创建时间',
	-- 是否被删除
	-- 1,是
	-- 2，否
	is_delete int COMMENT '是否被删除',
	atch_id int COMMENT '附件id',
	blog_id int NOT NULL COMMENT '博客id',
	-- 字典表“comment_type”
	-- 1是评论
	-- 2是回复
	type int COMMENT '评论类别',
	-- 最初的评论，归属
	best_up int COMMENT '顶级评论',
	blong_up int COMMENT '上级评论',
	-- 评论的顺序
	order_index int COMMENT '评论顺序',
	PRIMARY KEY (comment_id)
) COMMENT = '博客评论';


-- 博客访问者
CREATE TABLE blog_visitor
(
	visit_id int NOT NULL AUTO_INCREMENT COMMENT '访问id',
	-- 访问者ip
	visit_ip varbinary(30) COMMENT '访问者ip',
	login_name varchar(10) COMMENT '登陆者名字',
	login_id int COMMENT 'login_id',
	-- 参见字典表“visit_op”
	-- 1.阅读
	-- 2.赞
	-- 3.反赞
	-- 
	operation int COMMENT '操作',
	blog_id int NOT NULL COMMENT '博客id',
	-- 创建时间
	create_date datetime COMMENT '创建时间',
	PRIMARY KEY (visit_id)
) COMMENT = '博客访问者';


-- 字典
CREATE TABLE dictionary
(
	dictionary_id int NOT NULL AUTO_INCREMENT COMMENT '字典ID',
	-- 选项的名称代码。固定长度，最大32位
	dict_key char(32) COMMENT '字典项目',
	name varchar(256) COMMENT '选项（中文）',
	value smallint COMMENT '值',
	display_order smallint COMMENT '显示顺序',
	-- 0 无效
	-- 1 有效
	-- 
	valid smallint COMMENT '有效',
	PRIMARY KEY (dictionary_id)
) COMMENT = '字典';


-- 主页访问
CREATE TABLE home_visitor
(
	visit_id int NOT NULL AUTO_INCREMENT COMMENT 'visit_id',
	-- 访问者ip
	visit_ip varbinary(30) COMMENT '访问者ip',
	user_id int COMMENT '用户ID',
	login_name varbinary(20) COMMENT 'login_name',
	-- 创建时间
	create_date datetime COMMENT '创建时间',
	-- 参见字典表“visit_op”
	-- 1.阅读
	-- 2.赞
	-- 3.反赞
	-- 
	operation int COMMENT '操作',
	PRIMARY KEY (visit_id)
) COMMENT = '主页访问';


-- leavecomment_atch_relevance
CREATE TABLE leavecomment_atch_relevance
(
	relevance_id int NOT NULL COMMENT '博客和附件关联的id',
	-- 1是
	-- 2否
	is_delete int COMMENT '逻辑删除 ',
	comment_id int NOT NULL COMMENT '评论Id',
	-- 编号，无实际意义
	atch_id int NOT NULL COMMENT '附件ID',
	PRIMARY KEY (relevance_id)
) COMMENT = 'leavecomment_atch_relevance';


-- 附件
CREATE TABLE leave_atch
(
	-- 编号，无实际意义
	atch_id int NOT NULL AUTO_INCREMENT COMMENT '附件ID',
	-- 文件名称（带后缀，无路径）
	org_file_name varchar(128) NOT NULL COMMENT '原始文件名',
	-- 保存在服务器上的文件名，带后缀、带相对路径
	-- 
	server_file_path_name varchar(1024) COMMENT '服务器保存路径文件名',
	-- 附件的相关描述
	description varchar(1024) COMMENT '描述',
	upload_time datetime COMMENT '上传时间',
	-- 上传者员工账号的登录名
	upload_user_name char(32) COMMENT '上传用户名',
	PRIMARY KEY (atch_id)
) COMMENT = '附件';


-- leave_atch_relevance
CREATE TABLE leave_atch_relevance
(
	relevance_id int NOT NULL COMMENT '博客和附件关联的id',
	-- 1是
	-- 2否
	is_delete int COMMENT '逻辑删除 ',
	leave_id int NOT NULL COMMENT '留言id',
	-- 编号，无实际意义
	atch_id int NOT NULL COMMENT '附件ID',
	PRIMARY KEY (relevance_id)
) COMMENT = 'leave_atch_relevance';


-- 留言
CREATE TABLE leave_message
(
	leave_id int NOT NULL COMMENT '留言id',
	-- 如果没有用户，则是匿名，则用ip
	anonymous varchar(10) COMMENT '匿名',
	content varchar(2048) COMMENT '内容',
	-- 创建时间
	create_date datetime COMMENT '创建时间',
	-- 1是
	-- 2否
	is_delete int COMMENT '逻辑删除 ',
	user_id int NOT NULL COMMENT '用户ID',
	PRIMARY KEY (leave_id)
) COMMENT = '留言';


-- 留言评论
CREATE TABLE leave_message_comment
(
	comment_id int NOT NULL COMMENT '评论Id',
	user_id int COMMENT '用户id',
	-- 如果没有用户，则是匿名，则用ip
	anonymous varchar(10) COMMENT '匿名',
	content varchar(1024) COMMENT '评论内容',
	-- 创建时间
	create_date datetime COMMENT '创建时间',
	-- 是否被删除
	-- 1,是
	-- 2，否
	is_delete int COMMENT '是否被删除',
	atch_id int COMMENT '附件id',
	-- 字典表“comment_type”
	-- 1是评论
	-- 2是回复
	type int COMMENT '评论类别',
	leave_id int NOT NULL COMMENT '留言id',
	-- 最初的评论，归属
	best_up int COMMENT '顶级评论',
	blong_up int COMMENT '上级评论',
	-- 评论的顺序
	order_index int COMMENT '评论顺序',
	PRIMARY KEY (comment_id)
) COMMENT = '留言评论';


-- saycomment_atch_relevance
CREATE TABLE saycomment_atch_relevance
(
	relevance_id int NOT NULL COMMENT '博客和附件关联的id',
	-- 1是
	-- 2否
	is_delete int COMMENT '逻辑删除 ',
	comment_id int NOT NULL COMMENT '评论Id',
	-- 编号，无实际意义
	atch_id int NOT NULL COMMENT '附件ID',
	PRIMARY KEY (relevance_id)
) COMMENT = 'saycomment_atch_relevance';


-- 说说
CREATE TABLE saysay
(
	saysay_id int NOT NULL COMMENT '说说id',
	content varchar(2048) COMMENT '内容',
	type int COMMENT '说说类型',
	-- 参见字典表“blog_status”
	status int COMMENT '说说状态',
	zan_num int COMMENT '赞的次数',
	-- 创建时间
	create_date datetime COMMENT '创建时间',
	user_id int NOT NULL COMMENT '用户ID',
	PRIMARY KEY (saysay_id)
) COMMENT = '说说';


-- 说说访问者
CREATE TABLE saysay_visitor
(
	visit_id int NOT NULL AUTO_INCREMENT COMMENT 'visit_id',
	visit_ip varbinary(30) COMMENT '拜访者IP',
	login_name varbinary(20) COMMENT '登陆者名',
	login_id int COMMENT '登陆者id',
	-- 参见字典表“visit_op”
	-- 1.阅读
	-- 2.赞
	-- 3.反赞
	-- 
	operation int COMMENT '操作',
	saysay_id int NOT NULL COMMENT '说说id',
	-- 创建时间
	create_date datetime COMMENT '创建时间',
	PRIMARY KEY (visit_id)
) COMMENT = '说说访问者';


-- 附件
CREATE TABLE say_atch
(
	-- 编号，无实际意义
	atch_id int NOT NULL AUTO_INCREMENT COMMENT '附件ID',
	-- 文件名称（带后缀，无路径）
	org_file_name varchar(128) NOT NULL COMMENT '原始文件名',
	-- 保存在服务器上的文件名，带后缀、带相对路径
	-- 
	server_file_path_name varchar(1024) COMMENT '服务器保存路径文件名',
	-- 附件的相关描述
	description varchar(1024) COMMENT '描述',
	upload_time datetime COMMENT '上传时间',
	-- 上传者员工账号的登录名
	upload_user_name char(32) COMMENT '上传用户名',
	PRIMARY KEY (atch_id)
) COMMENT = '附件';


-- say_atch_relevance
CREATE TABLE say_atch_relevance
(
	relevance_id int NOT NULL COMMENT '博客和附件关联的id',
	-- 1是
	-- 2否
	is_delete int COMMENT '逻辑删除 ',
	saysay_id int NOT NULL COMMENT '说说id',
	-- 编号，无实际意义
	atch_id int NOT NULL COMMENT '附件ID',
	PRIMARY KEY (relevance_id)
) COMMENT = 'say_atch_relevance';


-- 博客评论
CREATE TABLE say_comment
(
	comment_id int NOT NULL COMMENT '评论Id',
	user_id int COMMENT '用户id',
	-- 如果没有用户，则是匿名，则用ip
	anonymous varchar(10) COMMENT '匿名',
	content varchar(1024) COMMENT '评论内容',
	-- 创建时间
	create_date datetime COMMENT '创建时间',
	-- 是否被删除
	-- 1,是
	-- 2，否
	is_delete int COMMENT '是否被删除',
	atch_id int COMMENT '附件id',
	-- 字典表“comment_type”
	-- 1是评论
	-- 2是回复
	type int COMMENT '评论类别',
	saysay_id int NOT NULL COMMENT '说说id',
	-- 最初的评论，归属
	best_up int COMMENT '顶级评论',
	blong_up int COMMENT '上级评论',
	-- 评论的顺序
	order_index int COMMENT '评论顺序',
	PRIMARY KEY (comment_id)
) COMMENT = '博客评论';


-- 职员
CREATE TABLE user
(
	user_id int NOT NULL COMMENT '用户ID',
	login_name char(32) COMMENT '系统用户名',
	-- MD5加密的系统密码
	password char(128) COMMENT '系统密码',
	name_cn varchar(128) COMMENT '中文姓名',
	name_en varchar(128) COMMENT '英文姓名',
	-- 照片的相对地址路径
	photo varchar(1024) COMMENT '照片',
	-- 1 男
	-- 2 女
	sex smallint COMMENT '性别',
	email varchar(512) COMMENT '邮箱',
	-- 邮箱密码，不加密
	email_password varchar(128) COMMENT '邮箱密码',
	phone_number varchar(30) COMMENT '联系电话',
	last_login_ip varchar(24) COMMENT '最后登录IP',
	last_login_time datetime COMMENT '最后登录时间',
	-- 1 有效
	-- 2 禁用，员工离职后务必设置账号禁用
	valid smallint COMMENT '有效',
	revision_count int COMMENT '修订次数',
	last_update_user char(32) COMMENT '最后更新用户',
	last_update_time datetime COMMENT '最后更新时间',
	PRIMARY KEY (user_id)
) COMMENT = '职员';



/* Create Foreign Keys */

ALTER TABLE blog_atch_relevance
	ADD FOREIGN KEY (blog_id)
	REFERENCES blog (blog_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE blog_comment
	ADD FOREIGN KEY (blog_id)
	REFERENCES blog (blog_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE blog_visitor
	ADD FOREIGN KEY (blog_id)
	REFERENCES blog (blog_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE blogcomment_atch_relevance
	ADD FOREIGN KEY (atch_id)
	REFERENCES blog_atch (atch_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE blog_atch_relevance
	ADD FOREIGN KEY (atch_id)
	REFERENCES blog_atch (atch_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE blogcomment_atch_relevance
	ADD FOREIGN KEY (comment_id)
	REFERENCES blog_comment (comment_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE leavecomment_atch_relevance
	ADD FOREIGN KEY (atch_id)
	REFERENCES leave_atch (atch_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE leave_atch_relevance
	ADD FOREIGN KEY (atch_id)
	REFERENCES leave_atch (atch_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE leave_atch_relevance
	ADD FOREIGN KEY (leave_id)
	REFERENCES leave_message (leave_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE leave_message_comment
	ADD FOREIGN KEY (leave_id)
	REFERENCES leave_message (leave_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE leavecomment_atch_relevance
	ADD FOREIGN KEY (comment_id)
	REFERENCES leave_message_comment (comment_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE saysay_visitor
	ADD FOREIGN KEY (saysay_id)
	REFERENCES saysay (saysay_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE say_atch_relevance
	ADD FOREIGN KEY (saysay_id)
	REFERENCES saysay (saysay_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE say_comment
	ADD FOREIGN KEY (saysay_id)
	REFERENCES saysay (saysay_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE saycomment_atch_relevance
	ADD FOREIGN KEY (atch_id)
	REFERENCES say_atch (atch_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE say_atch_relevance
	ADD FOREIGN KEY (atch_id)
	REFERENCES say_atch (atch_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE saycomment_atch_relevance
	ADD FOREIGN KEY (comment_id)
	REFERENCES say_comment (comment_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE blog
	ADD FOREIGN KEY (user_id)
	REFERENCES user (user_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE home_visitor
	ADD FOREIGN KEY (user_id)
	REFERENCES user (user_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE leave_message
	ADD FOREIGN KEY (user_id)
	REFERENCES user (user_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE saysay
	ADD FOREIGN KEY (user_id)
	REFERENCES user (user_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



/* Create Indexes */

CREATE INDEX mt_dictionary_item ON dictionary ();



