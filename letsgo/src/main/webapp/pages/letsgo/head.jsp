<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header-wrap">
		<!-- HEADER -->
		<header id="header-main">
			<div class="container">
				<div class="navbar yamm navbar-default">
					<div class="navbar-header">
						<button type="button" data-toggle="collapse" data-target="#navbar-collapse-1" class="navbar-toggle">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a href="${ctx}/home" class="navbar-brand"><img src="<c:url value='/images/basic/JENMI.png'/>" width="40" alt=""/></a>
					</div>

					<!-- SEARCH -->
					<div class="header-x pull-right">
						<div class="s-search">
							<div class="ss-trigger"><i class="icon-search2"></i></div>
							<div class="ss-content">
								<span class="ss-close icon-cross2"></span>
								<div class="ssc-inner">
									<form>
										<input type="text" placeholder="Type Search text here...">
										<button type="submit"><i class="icon-search2"></i></button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<div id="navbar-collapse-1" class="navbar-collapse collapse navbar-right">
						<ul class="nav navbar-nav">
							<li class="page-scroll"><a href="${ctx}/">主页</a></li>
							<li class="page-scroll"><a href="${ctx}/blog">博客</a></li>
							<li class="page-scroll"><a href="${ctx}/photo">照片</a></li>
							<li class="page-scroll"><a href="#6">项目</a></li>
							<li class="page-scroll"><a href="#4">个人爱好</a></li>
							<li class="page-scroll"><a href="#1">关于我</a></li>
							<li class="page-scroll"><a href="#7">联系我</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
	</div>
		