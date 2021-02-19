var z = 99;
$(function(){

    var a = 0;
    var b = "test";
    var c = true;
    var d = function(){

    };
    var f = {name:"kanna",sex:"female",age:19};
    var g = {name:"shinichi",sex:"man",age:19};
    var h = {name:"isamu",sex:"man",age:45};
    var pname = "name";
    h[paname];

    var i = [f,g,h,f];

    $("#close").click(function(){
        $("#otya").toggle();
        alert(b);
        var h = "nakami";
    });

    $("#second").click(function(){
        // i.forEach(function(person){
        //     alert(person.name);
        // });

        for(j=0;j<i.length;j++){
            var person = i[j];
            alert(person.name);
        }
    });
});
