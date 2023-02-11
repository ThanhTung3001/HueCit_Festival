class AppConstances {
  static String ENTRY_POINT = "http://csdl-lehoi.huecit.com";
  static String strCategoryIdNews = "2BECD25A-4EE0-429E-9AC5-AF7800920C27";
}

class AppApi {
  static String festivalList = '/API/CSDLLeHoi/DanhSachLeHoiApi/Festivals';
  static String countFestivalType =
      '/API/CSDLLeHoi/LoaiLeHoiApi/CountByFestivalType';
  static String newUrl =
      "/api/APITinBai/v1/News/getListNewsbyCateID"; //&size=5&index=0
  static String eventUrl = "/API/CSDLLeHoi/SuKienApi/Gets"; //&size=5&index=0
  static String mediaUrl = '/API/CSDLLeHoi/MediaApi/Gets';
  static String festivalLocation = "/API/CSDLLeHoi/DiaDiemLeHoiApi/Gets";
}
