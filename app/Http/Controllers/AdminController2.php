<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;

class AdminController2 extends Controller
{
    public function edit2(){
        $questions = Question::with("answers")->inRandomOrder()->limit(10)->get();
        return $questions;
        // return view ("admin/edit2",["questions" => $questions]);
    }
}
