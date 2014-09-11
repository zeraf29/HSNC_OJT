
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
		border-bottom:1px solid #565656;
		border-right:1px solid #565656;
		float:left;
		display:inline-block;
		text-align : center;
		line-height:20px;
		height:20px;
		/*border-right:1px solid #565656;*/
	}

	.boardList {
		color:black;
		border-bottom:1px solid #565656;
		float:left;
		display:inline-block;
		text-align : center;
		line-height:20px;
		height:20px;
	}
	.boardList.title{
		font-size:20px;
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
		<div class="col-md-12 default_height"></div>
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="row">
				<div class="col-md-4 boardListTitle">
					Title
				</div>
				<div class="col-md-8 boardList title">
					
				</div>
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
</div>



<jsp:include page="common/footer.jsp"/>