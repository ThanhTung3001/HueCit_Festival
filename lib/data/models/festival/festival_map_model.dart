class MapFestival {
  String? diaDiem;
  String? diaChi;
  double? x;
  double? y;
  String? iD;
  int? loaiID;
  int? capID;
  int? hinhThucID;
  int? donViToChuc;
  int? diaDiemID;
  String? tenLeHoi;
  String? tenPhoBien;
  String? gioiThieu;
  String? moTa;
  bool? coPhanHoi;
  bool? cungDinh;
  bool? tieuBieu;
  String? thoiGian;
  bool? amLich;
  bool? trangThai;
  String? batDau;
  String? ketThuc;
  bool? thiHanh;
  String? tanSuat;
  String? thoiDiem;
  int? soNgayDienRa;
  String? hinhAnh;
  String? moTaHinhAnh;
  String? danhSachTinBai;
  String? chuyenMucTinBai;
  String? duongDanVr;

  MapFestival(
      {this.diaDiem,
      this.diaChi,
      this.x,
      this.y,
      this.iD,
      this.loaiID,
      this.capID,
      this.hinhThucID,
      this.donViToChuc,
      this.diaDiemID,
      this.tenLeHoi,
      this.tenPhoBien,
      this.gioiThieu,
      this.moTa,
      this.coPhanHoi,
      this.cungDinh,
      this.tieuBieu,
      this.thoiGian,
      this.amLich,
      this.trangThai,
      this.batDau,
      this.ketThuc,
      this.thiHanh,
      this.tanSuat,
      this.thoiDiem,
      this.soNgayDienRa,
      this.hinhAnh,
      this.moTaHinhAnh,
      this.danhSachTinBai,
      this.chuyenMucTinBai,
      this.duongDanVr});

  MapFestival.fromJson(Map<String, dynamic> json) {
    diaDiem = json['DiaDiem'];
    diaChi = json['DiaChi'];
    x = json['X'];
    y = json['Y'];
    iD = json['ID'];
    loaiID = json['LoaiID'];
    capID = json['CapID'];
    hinhThucID = json['HinhThucID'];
    donViToChuc = json['DonViToChuc'];
    diaDiemID = json['DiaDiemID'];
    tenLeHoi = json['TenLeHoi'];
    tenPhoBien = json['TenPhoBien'];
    gioiThieu = json['GioiThieu'];
    moTa = json['MoTa'];
    coPhanHoi = json['CoPhanHoi'];
    cungDinh = json['CungDinh'];
    tieuBieu = json['TieuBieu'];
    thoiGian = json['ThoiGian'];
    amLich = json['AmLich'];
    trangThai = json['TrangThai'];
    batDau = json['BatDau'];
    ketThuc = json['KetThuc'];
    thiHanh = json['ThiHanh'];
    tanSuat = json['TanSuat'];
    thoiDiem = json['ThoiDiem'];
    soNgayDienRa = json['SoNgayDienRa'];
    hinhAnh = json['HinhAnh'];
    moTaHinhAnh = json['MoTaHinhAnh'];
    danhSachTinBai = json['DanhSachTinBai'];
    chuyenMucTinBai = json['ChuyenMucTinBai'];
    duongDanVr = json['DuongDanVr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DiaDiem'] = this.diaDiem;
    data['DiaChi'] = this.diaChi;
    data['X'] = this.x;
    data['Y'] = this.y;
    data['ID'] = this.iD;
    data['LoaiID'] = this.loaiID;
    data['CapID'] = this.capID;
    data['HinhThucID'] = this.hinhThucID;
    data['DonViToChuc'] = this.donViToChuc;
    data['DiaDiemID'] = this.diaDiemID;
    data['TenLeHoi'] = this.tenLeHoi;
    data['TenPhoBien'] = this.tenPhoBien;
    data['GioiThieu'] = this.gioiThieu;
    data['MoTa'] = this.moTa;
    data['CoPhanHoi'] = this.coPhanHoi;
    data['CungDinh'] = this.cungDinh;
    data['TieuBieu'] = this.tieuBieu;
    data['ThoiGian'] = this.thoiGian;
    data['AmLich'] = this.amLich;
    data['TrangThai'] = this.trangThai;
    data['BatDau'] = this.batDau;
    data['KetThuc'] = this.ketThuc;
    data['ThiHanh'] = this.thiHanh;
    data['TanSuat'] = this.tanSuat;
    data['ThoiDiem'] = this.thoiDiem;
    data['SoNgayDienRa'] = this.soNgayDienRa;
    data['HinhAnh'] = this.hinhAnh;
    data['MoTaHinhAnh'] = this.moTaHinhAnh;
    data['DanhSachTinBai'] = this.danhSachTinBai;
    data['ChuyenMucTinBai'] = this.chuyenMucTinBai;
    data['DuongDanVr'] = this.duongDanVr;
    return data;
  }
}
