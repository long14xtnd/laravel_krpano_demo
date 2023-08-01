<form action="{{ route('locphim') }}" method="get">
    <div class="row">
        <div class="form-group col-md-2">

            <select class="form-control" id="exampleFormControlSelect1" name="oder">
                <option value="">-Sắp xếp-</option>
                <option {{ isset($_GET['oder']) && $_GET['oder'] == 'date' ? 'selected' : '' }} value="date">Ngày
                    đăng</option>
                <option {{ isset($_GET['oder']) && $_GET['oder'] == 'year_release' ? 'selected' : '' }}
                    value="year_release">Năm sản xuất</option>
                <option {{ isset($_GET['oder']) && $_GET['oder'] == 'name' ? 'selected' : '' }} value="name">Tên
                    phim</option>
                <option {{ isset($_GET['oder']) && $_GET['oder'] == 'watch_view' ? 'selected' : '' }}
                    value="watch_view">Lượt xem</option>
            </select>
        </div>
        <div class="form-group col-md-2">

            <select class="form-control" id="exampleFormControlSelect1" name="genre">
                <option value="">-Thể loại-</option>
                @foreach ($genre as $gen_filter)
                    <option {{ isset($_GET['genre']) && $_GET['genre'] == $gen_filter->id ? 'selected' : '' }} }}
                        value="{{ $gen_filter->id }}">{{ $gen_filter->title }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group col-md-3">

            <select class="form-control" id="exampleFormControlSelect1" name="country">
                <option value="">- Quốc gia -</option>
                @foreach ($country as $cou_filter)
                    <option {{ isset($_GET['country']) && $_GET['country'] == $cou_filter->id ? 'selected' : '' }} }}
                        value="{{ $cou_filter->id }}">{{ $cou_filter->title }}</option>
                @endforeach
            </select>
        </div>
        <div class=" col-md-3">
            <div class="form-group">
                @php
                    if (isset($_GET['year'])) {
                        $year = $_GET['year'];
                    } else {
                        $year = null;
                    }
                @endphp
                {!! Form::selectYear('year', 2010, 2022, $year, [
                    'class' => 'form-control',
                    'placeholder' => '- Năm phim -',
                ]) !!}
            </div>

        </div>
        <div class="form-group col-md-2">
            {{-- <label for="exampleFormControlSelect1">Lọc phim</label> --}}
            <input type="submit" class="btn btn-primary" value="Lọc phim">
        </div>
    </div>

</form>
