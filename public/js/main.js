$(function(){
    let count = 0;
    
    $('.next').click(function(){
        count++;
        show();
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
})