<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;

class QuizController extends Controller
{
    public function top()
    {
        return view("top");
    }

    public function main()
    {
        return view("main");
    }

    public function result()
    {
        return view("result");
    }
}
