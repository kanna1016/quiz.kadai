<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;

class QuizController extends Controller
{
    public function top(){
        return view('top');
    }
    public function main(){
        $questions = Question::with('answers')->get();
        return view('main', ["questions"=>$questions]);
        // return view('main');
    }
    public function result(){
        return view('result');
    }

    public function test(){
        return Question::with('answers')->get();
    }
}
