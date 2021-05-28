class WorkBench {
  String department;
  List<String> icon;
  List<String> func;
  List<String> url;

  WorkBench({this.department, this.func, this.url, this.icon});

  WorkBench.fromJson(Map<String, dynamic> json) {
    department = json['department'];
    func = json['func'].cast<String>();
    url = json['url'].cast<String>();
    icon = json['icon'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['department'] = this.department;
    data['func'] = this.func;
    data['url'] = this.url;
    data['icon'] = this.icon;
    return data;
  }
}
