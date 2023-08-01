<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
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
        $list = Category::orderBy('position', 'ASC')->get();
        return view('admincp.category.form', compact('list'));
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
                'title' => 'Tên danh mục',
                'slug' => 'Đường dẫn',
                'description' => 'Mô tả danh mục',
                'status' => 'Trạng thái'
            ]
        );
        $category = new Category();
        $category->title = $data['title'];
        $category->slug = $data['slug'];
        $category->description = $data['description'];
        $category->status = $data['status'];
        $category->save();
        return redirect()->back()->with('status', 'Thêm danh mục phim thành công');
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
        $category = Category::find($id);
        $list = Category::orderBy('position', 'ASC')->get();
        return view('admincp.category.form', compact('list', 'category'));
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
                // 'description' => 'required|string|max:255',
                'status' => 'required'
            ],
            //Thiết lập câu tiếng việt báo lỗi
            [
                'required' => ':attribute không được để trống',
                'min' => ':attribute có độ dài ít nhất :min kí tự',
                'max' => ':attribute có độ dài tối đa :max kí tự',
            ],
            [
                'title' => 'Tên danh mục',
                'slug' => 'Đường dẫn',
                // 'description' => 'Mô tả danh mục',
                'status' => 'Trạng thái'
            ]
        );
        $category = Category::find($id);
        $category->title = $data['title'];
        $category->slug = $data['slug'];
        $category->description = $data['description'];
        $category->status = $data['status'];
        $category->save();
        return redirect()->back()->with('status', 'Sửa danh mục phim thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Category::find($id)->delete();
        //làm thêm xóa danh mục xóa luôn film và tập film
        return redirect()->back()->with('status', 'Xóa danh mục phim thành công');
    }
    //sắp xếp thứ tự hiển thị danh mục
    public function resorting(Request  $request)
    {
        $data = $request->all();

        foreach ($data['array_id'] as $key => $value) {
            $category = Category::find($value);
            $category->position = $key;
            $category->save();
        }
    }
}
