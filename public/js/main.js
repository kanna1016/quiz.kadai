$(function(){
    let count = 0;
    show();
    

    function show(){
        $('.ques').hide();
        $('.ques.ques-'+count).show();
    }
})