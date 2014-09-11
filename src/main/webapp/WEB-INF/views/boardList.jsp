<jsp:include page="common/header.jsp"/>

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
		font-size:35px;
		font-weight:bold;
		color:#eb0000;
		background-color:#565656;
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
		<div class="col-md-2"></div>
		<div class="col-md-8 boardListTitle text-center">
			<c:forEach var="item" items="${boardTitleList}">
	            <div>
	                ${item}     
	            </div>
	        </c:forEach>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>



<jsp:include page="common/footer.jsp"/>