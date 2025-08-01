class MediaTrackConstraints {
  MediaTrackConstraints({this.deviceId, this.groupId});
  factory MediaTrackConstraints.fromMap(Map<String, dynamic> map) {
    return MediaTrackConstraints(
      deviceId: map['deviceId'] as String?,
      groupId: map['groupId'] as String?,
    );
  }
  final String? deviceId;
  final String? groupId;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (deviceId != null) 'deviceId': deviceId,
      if (groupId != null) 'groupId': groupId,
    };
  }
}

class AudioTrackConstraints extends MediaTrackConstraints {
  AudioTrackConstraints({
    required String deviceId,
    required String groupId,
    this.autoGainControl,
    this.channelCount,
    this.echoCancellation,
    this.latency,
    this.noiseSuppression,
    this.sampleRate,
    this.sampleSize,
    this.volume,
  }) : super(deviceId: deviceId, groupId: groupId);

  factory AudioTrackConstraints.fromMap(Map<String, dynamic> map) {
    return AudioTrackConstraints(
      deviceId: map['deviceId'] as String,
      groupId: map['groupId'] as String,
      autoGainControl: map['autoGainControl'] as bool?,
      channelCount: map['channelCount'] as bool?,
      echoCancellation: map['echoCancellation'] as bool?,
      latency: map['latency'] as bool?,
      noiseSuppression: map['noiseSuppression'] as bool?,
      sampleRate: map['sampleRate'] as bool?,
      sampleSize: map['sampleSize'] as bool?,
      volume: map['volume'] as bool?,
    );
  }

  bool? autoGainControl;
  bool? channelCount;
  bool? echoCancellation;
  bool? latency;
  bool? noiseSuppression;
  bool? sampleRate;
  bool? sampleSize;
  bool? volume;

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (deviceId != null) 'deviceId': deviceId,
      if (groupId != null) 'groupId': groupId,
      if (autoGainControl != null) 'autoGainControl': autoGainControl,
      if (channelCount != null) 'channelCount': channelCount,
      if (echoCancellation != null) 'echoCancellation': echoCancellation,
      if (latency != null) 'latency': latency,
      if (noiseSuppression != null) 'noiseSuppression': noiseSuppression,
      if (sampleRate != null) 'sampleRate': sampleRate,
      if (sampleSize != null) 'sampleSize': sampleSize,
      if (volume != null) 'volume': volume,
    };
  }
}

class VideoTrackConstraints extends MediaTrackConstraints {
  VideoTrackConstraints({
    required String deviceId,
    required String groupId,
    this.aspectRatio,
    this.frameRate,
    this.facingMode,
    this.height,
    this.width,
  }) : super(deviceId: deviceId, groupId: groupId);

  factory VideoTrackConstraints.fromMap(Map<String, dynamic> map) {
    return VideoTrackConstraints(
      deviceId: map['deviceId'] as String,
      groupId: map['groupId'] as String,
      aspectRatio: map['aspectRatio'] as bool?,
      frameRate: map['frameRate'] as bool?,
      facingMode: map['facingMode'] as bool?,
      height: map['height'] as bool?,
      width: map['width'] as bool?,
    );
  }

  bool? aspectRatio;
  bool? frameRate;
  bool? facingMode;
  bool? height;
  bool? width;

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (deviceId != null) 'deviceId': deviceId,
      if (groupId != null) 'groupId': groupId,
      if (aspectRatio != null) 'aspectRatio': aspectRatio,
      if (frameRate != null) 'frameRate': frameRate,
      if (facingMode != null) 'facingMode': facingMode,
      if (height != null) 'height': height,
      if (width != null) 'width': width,
    };
  }
}

class MediaStreamConstraints {
  MediaStreamConstraints({
    this.audio,
    this.video,
  });

  factory MediaStreamConstraints.fromMap(Map<String, dynamic> map) {
    return MediaStreamConstraints(
      audio: map['audio'] is bool
          ? map['audio']
          : AudioTrackConstraints.fromMap(map['audio']),
      video: map['video'] is bool
          ? map['video']
          : VideoTrackConstraints.fromMap(map['video']),
    );
  }

  // bool or AudioTrackConstraints
  dynamic audio;
  // bool or VideoTrackConstraints
  dynamic video;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (audio != null)
        'audio':
            audio is bool ? audio : (audio as AudioTrackConstraints).toMap(),
      if (video != null)
        'video':
            video is bool ? video : (video as VideoTrackConstraints).toMap(),
    };
  }
}
