<script type="text/javascript">
	//跳转页面
	function topage(pageNow){
		$("#currentPage").val( pageNow );
		$("#pageForm").submit();
	}
</script>
<c:if test="${ page.rowCount>0 && page.rowCount>page.rowsDisplayed }">
	<div class="col-md-6">
		<div class="dataTables_paginate paging_simple_numbers" id="page_paginate">
			<ul class="pagination">
				<li class="paginate_button" id="page_home">
					<a href="javascript:;" onclick="topage(1)">首页</a>
				</li>
				
				<c:if test="${ page.pageNow-1<=0 }">
					<li class="paginate_button disabled" id="page_prev">
						<a href="javascript:;">上一页</a>
					</li>
				</c:if>
				<c:if test="${ page.pageNow-1!=0 }">
					<li class="paginate_button" id="page_prev">
						<a href="javascript:;" onclick="topage(${ page.pageNow-1 })">上一页</a>
					</li>
				</c:if>
				
				<!-- 遍历页数 -->
				<c:forEach begin="${ page.pageStart }" end="${ page.pageEnd }" var="currIdx" >
					<c:if test="${ page.pageNow==currIdx }">
						<li class="paginate_button active disabled">
							<a href="javascript:;">${ currIdx }</a>
						</li>
					</c:if>
					<c:if test="${ page.pageNow!=currIdx }">
						<li class="paginate_button">
							<a href="javascript:;" onclick="topage(${ currIdx })">${ currIdx }</a>
						</li>
					</c:if>
				</c:forEach>
				
				<c:if test="${ page.pageNow==page.pageCount }">
					<li class="paginate_button disabled" id="page_next">
						<a href="javascript:;">下一页</a>
					</li>
				</c:if> 
				<c:if test="${ page.pageNow<page.pageCount }">
					<li class="paginate_button" id="page_next">
						<a href="javascript:;" onclick="topage(${ page.pageNow+1 })">下一页</a>
					</li>
				</c:if>
				
				<li class="paginate_button" id="page_last">
					<a href="javascript:;" onclick="topage(${ page.pageCount })">尾页</a>
				</li>
			</ul>
		</div>
	</div>
</c:if>