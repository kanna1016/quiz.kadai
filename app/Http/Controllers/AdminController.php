<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;

class AdminController extends Controller
{
    public function edit()
    {
        $questions = Question::with("answers")->where("id","=",1)->orderBy("id", "desc")->get();

        return view("admin/edit", ["questions" => $questions]);
    }



}