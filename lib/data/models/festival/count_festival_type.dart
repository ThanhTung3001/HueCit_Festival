class CoutFestivalTypeModal {
  String? tenLoai;
  int? total;

  CoutFestivalTypeModal({this.tenLoai, this.total});

  CoutFestivalTypeModal.fromJson(Map<String, dynamic> json) {
    tenLoai = json['TenLoai'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TenLoai'] = this.tenLoai;
    data['total'] = this.total;
    return data;
  }
}
