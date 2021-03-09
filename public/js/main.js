$(function(){
    let count = 0;
    var tenn = 0;
    var situation = 1;
    
    $('.next').click(function(){
        count++;
        show();
        $('.maru').hide();
        $('.batu').hide();
        $('.next').hide();
    });

    show();

    function show(){
        $('.ques').hide();
        $('.ques.ques-'+count).show();
        situation = 1;
    }   

    $('.goResult').click(function(){
        $('.ques.ques-'+count).hide();
        $('.goResult').hide();
        $('.maru').hide();
        $('.batu').hide();
        $('.result').show();
        $('#tenn_area').text(tenn+'問正解');
    });

    $('.clickable').click(function(){
        if (situation == 1){
            situation = 2;
            $.ajax({
                url:"/api/getAnswers/"+ $(this).data("answer_id"),
                type:"get",
            })
            .then(function(data){
                        if (data.torf){
                            $('.maru').show();
                            tenn++;
                            if (count == 9){
                                $('.goResult').show();
                            }
                            else{$('.next').show();
                            }
                        } else {
                            $('.batu').show();
                            if (count == 9){
                                $('.goResult').show();
                            }
                            else{$('.next').show();
                            }
                        }
                    },
                    function(){
                        alert("error");
                    }
            );
        }
    });
        
});