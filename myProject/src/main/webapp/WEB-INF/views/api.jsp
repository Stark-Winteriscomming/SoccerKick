<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>

<style>
li {
	color: gray;
	margin-top: 10px;
}

a {
	color: black;
	text-decoration: none !important;
}
</style>
<link href="/resources/css/button.arrow.css" rel="stylesheet">
</head>
<body>

	<div class="content">
		<ul class="news-list">
		</ul>
	</div>
	<button class="nav" id="left">left</button>
	<button class="nav" id="right">right</button>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script>
	//inital value
	var checkNum = 1;
	// 
	var maxNum = 3;
	
      $.ajax({
        url : 'http://172.16.13.19:8088/api/get',
        type : 'get',
        dataType : 'json',
        success : function(jsonObj){
        	var items = jsonObj.items;
        	for(i in items){
        		$('.news-list').append('<li>'+ '<a target="_blank" href=' + items[i].originallink +'>'+ items[i].title + '</a>' +'</li>')
//         		items[i].originallink
//         		console.log(items[i].title);
        	}
        	var list = $('.news-list li');
        	for(var i=0; i<list.length; i++){
				if(i < 5){
					$(list[i]).show();
				}
				else{
					$(list[i]).hide();
				}
			}
        }
      })
    
    $('.nav').on('click', function(){
    	if(this.id == 'right') checkNum++;
    	else if(this.id == 'left') checkNum--;
    	if(checkNum > maxNum) checkNum = 1;
    	else if(checkNum < 1) checkNum = maxNum;
    	console.log(checkNum);
//     	$('ul li:nth-child(n+)').css('color','green');
		var list = $('.news-list li');
		if(checkNum == 1){
			for(var i=0; i<list.length; i++){
				if(i < 5){
					$(list[i]).show();
				}
				else{
					$(list[i]).hide();
				}
			}			
		}
		else if(checkNum == 2){
			for(var i=0; i<list.length; i++){
				if(i >= 5 && i < 10){
					$(list[i]).show();
				}
				else{
					$(list[i]).hide();
				}
			}
		}
		else if(checkNum == 3){
			for(var i=0; i<list.length; i++){
				if(i >= 10 && i < 15){
					$(list[i]).show();
				}
				else{
					$(list[i]).hide();
				}
			}
		}

    })
  </script>
</body>
</html>
