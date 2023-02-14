class FestivalModel {
  String? _iD;
  int? _loaiID;
  int? _capID;
  int? _hinhThucID;
  int? _donViToChuc;
  int? _diaDiemID;
  String? _tenLeHoi;
  String? _tenPhoBien;
  String? _gioiThieu;
  String? _moTa;
  bool? _coPhanHoi;
  bool? _cungDinh;
  bool? _tieuBieu;
  String? _thoiGian;
  bool? _amLich;
  bool? _trangThai;
  String? _batDau;
  String? _ketThuc;
  bool? _thiHanh;
  String? _tanSuat;
  String? _thoiDiem;
  int? _soNgayDienRa;
  String? _hinhAnh;

  FestivalModel(
      {String? iD,
      int? loaiID,
      int? capID,
      int? hinhThucID,
      int? donViToChuc,
      int? diaDiemID,
      String? tenLeHoi,
      String? tenPhoBien,
      String? gioiThieu,
      String? moTa,
      bool? coPhanHoi,
      bool? cungDinh,
      bool? tieuBieu,
      String? thoiGian,
      bool? amLich,
      bool? trangThai,
      String? batDau,
      String? ketThuc,
      bool? thiHanh,
      String? tanSuat,
      String? thoiDiem,
      int? soNgayDienRa,
      String? hinhAnh}) {
    if (iD != null) {
      this._iD = iD;
    }
    if (loaiID != null) {
      this._loaiID = loaiID;
    }
    if (capID != null) {
      this._capID = capID;
    }
    if (hinhThucID != null) {
      this._hinhThucID = hinhThucID;
    }
    if (donViToChuc != null) {
      this._donViToChuc = donViToChuc;
    }
    if (diaDiemID != null) {
      this._diaDiemID = diaDiemID;
    }
    if (tenLeHoi != null) {
      this._tenLeHoi = tenLeHoi;
    }
    if (tenPhoBien != null) {
      this._tenPhoBien = tenPhoBien;
    }
    if (gioiThieu != null) {
      this._gioiThieu = gioiThieu;
    }
    if (moTa != null) {
      this._moTa = moTa;
    }
    if (coPhanHoi != null) {
      this._coPhanHoi = coPhanHoi;
    }
    if (cungDinh != null) {
      this._cungDinh = cungDinh;
    }
    if (tieuBieu != null) {
      this._tieuBieu = tieuBieu;
    }
    if (thoiGian != null) {
      this._thoiGian = thoiGian;
    }
    if (amLich != null) {
      this._amLich = amLich;
    }
    if (trangThai != null) {
      this._trangThai = trangThai;
    }
    if (batDau != null) {
      this._batDau = batDau;
    }
    if (ketThuc != null) {
      this._ketThuc = ketThuc;
    }
    if (thiHanh != null) {
      this._thiHanh = thiHanh;
    }
    if (tanSuat != null) {
      this._tanSuat = tanSuat;
    }
    if (thoiDiem != null) {
      this._thoiDiem = thoiDiem;
    }
    if (soNgayDienRa != null) {
      this._soNgayDienRa = soNgayDienRa;
    }
    if (hinhAnh != null) {
      this._hinhAnh = hinhAnh;
    }
  }

  String? get iD => _iD;
  set iD(String? iD) => _iD = iD;
  int? get loaiID => _loaiID;
  set loaiID(int? loaiID) => _loaiID = loaiID;
  int? get capID => _capID;
  set capID(int? capID) => _capID = capID;
  int? get hinhThucID => _hinhThucID;
  set hinhThucID(int? hinhThucID) => _hinhThucID = hinhThucID;
  int? get donViToChuc => _donViToChuc;
  set donViToChuc(int? donViToChuc) => _donViToChuc = donViToChuc;
  int? get diaDiemID => _diaDiemID;
  set diaDiemID(int? diaDiemID) => _diaDiemID = diaDiemID;
  String? get tenLeHoi => _tenLeHoi;
  set tenLeHoi(String? tenLeHoi) => _tenLeHoi = tenLeHoi;
  String? get tenPhoBien => _tenPhoBien;
  set tenPhoBien(String? tenPhoBien) => _tenPhoBien = tenPhoBien;
  String? get gioiThieu => _gioiThieu;
  set gioiThieu(String? gioiThieu) => _gioiThieu = gioiThieu;
  String? get moTa => _moTa;
  set moTa(String? moTa) => _moTa = moTa;
  bool? get coPhanHoi => _coPhanHoi;
  set coPhanHoi(bool? coPhanHoi) => _coPhanHoi = coPhanHoi;
  bool? get cungDinh => _cungDinh;
  set cungDinh(bool? cungDinh) => _cungDinh = cungDinh;
  bool? get tieuBieu => _tieuBieu;
  set tieuBieu(bool? tieuBieu) => _tieuBieu = tieuBieu;
  String? get thoiGian => _thoiGian;
  set thoiGian(String? thoiGian) => _thoiGian = thoiGian;
  bool? get amLich => _amLich;
  set amLich(bool? amLich) => _amLich = amLich;
  bool? get trangThai => _trangThai;
  set trangThai(bool? trangThai) => _trangThai = trangThai;
  String? get batDau => _batDau;
  set batDau(String? batDau) => _batDau = batDau;
  String? get ketThuc => _ketThuc;
  set ketThuc(String? ketThuc) => _ketThuc = ketThuc;
  bool? get thiHanh => _thiHanh;
  set thiHanh(bool? thiHanh) => _thiHanh = thiHanh;
  String? get tanSuat => _tanSuat;
  set tanSuat(String? tanSuat) => _tanSuat = tanSuat;
  String? get thoiDiem => _thoiDiem;
  set thoiDiem(String? thoiDiem) => _thoiDiem = thoiDiem;
  int? get soNgayDienRa => _soNgayDienRa;
  set soNgayDienRa(int? soNgayDienRa) => _soNgayDienRa = soNgayDienRa;
  String? get hinhAnh => _hinhAnh;
  set hinhAnh(String? hinhAnh) => _hinhAnh = hinhAnh;

  FestivalModel.fromJson(Map<String, dynamic> json) {
    _iD = json['ID'];
    _loaiID = json['LoaiID'];
    _capID = json['CapID'];
    _hinhThucID = json['HinhThucID'];
    _donViToChuc = json['DonViToChuc'];
    _diaDiemID = json['DiaDiemID'];
    _tenLeHoi = json['TenLeHoi'];
    _tenPhoBien = json['TenPhoBien'];
    _gioiThieu = json['GioiThieu'];
    _moTa = json['MoTa'];
    _coPhanHoi = json['CoPhanHoi'];
    _cungDinh = json['CungDinh'];
    _tieuBieu = json['TieuBieu'];
    _thoiGian = json['ThoiGian'];
    _amLich = json['AmLich'];
    _trangThai = json['TrangThai'];
    _batDau = json['BatDau'];
    _ketThuc = json['KetThuc'];
    _thiHanh = json['ThiHanh'];
    _tanSuat = json['TanSuat'];
    _thoiDiem = json['ThoiDiem'];
    _soNgayDienRa = json['SoNgayDienRa'];
    _hinhAnh = json['HinhAnh'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this._iD;
    data['LoaiID'] = this._loaiID;
    data['CapID'] = this._capID;
    data['HinhThucID'] = this._hinhThucID;
    data['DonViToChuc'] = this._donViToChuc;
    data['DiaDiemID'] = this._diaDiemID;
    data['TenLeHoi'] = this._tenLeHoi;
    data['TenPhoBien'] = this._tenPhoBien;
    data['GioiThieu'] = this._gioiThieu;
    data['MoTa'] = this._moTa;
    data['CoPhanHoi'] = this._coPhanHoi;
    data['CungDinh'] = this._cungDinh;
    data['TieuBieu'] = this._tieuBieu;
    data['ThoiGian'] = this._thoiGian;
    data['AmLich'] = this._amLich;
    data['TrangThai'] = this._trangThai;
    data['BatDau'] = this._batDau;
    data['KetThuc'] = this._ketThuc;
    data['ThiHanh'] = this._thiHanh;
    data['TanSuat'] = this._tanSuat;
    data['ThoiDiem'] = this._thoiDiem;
    data['SoNgayDienRa'] = this._soNgayDienRa;
    data['HinhAnh'] = this._hinhAnh;
    return data;
  }
}
