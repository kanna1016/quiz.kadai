
<!doctype html>
<html lang="ja">
<head>
  <meta charset="UTF-8">  
  <link rel="stylesheet" type="text/css" href="/css/main.css">
  <title>問題｜クイズ</title>
</head>
<body>
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
  <script src="/js/main.js"></script>

  @foreach ($questions as $a => $question)
 
    <h1 class="headline">第{{$a+1}}問</h1>

    <p>{{$question->text}}</p>

    <table border="1" align="center">

        @foreach($question->answers as $b => $answer)
          <tr>
              <th>{{$b+1}}</th><th>{{$answer->text}}</th>
          </tr>

        @endforeach
    </table>
 
  @endforeach
</body>
</html>