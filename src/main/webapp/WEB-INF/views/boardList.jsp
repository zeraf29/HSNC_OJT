
<%@ include file="common/header.jsp" %>
<style>
	.default_height{
			line-height:20px;
			height:20px;
		}
	.title{
		font-size:75px;
		font-weight:bold;
		color:#eb0000;
		padding-left:0px;
		padding-right:0px;
	}
	.boardListTitle{
		font-size:20px;
		font-weight:bold;
		color:#eb0000;
		border-bottom:2px solid #565656;
		
	}
	.boardListTitle div{
		float:left;
		display:inline-block;
		text-align : center;
		/*border-right:1px solid #565656;*/
	}
	.boardList{
		font-size:15px;
		font-weight:bold;
		color:black;
		border-bottom:1px solid #565656;
	}
	.boardList div{
		float:left;
		display:inline-block;
		text-align : center;
		/*border-right:1px solid #565656;*/
		cursor:pointer;
	}
	a {
		color : black;
	}
	a:hover{
		color: #428bca;
	}
</style>

</head>
<body>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12 default_height"></div>
		<div class="col-md-12 default_height"></div>
	</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 title text-center">OJT Board</div>
		<div class="col-md-3"></div>
	</div>
	<div class="row">
		<div class="col-md-12 default_height"></div>
	</div>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10 boardListTitle text-center">
			<div class="col-md-1">
				No.
			</div>
			<div class="col-md-6">
				Title
			</div>
			<div class="col-md-2">
				Name
			</div>
			<div class="col-md-1">
				View
			</div>
			<div class="col-md-2">
				Date
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10 text-center boardList">
		<c:forEach var="item" items="${boardList}">
			<a href="./boardView?idx=${item.idx}">
				
		            <div class="col-md-1">
		                ${item.idx}     
		            </div>
		            <div class="col-md-6">
		                ${item.title}     
		            </div>
		            <div class="col-md-2">
		                ${item.userName}     
		            </div>
		            <div class="col-md-1">
		                ${item.view}     
		            </div>
		            <div class="col-md-2">
		                ${item.regdate}     
		            </div>
	        </a>
	    </c:forEach>
	    </div>
	    <div class="col-md-1"></div>
	</div>
</div>



<jsp:include page="common/footer.jsp"/>