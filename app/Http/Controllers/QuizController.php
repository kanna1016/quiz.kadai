<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;
use App\Models\Answer;

class QuizController extends Controller
{
    public function top()
    {
        return view("top");
    }

    public function main()
    {
        $questions = Question::with("answers")->inRandomOrder()->take(10)->get();

        return view("main",["questions"=>$questions]);
    }

    public function result()
    {
        return view("result");
    }

    public function getAnswers($answer_id)
    {
        return Answer::where("id","=",$answer_id)->first();
    }
}
