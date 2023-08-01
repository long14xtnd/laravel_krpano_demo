<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Movie_Genre;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Country;
use App\Models\Episode;
use Carbon\Carbon;
use Storage;
use File;

class MovieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list = Movie::with('category', 'movie_genre', 'country', 'genre')->orderBy('id', 'DESC')->get();
        // dd($list);
        // return response()->json($list);

        $path = public_path() . "/json/";
        //        dd($path);
        //kiểm tra xem đường dẫn có phải là thư mục ko nếu chưa tồn tại thì tạo nó ra và cấp quyền thêm sửa xóa trong thư mục đó (0777)
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }
        //mã hóa danh sách phim vừa lấy được và đẩy nó vào file movies.json
        File::put($path . 'movies.json', json_encode($list));

        return view('admincp.movie.index', compact('list'));
    }

    public function update_year(Request $request)
    {
        $data = $request->all();
        $movie = Movie::find($data['id_phim']);
        $movie->year = $data['year'];
        $movie->save();
    }

    public function update_topview(Request $request)
    {
        $data = $request->all();
        $movie = Movie::find($data['id_phim']);
        $movie->topview = $data['topview'];
        $movie->save();
    }

    public function filter_topview(Request $request)
    {
        $data = $request->all();
        $movie = Movie::where('topview', $data['value'])->orderBy('ngaycapnhat', 'DESC')->take(20)->get();
        $output = '';
        foreach ($movie as $key => $mov) {

            if ($mov->resolution == 0) {
                $text = 'HD';
            } elseif ($mov->resolution == 1) {
                $text = 'SD';
            } elseif ($mov->resolution == 2) {
                $text = 'HDCam';
            } elseif ($mov->resolution == 3) {
                $text = 'Cam';
            } elseif ($mov->resolution == 4) {
                $text = 'FullHD';
            } else {
                $text = 'Tralier';
            }
            $output .= '<div class="item">
                              <a href="' . url('phim/' . $mov->slug) . '" title="' . $mov->title . '">
                                 <div class="item-link">
                                    <img src="' . url('uploads/movie/' . $mov->image) . '" class="lazy post-thumb" alt="' . $mov->title . '" title="' . $mov->title . '" />
                                    <span class="is_trailer">
                                        ' . $text . '
                                    </span>
                                 </div>
                                 <p class="title">' . $mov->title . '</p>
                              </a>
                              <div class="viewsCount" style="color: #9d9d9d;">3.2K lượt xem</div>
                              <div style="float: left;">
                                 <span class="user-rate-image post-large-rate stars-large-vang" style="display: block;/* width: 100%; */">
                                 <span style="width: 0%"></span>
                                 </span>
                              </div>
                           </div>';
        }
        echo $output;
    }

    public function filter_default(Request $request)
    {
        $data = $request->all();
        $movie = Movie::where('topview', 0)->orderBy('ngaycapnhat', 'DESC')->take(20)->get();
        $output = '';
        foreach ($movie as $key => $mov) {

            if ($mov->resolution == 0) {
                $text = 'HD';
            } elseif ($mov->resolution == 1) {
                $text = 'SD';
            } elseif ($mov->resolution == 2) {
                $text = 'HDCam';
            } elseif ($mov->resolution == 3) {
                $text = 'Cam';
            } elseif ($mov->resolution == 4) {
                $text = 'FullHD';
            } else {
                $text = 'Tralier';
            }
            $output .= '<div class="item">
                              <a href="' . url('phim/' . $mov->slug) . '" title="' . $mov->title . '">
                                 <div class="item-link">
                                    <img src="' . url('uploads/movie/' . $mov->image) . '" class="lazy post-thumb" alt="' . $mov->title . '" title="' . $mov->title . '" />
                                    <span class="is_trailer">
                                        ' . $text . '
                                    </span>
                                 </div>
                                 <p class="title">' . $mov->title . '</p>
                              </a>
                              <div class="viewsCount" style="color: #9d9d9d;">3.2K lượt xem</div>
                              <div style="float: left;">
                                 <span class="user-rate-image post-large-rate stars-large-vang" style="display: block;/* width: 100%; */">
                                 <span style="width: 0%"></span>
                                 </span>
                              </div>
                           </div>';
        }
        echo $output;
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category = Category::pluck('title', 'id');
        //        dd($category);
        $genre = Genre::pluck('title', 'id');
        $list_genre = Genre::all();
        $country = Country::pluck('title', 'id');
        return view('admincp.movie.form', compact('category', 'genre', 'country', 'list_genre'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(
            [
                'title' => 'required|string|max:255',
                'trailer' => 'required|string|max:255',
                'sotap' => 'required||max:255',
                'tags' => 'required|string|max:255',
                'thoiluong' => 'required|string|max:255',
                'phude' => 'required|string|max:255',
                'resolution' => 'required|string|max:255',
                'slug' => 'required|string|max:255',
                'name_eng' => 'required|string|max:255',
                'phim_hot' => 'required|string|max:255',
                'description' => 'required|string|max:255',
                'status' => 'required|string|max:255',
                'category_id' => 'required|string|max:255',
                'thuocphim' => 'required|string|max:255',
                'country_id' => 'required|string|max:255',
                'genre' => 'required',

            ],
            //Thiết lập câu tiếng việt báo lỗi
            [
                'required' => ':attribute không được để trống',
                'min' => ':attribute có độ dài ít nhất :min kí tự',
                'max' => ':attribute có độ dài tối đa :max kí tự',
            ],
            [
                'title' => 'Tên phim',
                'trailer' => 'Trailer',
                'sotap' => 'Số tập',
                'tags' => 'Tags phim',
                'thoiluong' => 'Thời lượng phim',
                'phude' => 'Phụ đề',
                'resolution' => 'abc',
                'slug' => 'Slug',
                'name_eng' => 'Tên tiếng anh',
                'phim_hot' => 'Phim hot',
                'description' => 'Mô tả phim',
                'status' => 'Trạng thái',
                'category_id' => 'Danh mục phim',
                'thuocphim' => 'Thuộc phim',
                'country_id' => 'Quốc gia',
                'genre' => 'Thể loại phim'
            ]
        );
        $movie = new Movie();
        $movie->title = $data['title'];
        $movie->trailer = $data['trailer'];
        $movie->sotap = $data['sotap'];
        $movie->tags = $data['tags'];
        $movie->thoiluong = $data['thoiluong'];
        $movie->phude = $data['phude'];
        $movie->resolution = $data['resolution'];
        $movie->slug = $data['slug'];
        $movie->name_eng = $data['name_eng'];
        $movie->phim_hot = $data['phim_hot'];
        $movie->description = $data['description'];
        $movie->status = $data['status'];
        $movie->category_id = $data['category_id'];
        $movie->thuocphim = $data['thuocphim'];
        $movie->country_id = $data['country_id'];
        $movie->ngaytao = Carbon::now('Asia/Ho_Chi_Minh');
        $movie->ngaycapnhat = Carbon::now('Asia/Ho_Chi_Minh');
        //them nhiu the loai phim
        foreach ($data['genre'] as $key => $gen) {
            $movie->genre_id = $gen[0];
        }


        //them hinh anh
        $get_imgage = $request->file('image');
        //        $path = 'public/uploads/movie/';

        if ($get_imgage) {
            $get_name_image = $get_imgage->getClientOriginalName(); //hinhanh1.png
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image . rand(0, 9999) . '.' . $get_imgage->getClientOriginalExtension();
            $get_imgage->move('public/uploads/movie/', $new_image);
            $movie->image = $new_image;
        }
        $movie->save();
        //them nhieu thể loại cho phim
        $movie->movie_genre()->attach($data['genre']);
        //them tap dau tien cho phim


        return redirect()->route('movie.index');


        return redirect()->route('movie.index')->with('status', 'Thêm phim thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::pluck('title', 'id');
        $genre = Genre::pluck('title', 'id');
        $country = Country::pluck('title', 'id');
        $list_genre = Genre::all();
        $movie = Movie::find($id);
        $movie_genre = $movie->movie_genre;
        //        dd($movie_genre);
        return view('admincp.movie.form', compact('category', 'genre', 'country', 'movie', 'list_genre', 'movie_genre'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        // $data = $request->all();
        $data = $request->validate(
            [
                'title' => 'required|string|max:255',
                'trailer' => 'required|string|max:255',
                'sotap' => 'required||max:255',
                'tags' => 'required|string|max:255',
                'thoiluong' => 'required|string|max:255',
                'phude' => 'required|string|max:255',
                'resolution' => 'required|string|max:255',
                'slug' => 'required|string|max:255',
                'name_eng' => 'required|string|max:255',
                'phim_hot' => 'required|string|max:255',
                'description' => 'required|string|max:255',
                'status' => 'required|string|max:255',
                'category_id' => 'required|string|max:255',
                'thuocphim' => 'required|string|max:255',
                'country_id' => 'required|string|max:255',
                'genre' => 'required',

            ],
            //Thiết lập câu tiếng việt báo lỗi
            [
                'required' => ':attribute không được để trống',
                'min' => ':attribute có độ dài ít nhất :min kí tự',
                'max' => ':attribute có độ dài tối đa :max kí tự',
            ],
            [
                'title' => 'Tên phim',
                'trailer' => 'Trailer',
                'sotap' => 'Số tập',
                'tags' => 'Tags phim',
                'thoiluong' => 'Thời lượng phim',
                'phude' => 'Phụ đề',
                'resolution' => 'abc',
                'slug' => 'Slug',
                'name_eng' => 'Tên tiếng anh',
                'phim_hot' => 'Phim hot',
                'description' => 'Mô tả phim',
                'status' => 'Trạng thái',
                'category_id' => 'Danh mục phim',
                'thuocphim' => 'Thuộc phim',
                'country_id' => 'Quốc gia',
                'genre' => 'Thể loại phim'
            ]
        );
        $movie = Movie::find($id);
        $movie->resolution = $data['resolution'];
        $movie->tags = $data['tags'];
        $movie->trailer = $data['trailer'];
        $movie->thoiluong = $data['thoiluong'];
        $movie->phude = $data['phude'];
        $movie->title = $data['title'];
        $movie->slug = $data['slug'];
        $movie->name_eng = $data['name_eng'];
        $movie->phim_hot = $data['phim_hot'];
        $movie->sotap = $data['sotap'];
        $movie->description = $data['description'];
        $movie->status = $data['status'];
        $movie->category_id = $data['category_id'];
        $movie->thuocphim = $data['thuocphim'];
        $movie->country_id = $data['country_id'];
        $movie->ngaycapnhat = Carbon::now('Asia/Ho_Chi_Minh');

        $get_image = $request->file('image');


        //them hinh anh
        $get_imgage = $request->file('image');
        //        $path = 'public/uploads/movie/';

        if ($get_imgage) {

            if (file_exists('public/uploads/movie' . $movie->image)) {
                unlink('public/uploads/movie' . $movie->image);
            }
            $get_name_image = $get_imgage->getClientOriginalName(); //hinhanh1.png
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image . rand(0, 9999) . '.' . $get_imgage->getClientOriginalExtension();
            $get_imgage->move('public/uploads/movie/', $new_image);
            $movie->image = $new_image;
        }
        //lấy trước 1 thể loại lưu vào bảng movie,các thể loại còn lại sẽ lưu vào bảng movie_genre
        foreach ($data['genre'] as $key => $gen) {

            $movie->genre_id = $gen[0];
        }
        //        dd($gen[0]);
        $movie->save();

        //thêm dữ liệu trường movie_id cho bảng movie_genre bằng cách dùng sync,sync sẽ lấy danh sách id thu được có trong $data['genre']
        $movie->movie_genre()->sync($data['genre']);

        return redirect()->route('movie.index')->with('status', 'Cập nhật  phim thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //cách mới
        $movie = Movie::find($id);
        $movie->delete();

        $movieId = $movie->id;

        if (file_exists('public/uploads/movie' . $movie->image)) {
            unlink('public/uploads/movie' . $movie->image);
        }

        //xoa the loai
        Movie_Genre::where('movie_id', '=', $movieId)->delete();
        //xóa tập phim
        Episode::where('movie_id', '=', $movieId)->delete();
        return redirect()->back()->with('status', 'Xóa phim thành công');
    }
}
