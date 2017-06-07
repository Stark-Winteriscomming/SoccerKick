<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
</head>
<body>
	<button id="btn1">button</button>
	<button id="btn2">button2</button>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script>
    $('#btn1').on('click', function(){
      $.ajax({
        url : 'http://172.16.13.19:8088/api/get',
        type : 'get',
        dataType : 'json',
        success : function(jsonObj){
        	var items = jsonObj.items;
        	for(i in items){
        		console.log(items[i].title);
        	}
        }
      })
    })
    
    var params="soccer"; 
    var url = "https://openapi.naver.com/v1/search/news.json";
    $('#btn2').on('click', function(){
      $.ajax({
        url : url,
        type : 'get',
        data : 'query=' + params,
        dataType : 'json',
        beforeSend : function(xhr){
            xhr.setRequestHeader("X-Naver-Client-Id", "33LMl0JgAo0yy9hGL4Zk");
            xhr.setRequestHeader("X-Naver-Client-Secret","21TsOqNdqW");
        },
        success : function(data){
        	alert(data);
        }
      });
    })
  </script>
</body>
</html>
