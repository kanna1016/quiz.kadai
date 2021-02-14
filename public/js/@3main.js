window.document.addEventListener("DOMContentLoaded", function(){

    const vue = new Vue({
        el : "#vue",
        data : {
            questions : [{text:"",answers:[]}]
        },
        mounted(){
            axios.get('/test')
            .then(result => {
                this.$data.questions = result.data;
            })
            .catch(err => {
                console.log(err);
            });
        }
    });
});
