<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="/include/header.jsp"%>
<section class="page-section">
	<div class="container">

		<button type="button" class="btn btn-dark align-middle"
			id="insertModalBtn">신규 추가</button>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">사번</th>
					<th scope="col">이름</th>
					<th scope="col">이메일</th>
					<th scope="col">입사일</th>
					<th scope="col">급여</th>
					<th scope="col">부서명</th>
					<th scope="col">업무명</th>
				</tr>
			</thead>
			<tbody>
				<!-- c:if , c:choose  ..
		  	when: test = 조건1
		  	when: test = 조건2
		  	otherwise: = else
		  	
		  	empty:리스트가 비어있거나 null인지
		  -->

				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="7" class="text-center">데이터가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="vo" varStatus="i">
							<tr>
								<td>${vo.employee_id }</td>
								<td>${vo.name }</td>
								<td>${vo.email }</td>
								<td>${vo.hire_date }</td>
								<td>${vo.salary }</td>
								<td>${vo.department_name }</td>
								<td>${vo.job_title }</td>
								<td><a onclick="updateCus(${i.index+1},${vo.employee_id});"
									class="btn btn-secondary">수정</a></td>
								<td><a onclick="deleteCus(${vo.employee_id});"
									class="btn btn-danger">삭제</a></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>

			</tbody>
		</table>

	</div>
	<script type="text/javascript">
	function updateCus(idx , employee_id) {
		console.log(idx + " : " + employee_id);
		var employee_id = $('table tr:eq('+ idx+') td:eq(0)').text();
		var name = $('table tr:eq('+ idx+') td:eq(1)').text();
		var email = $('table tr:eq('+ idx+') td:eq(2)').text();
		var hire_date = $('table tr:eq('+ idx+') td:eq(3)').text();
		console.log(employee_id + " " + name + " " + email + " " + hire_date );
		$('#updateModal input[name=employee_id]').val(employee_id);
		$('#updateModal input[name=name]').val(name);
		$('#updateModal input[name=email]').val(email);
		$('#updateModal input[name=hire_date]').val(hire_date);
		$('#updateModal input[name=salary][value=' + salary +']').click();
		$('#updateModal').modal('show');
		
	}

	function deleteCus(customer_id) {
		if(confirm('정말 삭제 하시겠습니까?')){
			location.href='delete.cu?employee_id=' + customer_id;
		}
	}
</section>



<%@ include file="/include/footer.jsp"%>
</html>