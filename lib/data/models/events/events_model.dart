class EventModel {
  String? iD;
  int? diaDiemID;
  String? leHoiID;
  String? tenSuKien;
  String? gioiThieu;
  String? noiDung;
  String? batDau;
  String? ketThuc;
  String? anhDaiDien;
  String? tenLeHoi;
  String? diaDiem;

  EventModel(
      {this.iD,
      this.diaDiemID,
      this.leHoiID,
      this.tenSuKien,
      this.gioiThieu,
      this.noiDung,
      this.batDau,
      this.ketThuc,
      this.anhDaiDien,
      this.tenLeHoi,
      this.diaDiem});

  EventModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    diaDiemID = json['DiaDiemID'];
    leHoiID = json['LeHoiID'];
    tenSuKien = json['TenSuKien'];
    gioiThieu = json['GioiThieu'];
    noiDung = json['NoiDung'];
    batDau = json['BatDau'];
    ketThuc = json['KetThuc'];
    anhDaiDien = json['AnhDaiDien'];
    tenLeHoi = json['TenLeHoi'];
    diaDiem = json['DiaDiem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['DiaDiemID'] = this.diaDiemID;
    data['LeHoiID'] = this.leHoiID;
    data['TenSuKien'] = this.tenSuKien;
    data['GioiThieu'] = this.gioiThieu;
    data['NoiDung'] = this.noiDung;
    data['BatDau'] = this.batDau;
    data['KetThuc'] = this.ketThuc;
    data['AnhDaiDien'] = this.anhDaiDien;
    data['TenLeHoi'] = this.tenLeHoi;
    data['DiaDiem'] = this.diaDiem;
    return data;
  }
}
