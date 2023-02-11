class FestivalLocationModel {
  int? iD;
  int? nhomID;
  String? gioiThieu;
  String? diaDiem;
  String? diaChi;
  String? xaID;
  String? huyenID;
  double? x;
  double? y;
  bool? trangThai;

  FestivalLocationModel(
      {this.iD,
      this.nhomID,
      this.gioiThieu,
      this.diaDiem,
      this.diaChi,
      this.xaID,
      this.huyenID,
      this.x,
      this.y,
      this.trangThai});

  FestivalLocationModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    nhomID = json['NhomID'];
    gioiThieu = json['GioiThieu'];
    diaDiem = json['DiaDiem'];
    diaChi = json['DiaChi'];
    xaID = json['XaID'];
    huyenID = json['HuyenID'];
    x = json['X'];
    y = json['Y'];
    trangThai = json['TrangThai'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['NhomID'] = this.nhomID;
    data['GioiThieu'] = this.gioiThieu;
    data['DiaDiem'] = this.diaDiem;
    data['DiaChi'] = this.diaChi;
    data['XaID'] = this.xaID;
    data['HuyenID'] = this.huyenID;
    data['X'] = this.x;
    data['Y'] = this.y;
    data['TrangThai'] = this.trangThai;
    return data;
  }
}
