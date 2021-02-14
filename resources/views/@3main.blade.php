<!doctype html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/css/main.css">
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="/js/main.js"></script>

        <p>main</p>
        <div id="vue">
            <p v-for="question in questions">
                @{{question.text}}
                <p v-for="answer in question.answers">
                    @{{answer.text}}
                </p>
            </p>
        </div>
    </body>
</html>
