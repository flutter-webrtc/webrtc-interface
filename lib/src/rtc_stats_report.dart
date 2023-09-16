class StatsReport {
  StatsReport(this.id, this.type, this.timestamp, this.values);
  final String id;
  final String type;
  final double timestamp;
  final Map<dynamic, dynamic> values;

  factory StatsReport.fromMap(Map<String, dynamic> map) =>
      StatsReport(map['id'], map['type'], map['timestamp'], map);

  Map<String, dynamic> toMap() {
    return {
      'id': sdp,
      'type': type,
      'timestamp': timestamp,
      'values': values,
    };
  }
}
