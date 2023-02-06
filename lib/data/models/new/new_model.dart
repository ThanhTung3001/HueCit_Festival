class NewModel {
  String? totalCount;
  List<NewsList>? newsList;

  NewModel({this.totalCount, this.newsList});

  NewModel.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['newsList'] != null) {
      newsList = <NewsList>[];
      json['newsList'].forEach((v) {
        newsList!.add(new NewsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    if (this.newsList != null) {
      data['newsList'] = this.newsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NewsList {
  String? id;
  String? title;
  String? typediadiem;
  String? summary;
  String? publishTime;
  String? content;
  String? source;
  String? author;
  int? order;
  String? language;
  Category? category;
  ImgNews? imgNews;
  ImgNews? imgNewsThumb;
  List<Null>? listimg;
  List<Null>? listvideo;
  Null? listfile;
  Null? listRelatedNews;
  Geo? geo;
  String? dienThoai;
  String? diaChi;
  String? fax;
  String? email;
  String? website;
  String? thoiGianHoatDong;
  String? giaTour;
  String? xuatPhat;
  String? hanhTrinh;
  String? phuongTien;
  // Null? lichSuHinhThanh;
  // Null? netDacTrung;
  // Null? kienTruc;
  // Null? giaTriNgheThuat;
  // Null? huongDanDuongDi;
  // Null? huongDanTraiNghiem;
  // Null? soSao;
  // Null? fanpage;
  // Null? tinhTrang;
  // Null? gioiThieu;
  // Null? giaTriDiSanAmThuc;
  // Null? luuY;
  // Null? goiYLienQuan;
  // Null? videoYoutube;
  String? banDo;
  Null? tienNghi;

  NewsList(
      {this.id,
      this.title,
      this.typediadiem,
      this.summary,
      this.publishTime,
      this.content,
      this.source,
      this.author,
      this.order,
      this.language,
      this.category,
      this.imgNews,
      this.imgNewsThumb,
      this.listimg,
      this.listvideo,
      this.listfile,
      this.listRelatedNews,
      this.geo,
      this.dienThoai,
      this.diaChi,
      this.fax,
      this.email,
      this.website,
      this.thoiGianHoatDong,
      this.giaTour,
      this.xuatPhat,
      this.hanhTrinh,
      this.phuongTien,
      // this.lichSuHinhThanh,
      // this.netDacTrung,
      // this.kienTruc,
      // this.giaTriNgheThuat,
      // this.huongDanDuongDi,
      // this.huongDanTraiNghiem,
      // this.soSao,
      // this.fanpage,
      // this.tinhTrang,
      // this.gioiThieu,
      // this.giaTriDiSanAmThuc,
      // this.luuY,
      // this.goiYLienQuan,
      // this.videoYoutube,
      this.banDo,
      this.tienNghi});

  NewsList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    typediadiem = json['typediadiem'];
    summary = json['summary'];
    publishTime = json['publishTime'];
    content = json['content'];
    source = json['source'];
    author = json['author'];
    order = json['order'];
    language = json['language'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    imgNews =
        json['imgNews'] != null ? new ImgNews.fromJson(json['imgNews']) : null;
    imgNewsThumb = json['imgNewsThumb'] != null
        ? new ImgNews.fromJson(json['imgNewsThumb'])
        : null;
    // if (json['listimg'] != null) {
    //   listimg = <Null>[];
    //   json['listimg'].forEach((v) {
    //     listimg!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['listvideo'] != null) {
    //   listvideo = <Null>[];
    //   json['listvideo'].forEach((v) {
    //     listvideo!.add(new Null.fromJson(v));
    //   });
    // }
    listfile = json['listfile'];
    listRelatedNews = json['listRelatedNews'];
    geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
    dienThoai = json['DienThoai'];
    diaChi = json['DiaChi'];
    fax = json['Fax'];
    email = json['Email'];
    website = json['Website'];
    thoiGianHoatDong = json['ThoiGianHoatDong'];
    giaTour = json['GiaTour'];
    xuatPhat = json['XuatPhat'];
    hanhTrinh = json['HanhTrinh'];
    phuongTien = json['PhuongTien'];
    // lichSuHinhThanh = json['LichSuHinhThanh'];
    // netDacTrung = json['NetDacTrung'];
    // kienTruc = json['KienTruc'];
    // giaTriNgheThuat = json['GiaTriNgheThuat'];
    // huongDanDuongDi = json['HuongDanDuongDi'];
    // huongDanTraiNghiem = json['HuongDanTraiNghiem'];
    // soSao = json['SoSao'];
    // fanpage = json['Fanpage'];
    // tinhTrang = json['TinhTrang'];
    // gioiThieu = json['GioiThieu'];
    // giaTriDiSanAmThuc = json['GiaTriDiSanAmThuc'];
    // luuY = json['LuuY'];
    // goiYLienQuan = json['GoiYLienQuan'];
    // videoYoutube = json['VideoYoutube'];
    banDo = json['BanDo'];
    tienNghi = json['TienNghi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['typediadiem'] = this.typediadiem;
    data['summary'] = this.summary;
    data['publishTime'] = this.publishTime;
    data['content'] = this.content;
    data['source'] = this.source;
    data['author'] = this.author;
    data['order'] = this.order;
    data['language'] = this.language;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.imgNews != null) {
      data['imgNews'] = this.imgNews!.toJson();
    }
    if (this.imgNewsThumb != null) {
      data['imgNewsThumb'] = this.imgNewsThumb!.toJson();
    }
    // if (this.listimg != null) {
    //   data['listimg'] = this.listimg!.map((v) => v.toJson()).toList();
    // }
    // if (this.listvideo != null) {
    //   data['listvideo'] = this.listvideo!.map((v) => v.toJson()).toList();
    // }
    data['listfile'] = this.listfile;
    data['listRelatedNews'] = this.listRelatedNews;
    if (this.geo != null) {
      data['geo'] = this.geo!.toJson();
    }
    data['DienThoai'] = this.dienThoai;
    data['DiaChi'] = this.diaChi;
    data['Fax'] = this.fax;
    data['Email'] = this.email;
    data['Website'] = this.website;
    data['ThoiGianHoatDong'] = this.thoiGianHoatDong;
    data['GiaTour'] = this.giaTour;
    data['XuatPhat'] = this.xuatPhat;
    data['HanhTrinh'] = this.hanhTrinh;
    data['PhuongTien'] = this.phuongTien;
    // data['LichSuHinhThanh'] = this.lichSuHinhThanh;
    // data['NetDacTrung'] = this.netDacTrung;
    // data['KienTruc'] = this.kienTruc;
    // data['GiaTriNgheThuat'] = this.giaTriNgheThuat;
    // data['HuongDanDuongDi'] = this.huongDanDuongDi;
    // data['HuongDanTraiNghiem'] = this.huongDanTraiNghiem;
    // data['SoSao'] = this.soSao;
    // data['Fanpage'] = this.fanpage;
    // data['TinhTrang'] = this.tinhTrang;
    // data['GioiThieu'] = this.gioiThieu;
    // data['GiaTriDiSanAmThuc'] = this.giaTriDiSanAmThuc;
    // data['LuuY'] = this.luuY;
    // data['GoiYLienQuan'] = this.goiYLienQuan;
    // data['VideoYoutube'] = this.videoYoutube;
    data['BanDo'] = this.banDo;
    data['TienNghi'] = this.tienNghi;
    return data;
  }
}

class Category {
  String? id;
  int? idextra;
  Null? tenma;
  String? title;
  Null? parent;
  Null? url;
  Null? anhbieutuong;
  Null? anhdaidien;

  Category(
      {this.id,
      this.idextra,
      this.tenma,
      this.title,
      this.parent,
      this.url,
      this.anhbieutuong,
      this.anhdaidien});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idextra = json['idextra'];
    tenma = json['tenma'];
    title = json['title'];
    parent = json['parent'];
    url = json['url'];
    anhbieutuong = json['anhbieutuong'];
    anhdaidien = json['anhdaidien'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idextra'] = this.idextra;
    data['tenma'] = this.tenma;
    data['title'] = this.title;
    data['parent'] = this.parent;
    data['url'] = this.url;
    data['anhbieutuong'] = this.anhbieutuong;
    data['anhdaidien'] = this.anhdaidien;
    return data;
  }
}

class ImgNews {
  String? mimeType;
  String? url;

  ImgNews({this.mimeType, this.url});

  ImgNews.fromJson(Map<String, dynamic> json) {
    mimeType = json['mimeType'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mimeType'] = this.mimeType;
    data['url'] = this.url;
    return data;
  }
}

class Geo {
  String? name;
  String? latitude;
  String? longitude;

  Geo({this.name, this.latitude, this.longitude});

  Geo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
