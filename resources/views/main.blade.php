
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
  <script src="/js/main.js?upd=20210309"></script>

  <div style="position:relative">
    <div class="maru" style="position:fixed;top:50%;left:50%; -webkit-transform : translate(-50%,-50%);transform : translate(-50%,-50%);display:none">
      <img src ="/images/maru.png">
    </div>
    <div class="batu" style="position:fixed;top:50%;left:50%; -webkit-transform : translate(-50%,-50%);transform : translate(-50%,-50%);display:none">
      <img src ="/images/batu.png">
    </div>
  </div>
  
  @foreach ($questions as $a => $question)
  <div class="ques ques-{{$a}}">
    <h1 class="headline">第{{$a+1}}問</h1>

    <p>{{$question->text}}</p>

    <table border="1" align="center">
    
        @foreach($question->answers as $b => $answer)
        
          <tr class="clickable" data-answer_id="{{$answer->id}}">
              <th>{{$b+1}}</th><th>{{$answer->text}}</th>
          </tr>
          
        @endforeach
        </div>
    </table>
    
    </div>
    
  @endforeach
  <button class="next" style="display:none">次へ</button>
  <button class="goResult" style="display:none">結果</button>

  <div class=result style="display:none">
    <h1 class="headline">結果</h1>

    <p>{{$a+1}}問中</p>
    <p id="tenn_area"></p>

    <a href="/top"><button>トップへ</button></a>
  </div>
</body>
</html>