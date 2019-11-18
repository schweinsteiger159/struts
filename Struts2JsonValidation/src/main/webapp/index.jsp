<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    </head>
    <body>
        <h1>Hello World!</h1><a href="login.jsp">login</a><br/>
        <input type="text" />
        <input type="number" />
        <button type="button" id="btn-submit">submit</button>
        <h1 class="name">null</h1>
        <h1 class="age">null</h1>
        <script>
        $(document).ready(function(){
        	$("#btn-submit").click(function(){
        		console.log("click");
        		var name = $("input[type=text]").val();
        		var age = $("input[type=number]").val();
        		var obj = {
        				name: name, 
        				age: age
        			};
                var json = JSON.stringify(obj);
                console.log(json);
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json",
                    url: "post-json",
//                    data: "{\"user\":"+JSON.stringify(obj)+",\"struts\":{\"enableJSONValidation\":true}}",
                    data: "{\"user\":" + JSON.stringify(obj) + "}",
                    success: function(resp) {
                        console.log(resp);
                        $(".name").text(resp.user.name);
                        $(".age").text(resp.user.age);
                    }
                });
        	})
        })
            
        </script>
    </body>
</html>
