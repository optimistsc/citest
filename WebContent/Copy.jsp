<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <% String root= request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 
<script type="text/javascript">

 window.onload=function(){
	alert("Ȯ��");
	document.location.href="";
}

</script>
 -->
 
<script type="text/javascript" src="<%=root%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=root%>/js/bootstrap-select.min.js"></script>
<link href="<%=root%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=root%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
<link href="<%=root%>/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="btn-dropdowns">��ư ��Ӵٿ�</h1>
    </div>
    <p class="lead">��Ӵٿ� �޴��� �۵��Ǵ� ��ư�� ����Ϸ��� <code>.btn-group</code> �ȿ� �װ͵��� �ΰ� ������ �޴� ��ũ���� ���ݴϴ�.</p>

    <div class="bs-callout bs-callout-danger">
      <h4>�÷����� ������</h4>
      <p>��ư ��Ӵٿ��� ��Ʈ��Ʈ���� ���Ե� <a href="javascript/#dropdowns">��Ӵٿ� �÷�����</a> �� �ʿ�� �մϴ�.</p>
    </div>

    <h3 id="btn-dropdowns-single">�ܹ�ư ��Ӵٿ�</h3>
    <p>��� �⺻ ��ũ���� �����Ͽ� ��ư�� ��Ӵٿ� ��۷� �ٲټ���.</p>
    <div class="bs-example">
      <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Default <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </div><!-- /btn-group -->
      <div class="btn-group">
        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Primary <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </div><!-- /btn-group -->
      <div class="btn-group">
        <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">Success <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </div><!-- /btn-group -->
      <div class="btn-group">
        <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">Info <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </div><!-- /btn-group -->
      <div class="btn-group">
        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">Warning <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </div><!-- /btn-group -->
      <div class="btn-group">
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">Danger <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </div><!-- /btn-group -->
    </div>
</body>
</html>