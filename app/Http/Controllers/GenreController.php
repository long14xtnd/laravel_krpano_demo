<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Genre;

class GenreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $list = Genre::all();
        return view('admincp.genre.form', compact('list'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $data = $request->all();
        $data = $request->validate(
            [
                'title' => 'required|string|max:255',
                'slug' => 'required|string|max:255',
                'description' => 'required|string|max:255',
                'status' => 'required'
            ],
            //Thiết lập câu tiếng việt báo lỗi
            [
                'required' => ':attribute không được để trống',
                'min' => ':attribute có độ dài ít nhất :min kí tự',
                'max' => ':attribute có độ dài tối đa :max kí tự',
            ],
            [
                'title' => 'Tên thể loại',
                'slug' => 'Đường dẫn',
                'description' => 'Mô tả thể loại',
                'status' => 'Trạng thái'
            ]
        );
        $genre = new Genre();
        $genre->title = $data['title'];
        $genre->slug = $data['slug'];
        $genre->description = $data['description'];
        $genre->status = $data['status'];
        $genre->save();
        return redirect()->back()->with('status', 'Thêm thể loại phim thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $genre = Genre::find($id);
        $list = Genre::all();
        return view('admincp.genre.form', compact('list', 'genre'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // $data = $request->all();
      
        $data = $request->validate(
            [
                'title' => 'required|string|max:255',
                'slug' => 'required|string|max:255',
                'description' => 'required|string|max:255',
                'status' => 'required'
            ],
            //Thiết lập câu tiếng việt báo lỗi
            [
                'required' => ':attribute không được để trống',
                'min' => ':attribute có độ dài ít nhất :min kí tự',
                'max' => ':attribute có độ dài tối đa :max kí tự',
            ],
            [
                'title' => 'Tên thể loại',
                'slug' => 'Đường dẫn',
                'description' => 'Mô tả thể loại',
                'status' => 'Trạng thái'
            ]
        );
        $genre = Genre::find($id);
        $genre->title = $data['title'];
        $genre->slug = $data['slug'];
        $genre->description = $data['description'];
        $genre->status = $data['status'];
        $genre->save();
        return redirect()->back()->with('status', 'Cập nhật thể loại phim thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Genre::find($id)->delete();
        return redirect()->back()->with('status', 'Xóa thể loại phim thành công');
    }
}
