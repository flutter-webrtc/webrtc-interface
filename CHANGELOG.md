# Changelog

--------------------------------------------
[1.0.5] - 2022-05-31

* Added Function(int currentAmount, int changedAmount)? onBufferedAmountChange callback (bufferedAmount should be set to non nullable after bufferedAmount implementation on all platforms).
* Added Function(int currentAmount)? onBufferedAmountLow callback and bufferedAmountLowThreshold variable.

[1.0.4] - 2022-05-08

* Change to nullable track for replaceTrack/setTrack.

[1.0.3] - 2022-03-31

* Added RTCDataChannel.id

[1.0.2] - 2022-02-07

* chore: Add restartIce.
* fix: Fix case for RTCIceCandidate.sdpMLineIndex.

[1.0.1] - 2021-11-25

* Added comment for VideoRenderer.onResize.
* Remove unnecessary function alias declarations.

[1.0.0] - 2021-11-19

* initial version.
