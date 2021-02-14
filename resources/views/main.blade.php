<!doctype html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
  <script src="/js/main.js"></script>

    <p>main</p>
    <button id="previous">前へ</button>
    <button id="next">次へ</button>
    @foreach($questions as $index => $question)
        <div class="ques ques-{{$index}}">
            <p>{{$question->text}}</p>
            <p>
                <ul>
                    @foreach($question->answers as $answer)
                    <li>{{$answer->text}}</li>
                    @endforeach
                </ul>
            </p>
        </div>
    @endforeach
</body>
</html>
