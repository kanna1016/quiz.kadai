<!doctype html>
<html>
    <head>
    </head>
    <body>
        <p>edit</p>
        @foreach ($questions as $question)
            <div>
                {{$question->text}}
                <ul style="display:none">
                    @foreach ($question->answers as $answer)
                    <li>{{$answer->text}}</li>
                    @endforeach
                </ul>
            </div>        
        @endforeach
    </body>
</html>
