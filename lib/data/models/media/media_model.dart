class MediaModel {
  String? leHoiID;
  String? tenLeHoi;
  String? gioiThieu;
  String? lienKet;

  MediaModel({this.leHoiID, this.tenLeHoi, this.gioiThieu, this.lienKet});

  MediaModel.fromJson(Map<String, dynamic> json) {
    leHoiID = json['LeHoiID'];
    tenLeHoi = json['TenLeHoi'];
    gioiThieu = json['GioiThieu'];
    lienKet = json['LienKet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['LeHoiID'] = this.leHoiID;
    data['TenLeHoi'] = this.tenLeHoi;
    data['GioiThieu'] = this.gioiThieu;
    data['LienKet'] = this.lienKet;
    return data;
  }
}
