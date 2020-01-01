<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS & theme -->
<link rel="stylesheet" href="/www/css/bootstrap.custom.css" >
<link rel="stylesheet" href="/www/css/bootstrap-lux.css" >

    <!-- Font Awesome 5 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <title>bfMainView</title>
	<script type="text/javascript">
		$(function(){
			$('#login').click(function(){
				$(location).attr('href', '/www/login.mr');
			});
		});
	</script>
  </head>

  <body class="bg-primary">
    <jsp:include page="nav.jsp" flush="false" />
    
	<div class="container" id="main">
      <!-- chart -->
    <div class="card mb-3 bg-primary mb-5" id="angry">
		
	  <div class="row">
		<div class="col-6">
		<table class="table table-sm">
  <thead>
    <tr>
      <h4 style="color: aliceblue;text-align: center;">빌보드</h4>	
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
	<tr>
      <th scope="row">4</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
	<tr>
      <th scope="row">5</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
	<tr>
      <th scope="row">5</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
	<tr>
      <th scope="row">5</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
	  	<tr>
      <th scope="row">5</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
	  
  </tbody>
</table>  
		</div>
		<div class="col-6">
		<table class="table table-sm">
  <thead>
    <tr>
      <h4 style="color: aliceblue;text-align: center;">빌보드</h4>	
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
	<tr>
      <th scope="row">4</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
	<tr>
      <th scope="row">5</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
	  	<tr>
      <th scope="row">5</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
	  	<tr>
      <th scope="row">5</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
	  	<tr>
      <th scope="row">5</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
  </tbody>
</table>
		</div>
	  </div>
 	
    </div> 
<!-- Modal -->		
<button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#exampleModal">and more...</button>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">MUSICOLOR</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        로그인이 필요합니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <c:if test="${empty SID}">
        <button type="button" id="login" class="btn btn-primary">로그인</button>
        </c:if>
      </div>
    </div>
  </div>
</div>	
    </div>
	  


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
  </body>
</html>