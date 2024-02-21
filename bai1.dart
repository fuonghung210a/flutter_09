class LopHoc {
  String tenLop;
  int soLuongHocVien;
  List<HocVien> danhSachHocVien;

  LopHoc(
      {required this.tenLop,
      required this.soLuongHocVien,
      required this.danhSachHocVien});

  void themHocVien(HocVien hocVien) {
    danhSachHocVien.add(hocVien);
    hocVien.danhSachLopHoc.add(this);
  }

  List<HocVien> layDanhSachHocVien() {
    return danhSachHocVien;
  }
}

class HocVien {
  String tenHocVien;
  List<LopHoc> danhSachLopHoc;

  HocVien({required this.tenHocVien, required this.danhSachLopHoc});

  List<LopHoc> layDanhSachLopHoc() {
    return danhSachLopHoc;
  }

  bool coTheBuildApp(String nenTang) {
    for (LopHoc lop in danhSachLopHoc) {
      if (lop.tenLop == nenTang) {
        return true;
      }
    }
    return false;
  }
}

void main() {
  // Tạo các lớp học
  LopHoc lopFlutter =
      LopHoc(tenLop: "Flutter", soLuongHocVien: 0, danhSachHocVien: []);
  LopHoc lopAndroid =
      LopHoc(tenLop: "Android", soLuongHocVien: 0, danhSachHocVien: []);
  LopHoc lopIOS = LopHoc(tenLop: "iOS", soLuongHocVien: 0, danhSachHocVien: []);
  LopHoc lopWeb = LopHoc(tenLop: "Web", soLuongHocVien: 0, danhSachHocVien: []);

  // Tạo các học viên
  HocVien hocVienA = HocVien(tenHocVien: "A", danhSachLopHoc: []);
  HocVien hocVienB = HocVien(tenHocVien: "B", danhSachLopHoc: []);
  HocVien hocVienC = HocVien(tenHocVien: "C", danhSachLopHoc: []);
  HocVien hocVienD = HocVien(tenHocVien: "D", danhSachLopHoc: []);
  HocVien hocVienE = HocVien(tenHocVien: "E", danhSachLopHoc: []);
  HocVien hocVienF = HocVien(tenHocVien: "F", danhSachLopHoc: []);

  // Thêm học viên vào các lớp học
  lopFlutter.themHocVien(hocVienA);
  lopFlutter.themHocVien(hocVienB);
  lopFlutter.themHocVien(hocVienC);

  lopAndroid.themHocVien(hocVienA);
  lopAndroid.themHocVien(hocVienB);
  lopAndroid.themHocVien(hocVienD);

  lopIOS.themHocVien(hocVienB);
  lopIOS.themHocVien(hocVienC);
  lopIOS.themHocVien(hocVienE);

  lopWeb.themHocVien(hocVienC);
  lopWeb.themHocVien(hocVienE);
  lopWeb.themHocVien(hocVienF);

  // Ví dụ sử dụng
  List<HocVien> dsHocVienFlutter = lopFlutter.layDanhSachHocVien();

  bool coTheBuildAndroid = hocVienB.coTheBuildApp("Android");

  print("Danh sách học viên lớp Flutter: ${dsHocVienFlutter}");
  print("Học viên B có thể build ứng dụng Android: $coTheBuildAndroid");
}
