class ListMaintenanceModel {
  String? jsonrpc;
  Null? id;
  Result? result;

  ListMaintenanceModel({this.jsonrpc, this.id, this.result});

  ListMaintenanceModel.fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    id = json['id'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jsonrpc'] = this.jsonrpc;
    data['id'] = this.id;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  int? status;
  List<Response>? response;
  String? message;

  Result({this.status, this.response, this.message});

  Result.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['response'] != null) {
      response = <Response>[];
      json['response'].forEach((v) {
        response!.add(new Response.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.response != null) {
      data['response'] = this.response!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Response {
  String? name;
  int? maintenanceTeamId;
  String? maintenanceTeamName;
  int? companyId;
  String? companyName;
  bool? equipmentId;
  bool? equipmentName;
  String? requestDate;
  String? maintenanceType;
  bool? userId;
  bool? userName;
  int? duration;

  Response(
      {this.name,
        this.maintenanceTeamId,
        this.maintenanceTeamName,
        this.companyId,
        this.companyName,
        this.equipmentId,
        this.equipmentName,
        this.requestDate,
        this.maintenanceType,
        this.userId,
        this.userName,
        this.duration});

  Response.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    maintenanceTeamId = json['maintenance_team_id'];
    maintenanceTeamName = json['maintenance_team_name'];
    companyId = json['company_id'];
    companyName = json['company_name'];
    equipmentId = json['equipment_id'];
    equipmentName = json['equipment_name'];
    requestDate = json['request_date'];
    maintenanceType = json['maintenance_type'];
    userId = json['user_id'];
    userName = json['user_name'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['maintenance_team_id'] = this.maintenanceTeamId;
    data['maintenance_team_name'] = this.maintenanceTeamName;
    data['company_id'] = this.companyId;
    data['company_name'] = this.companyName;
    data['equipment_id'] = this.equipmentId;
    data['equipment_name'] = this.equipmentName;
    data['request_date'] = this.requestDate;
    data['maintenance_type'] = this.maintenanceType;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['duration'] = this.duration;
    return data;
  }
}