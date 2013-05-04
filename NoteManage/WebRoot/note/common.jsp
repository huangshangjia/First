<%
	String path = request.getContextPath();
%>
<meta http-equiv="X-UA-Compatible" content="IE=8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" media="screen,projection" href="<%=path %>/note/css/style.css" />
<script type="text/javascript" src="<%=path %>/note/js/lib/jquery-1.7.1.min.js" ></script>
<script type="text/javascript" src="<%=path %>/note/js/lib/jquery-ui-1.8.17.custom.min.js" ></script>
<script type="text/javascript" src="<%=path %>/note/js/lib/json2.js"></script>
<script type="text/javascript" src="<%=path %>/note/js/lib/log4javascript.js"></script>
<script type="text/javascript" src="<%=path %>/note/js/lib/md5.js"></script>
<script type="text/javascript" >
	var log = log4javascript.getDefaultLogger();  
    //var log = log4javascript.getNullLogger();
</script>