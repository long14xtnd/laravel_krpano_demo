<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Country;

class CountryController extends Controller
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
        $list = Country::all();
        return view('admincp.country.form', compact('list'));
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
                'title' => 'Tên quốc gia',
                'slug' => 'Đường dẫn',
                'description' => 'Mô tả quốc gia',
                'status' => 'Trạng thái'
            ]
        );
        $country = new Country();
        $country->title = $data['title'];
        $country->slug = $data['title'];
        $country->description = $data['description'];
        $country->status = $data['status'];
        $country->save();
        return redirect()->back()->with('status', 'Thêm quốc gia phim thành công');
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
        $country = Country::find($id);
        $list = Country::all();
        return view('admincp.country.form', compact('list', 'country'));
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
                'title' => 'Tên quốc gia',
                'slug' => 'Đường dẫn',
                'description' => 'Mô tả quốc gia',
                'status' => 'Trạng thái'
            ]
        );
        $country = Country::find($id);
        $country->title = $data['title'];
        $country->slug = $data['title'];
        $country->description = $data['description'];
        $country->status = $data['status'];
        $country->save();
        return redirect()->back()->with('status', 'Cập nhật quốc gia phim thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Country::find($id)->delete();
        return redirect()->back()->with('status', 'Xóa quốc gia phim thành công');
    }
}
