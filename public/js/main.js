$(function(){
    let ques = 0;

    $('#previous').click(function(){
        ques--;
        show();
    });
    
    $('#next').click(function(){
        ques++;
        show();
    });

    show();

    function show(){
        $('.ques').hide();
        $('.ques.ques-'+ques).show();
    }
})