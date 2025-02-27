# flutter_threat_detector

Flutter Threat and root detection plugin.

It uses [RootBeer](https://github.com/scottyab/rootbeer) on Android,
and [IOSSecuritySuite](https://github.com/securing/IOSSecuritySuite) on iOS.

## Getting Started

```
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';

bool jailbroken = await FlutterThreatDetector.jailbroken;
bool developerMode = await FlutterThreatDetector.developerMode; // android only.

```