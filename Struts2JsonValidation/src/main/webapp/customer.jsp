<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
	<h1>List customer</h1>

<table class="borderAll">
    <tr>
        <th>id</th>
        <th>Name</th>
    </tr>
       <tbody class="tbody">
       	
       </tbody>

    </table>
    
<script>
$.ajax({
    type: "GET",
    dataType: "json",
    contentType: "application/json",
    url: "getAll",
    success: function(resp) {
        console.log(resp);
        fillTable(resp.list);
    }
});

function fillTable(p){
	console.log(p)
	var item = "";
	for(var i in p){
		item = item + "<tr><td>"+p[i].customerId+"</td><td>"+p[i].name+"</td></tr>"
	}
	
	$(".tbody").html(item);
}
</script>
</body>
</html>