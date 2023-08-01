<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Episode;
use Carbon\Carbon;

class EpisodeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list_episode = Episode::with('movie')->orderBy('movie_id', 'DESC')->get();
        // return response()->json($list_episode);
        return view('admincp.episode.index', compact('list_episode'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $list_movie = Movie::orderBy('id', 'DESC')->pluck('title', 'id');
        return view('admincp.episode.form', compact('list_movie'));
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
                'link' => 'required|string|max:500',
                'episode' => 'required',
                'movie_id' => 'required',
            ],
            //Thiết lập câu tiếng việt báo lỗi
            [
                'required' => ':attribute không được để trống',
                'min' => ':attribute có độ dài ít nhất :min kí tự',
                'max' => ':attribute có độ dài tối đa :max kí tự',
            ],
            [
                'movie_id' => 'Vui lòng chọn phim',
                'link' => 'Link phim',
                'episode' => 'Tập phim',

            ]
        );
        // dd($data);
        $ep = new Episode();
        $ep->movie_id = $data['movie_id'];
        $ep->linkphim = $data['link'];
        $ep->episode = $data['episode'];
        $ep->created_at = Carbon::now('Asia/Ho_Chi_Minh');
        $ep->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
        // dd($ep);
        $ep->save();
        return redirect()->back()->with('status', 'Thêm tập phim thành công');
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
        $list_movie = Movie::orderBy('id', 'DESC')->pluck('title', 'id');
        $episode = Episode::find($id);
        return view('admincp.episode.form', compact('episode', 'list_movie'));
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
                'link' => 'required|string|max:500',
                'episode' => 'required',
                'movie_id' => 'required',
            ],
            //Thiết lập câu tiếng việt báo lỗi
            [
                'required' => ':attribute không được để trống',
                'min' => ':attribute có độ dài ít nhất :min kí tự',
                'max' => ':attribute có độ dài tối đa :max kí tự',
            ],
            [
                'movie_id' => 'Vui lòng chọn phim',
                'link' => 'Link phim',
                'episode' => 'Tập phim',

            ]
        );
        $ep =  Episode::find($id);
        $ep->movie_id = $data['movie_id'];
        $ep->linkphim = $data['link'];
        $ep->episode = $data['episode'];
        $ep->created_at = Carbon::now('Asia/Ho_Chi_Minh');
        $ep->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
        $ep->save();
        return redirect()->to('episode')->with('status', 'Cập nhật tập phim thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $episode = Episode::find($id)->delete();
        return redirect()->to('episode')->with('status', 'Xóa tập phim thành công');
    }

    public function select_movie()
    {
        $id = $_GET['id'];
        $movie = Movie::find($id);
        $output = '<option>---Chọn tập phim---</option>';
        if ($movie->thuocphim == 'phimbo') {
            for ($i = 1; $i <= $movie->sotap; $i++) {
                $output .= '<option value="' . $i . '">' . $i . '</option>';
            }
        } else {
            $output .= '<option value="HD">HD</option>
           <option value="FullHD">FullHD</option>
           <option value="Cam">Cam</option>
           <option value="HDCam">HDCam</option>';
        }


        echo $output;
    }
}
