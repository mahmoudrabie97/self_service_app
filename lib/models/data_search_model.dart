class DataSearchModel {
  String? jsonrpc;
  dynamic id;
  Result? result;

  DataSearchModel({this.jsonrpc, this.id, this.result});

  DataSearchModel.fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    id = json['id'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jsonrpc'] = jsonrpc;
    data['id'] = id;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class Result {
  int? status;
  List<String>? response;

  Result({this.status, this.response});

  Result.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    response = json['response'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['response'] = response;
    return data;
  }
}
