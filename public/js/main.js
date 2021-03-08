$(function(){
    let count = 0;
    
    $('.next').click(function(){
        count++;
        show();
        $('.maru').hide();
        $('.batu').hide();
    });

    show();

    function show(){
        $('.ques').hide();
        $('.ques.ques-'+count).show();
        if (count == 9){
            $('.next').hide();
            $('.result').show();
        }
        else{$('.result').hide();
         }
    }   

    $('.clickable').click(function(){
       $.ajax({
           url:"/api/getAnswers/"+ $(this).data("answer_id"),
           type:"get",
       })
       .then(function(data){
                if (data.torf){
                    $('.maru').show();
                } else {
                    $('.batu').show();
                }
            },
            function(){
                alert("error");
            }
       );
    });
        
});