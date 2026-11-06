# Evie Launcher — Android 16 compatibility rebuild

This repository contains a reverse-engineered, compatibility-patched build of
Evie Launcher 2.14.8. The original application was released in 2019 and targeted
Android 9 (API 28). This rebuild targets Android 16 (API 36), installs and starts
on current Android (including Android 14), supports modern ARM64 devices as
well as 32-bit ARM devices (such as the Samsung Galaxy A13 4G), and uses native
libraries compatible with 16 KB memory pages.

> [!IMPORTANT]
> This is not the original Evie source code. `Evie-src/` is Apktool-generated
> smali and decoded resources. `Evie-jadx/` is a best-effort Java decompilation
> for reading and analysis; it is not the authoritative build source.

The installable APK is published on the
[v2.14.8-10-modern release](https://github.com/gyurix/Evie/releases/tag/v2.14.8-10-modern).

## Build identity

| Property | Original | Modern rebuild |
| --- | --- | --- |
| Application ID | `is.shortcut` | `is.shortcut` |
| Version name | `2.14.8-9` | `2.14.8-10-modern` |
| Version code | `21408009` | `21408010` |
| Minimum SDK | API 19 | API 23 |
| Target SDK | API 28 | API 36 |
| Compile SDK | API 28 | API 36 |
| Native ABI | `armeabi-v7a` | `arm64-v8a`, `armeabi-v7a` |
| Signing | Original Voxel certificate | Independent Evie Modern certificate |

Original APK SHA-256:

```text
d8c0ec8a5af5aed51f31d56d1f0967a5d49807ec58f523d2cb1c60601de5001e
```

Release APK SHA-256 is published in `Evie-modern-SHA256SUMS.txt` beside the APK
on GitHub Releases. It is regenerated and verified for every manual build.

## Repository layout

```text
Evie-src/
  AndroidManifest.xml       Patched manifest
  apktool.yml               SDK and version metadata
  smali/                    Primary DEX and compatibility helpers
  smali_classes2/           Secondary DEX
  res/                      Decoded Android resources
  assets/                   Original application assets
  lib/arm64-v8a/            Recovered matching ARM64 native libraries
  lib/armeabi-v7a/          Recovered matching 32-bit ARM native libraries
  unknown/                  Dependency metadata retained by Apktool
Evie-jadx/
  sources/                  Readable best-effort Java decompilation
```

Generated APKs, Apktool build directories, and signing keys are deliberately
excluded from Git. API credentials are represented by injection placeholders.
Release APKs belong in GitHub Releases, not repository history.

## Reverse-engineering process

The supplied APK was inventoried with Android SDK tools, decoded with Apktool,
and decompiled separately with JADX:

```bash
apkanalyzer manifest print Evie.apk
apkanalyzer manifest permissions Evie.apk
apksigner verify --verbose --print-certs Evie.apk

java -jar apktool.jar d -f Evie.apk -o Evie-src
jadx --deobf -d Evie-jadx Evie.apk
```

The original package contained two DEX files, old AndroidX 1.0-era libraries,
Firebase/Google Play Services from 2018, and three 32-bit ARM native libraries.
JADX reported 13 source-decompilation errors, but DEX-to-smali decoding succeeded.
All patches used for rebuilding are in the Apktool tree.

## Compatibility changes

### 1. Android 16 SDK target

`apktool.yml` and the manifest now use target/compile SDK 36. The minimum SDK was
raised to API 23, matching the availability of immutable `PendingIntent` support
and providing a practical modern baseline.

The build version was bumped so Android treats it as a newer package:

- version name: `2.14.8-10-modern`
- version code: `21408010`

### 2. Android 12 component export rules

Android 12 rejects packages containing intent-filtered components without an
explicit `android:exported` value. Every affected activity, service, and receiver
was reviewed and marked explicitly.

Externally invoked components—launcher entry points, wallpaper handlers, device
admin integration, boot receiver, shortcut handlers, and notification listener—
remain exported where required. Internal Firebase and application components are
non-exported where possible.

### 3. Removed platform permission group

Android 16 rejected the original custom permission declarations because they
referenced the removed `android.permission-group.SYSTEM_TOOLS` group:

```text
Package is.shortcut attempting to declare permission ... in non-existing group
android.permission-group.SYSTEM_TOOLS
```

Those obsolete `permissionGroup` references were removed while retaining the
custom permissions and protection levels.

### 4. Android 14 dynamic receiver rules

Apps targeting API 34 or newer must declare whether dynamically registered
broadcast receivers are exported. The original code used legacy overloads and
would throw `SecurityException` on modern Android.

`is.shortcut.compat.ReceiverCompat` provides API-aware receiver registration:

- API 33 and newer: uses the flags overload with `RECEIVER_EXPORTED` to preserve
  the original receiver behavior, including broadcasts originating outside the
  package.
- Older Android: uses the original overload.

Thirty-five registration calls across 24 smali files were redirected through
this helper, including bundled Firebase, Crashlytics, Google Play Services,
ExoPlayer, AndroidX, and application code. The permission/handler overload is
covered too.

### 5. Android 12 `PendingIntent` mutability

Android 12 requires every `PendingIntent` to declare mutability. The old code
created 11 pending intents without `FLAG_IMMUTABLE` or `FLAG_MUTABLE`, causing
runtime failures.

`is.shortcut.compat.PendingIntentCompat` now adds `FLAG_IMMUTABLE` while
preserving existing flags such as `FLAG_UPDATE_CURRENT` and `FLAG_ONE_SHOT`.
Activity, broadcast, and service factories are provided.

### 6. Package visibility for launcher functionality

Evie must enumerate launchable applications. Android 11 introduced package
visibility filtering, which can otherwise make a launcher appear empty. The
manifest now declares `android.permission.QUERY_ALL_PACKAGES`.

Google Play treats this as a restricted permission. A Play Store submission
would need to satisfy the applicable policy for launcher applications.

### 7. Modern permission declarations

The manifest now includes:

- `ACCESS_COARSE_LOCATION`
- `READ_MEDIA_IMAGES`
- `POST_NOTIFICATIONS`
- `QUERY_ALL_PACKAGES`

Legacy storage permissions are constrained to Android versions where they still
have meaning:

- `READ_EXTERNAL_STORAGE`: `maxSdkVersion="32"`
- `WRITE_EXTERNAL_STORAGE`: `maxSdkVersion="28"`

The onboarding screen previously requested `ACCESS_FINE_LOCATION` alone. Modern
Android requires coarse location to be requested with fine location. Evie's
location implementation already accepts coarse location, so onboarding now asks
for coarse access.

The old onboarding also repeatedly requested the obsolete storage permission on
Android 13 and newer. `is.shortcut.compat.ModernCompat` limits that flow to API
27–32, preventing an ungrantable permission loop.

### 8. 64-bit and 16 KB page-size support

The original APK shipped only these 32-bit ARM libraries:

```text
libduktape.so
libgifimage.so
libimagepipeline.so
```

Their ELF load segments used 4 KB alignment. They also prevented installation on
64-bit-only devices.

Dependency versions were identified by comparing the original ARMv7 library
sizes and SHA-256 hashes against archived Maven artifacts:

| Library | Recovered dependency | Version |
| --- | --- | --- |
| `libduktape.so` | `com.squareup.duktape:duktape-android` | `1.1.0` |
| `libgifimage.so` | `com.facebook.fresco:animated-gif` | `1.4.0` |
| `libimagepipeline.so` | `com.facebook.fresco:imagepipeline` | `1.4.0` |

Both matching ARM64 (`arm64-v8a`) and 32-bit ARM (`armeabi-v7a`) variants
from those releases are included. This ensures full compatibility with both modern
64-bit devices and 32-bit userland devices (such as the Samsung Galaxy A13 4G).
The ARM64 ELF `LOAD` segments use 64 KB alignment, which is compatible with Android's
16 KB page-size requirement. The final APK is aligned using `zipalign -P 16` and
declares `android:pageSizeCompat="disabled"`, ensuring accidental regressions do
not silently use compatibility mode on 64-bit targets.

The release supports ARM64 and ARMv7 (32-bit ARM). x86 and x86_64 devices are
not supported by the published APK.

### 9. Screen and navigation compatibility

The original APK contained a `compatible-screens` block restricted to density
420. That block was removed and replaced with general screen support declarations
so installation is not limited to one density.

Evie contains extensive legacy `onBackPressed()` behavior. Predictive-back
dispatch is disabled with `android:enableOnBackInvokedCallback="false"` so these
handlers continue to run on API 36.

Android 16 ignores orientation and resizability restrictions on large screens.
The temporary `PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY` property preserves
Evie's portrait layout on API 36 while its legacy UI remains non-adaptive. Android
documents this escape hatch as temporary; a future API 37 rebuild will require a
real adaptive-layout migration.

### 10. Missing alarm receiver declaration

`LocalSearchManager` schedules an explicit daily alarm targeting
`LocalSearchBroadcastReceiver`, but the original manifest did not declare that
receiver. A non-exported declaration was added so scheduled local-search usage
decay can execute after process death.

### 11. Removed hidden Android predicate dependency

Fresco's memory-cache code referenced the non-SDK
`com.android.internal.util.Predicate` interface. The cache pipeline now uses an
app-local `com.facebook.common.internal.Predicate` interface with the same
single-method contract, removing its dependency on Android framework internals.

## Rebuilding

### Manual GitHub Actions build

`.github/workflows/signed-build.yml` has only a `workflow_dispatch` trigger. It
never runs for pushes or pull requests. Start it from **Actions → Signed Android
build → Run workflow**. Every run builds, aligns, signs, verifies, and uploads the
APK as a workflow artifact. The optional `publish_release` input also publishes
or replaces the GitHub Release assets.

Required repository Actions secrets:

- `EVIE_FIREBASE_API_KEY`
- `EVIE_GOOGLE_MAPS_API_KEY`
- `EVIE_YOUTUBE_API_KEY`
- `EVIE_ADS_SAFE_BROWSING_API_KEY`
- `EVIE_FABRIC_DEVELOPER_TOKEN`
- `EVIE_SIGNING_KEYSTORE_BASE64`
- `EVIE_SIGNING_STORE_PASSWORD`
- `EVIE_SIGNING_KEY_PASSWORD`

Required repository Actions variables:

- `EVIE_SIGNING_KEY_ALIAS`
- `EVIE_SIGNING_CERT_SHA256`

Secrets are injected into the runner's temporary checkout by
`scripts/inject-build-secrets.py`; neither their values nor the signing key are
stored in Git. The workflow uses SHA-pinned GitHub-maintained actions and verifies
the downloaded Apktool checksum, APK alignment, version, signature schemes, and
signing certificate before upload.

Android client API keys embedded in the resulting APK can still be extracted by
any installer. They must be restricted in Google Cloud to package `is.shortcut`,
the Evie Modern signing certificate, required APIs, and conservative quotas.
Credentials that must remain truly private require a server-side proxy and must
not be injected into an APK.

### Requirements

Validated toolchain:

- OpenJDK 17
- Apktool 3.0.2
- Android SDK Platform 36
- Android SDK Build Tools 35.0.0 or newer
- `zipalign`, `apksigner`, and `keytool`

Set paths for your machine:

```bash
export APKTOOL_JAR=/path/to/apktool_3.0.2.jar
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export BUILD_TOOLS="$ANDROID_SDK_ROOT/build-tools/35.0.0"
mkdir -p out
```

Build and align:

```bash
export EVIE_FIREBASE_API_KEY=your_restricted_firebase_key
export EVIE_GOOGLE_MAPS_API_KEY=your_restricted_maps_key
export EVIE_YOUTUBE_API_KEY=your_restricted_youtube_key
export EVIE_ADS_SAFE_BROWSING_API_KEY=your_restricted_safe_browsing_key
export EVIE_FABRIC_DEVELOPER_TOKEN=your_fabric_token
python3 scripts/inject-build-secrets.py

java -jar "$APKTOOL_JAR" b -f Evie-src \
  -o out/Evie-modern-unsigned.apk

"$BUILD_TOOLS/zipalign" -P 16 -f 4 \
  out/Evie-modern-unsigned.apk \
  out/Evie-modern-aligned.apk
```

Create a private signing key once. Do not commit it:

```bash
keytool -genkeypair -noprompt \
  -keystore evie-modern.keystore \
  -alias evie-modern \
  -keyalg RSA \
  -keysize 3072 \
  -validity 10000 \
  -dname "CN=Evie Modern"
```

Sign:

```bash
"$BUILD_TOOLS/apksigner" sign \
  --ks evie-modern.keystore \
  --ks-key-alias evie-modern \
  --out out/Evie-modern.apk \
  out/Evie-modern-aligned.apk
```

Verify before distribution:

```bash
"$BUILD_TOOLS/zipalign" -P 16 -c -v 4 out/Evie-modern.apk
"$BUILD_TOOLS/apksigner" verify --verbose --print-certs \
  out/Evie-modern.apk

apkanalyzer manifest application-id out/Evie-modern.apk
apkanalyzer manifest min-sdk out/Evie-modern.apk
apkanalyzer manifest target-sdk out/Evie-modern.apk
sha256sum out/Evie-modern.apk
```

## Signing and installation warning

The original Voxel private signing key is unavailable. This rebuild uses an
independent certificate:

```text
Subject: CN=Evie Modern, OU=Reverse Engineering, O=Local Development, C=SK
SHA-256: e0a5e262a0714e8dccafb18fee07dea4ca239f72d0a50ccba64a6fcfbb38b4fe
```

Android will not install this APK as an update over an original Voxel-signed
installation. The original package must be uninstalled first, which removes its
application data and launcher configuration. Back up anything important before
uninstalling.

Keep the Evie Modern private key secure and backed up. Future builds must use the
same key to update this release in place.

## Validation

The following checks were completed:

- Apktool rebuild completed without errors.
- APK Signature Schemes v1, v2, and v3 verified successfully.
- `zipalign -P 16 -c -v 4` completed successfully.
- Manifest inspection confirmed package `is.shortcut`, min SDK 23, and target
  SDK 36.
- Every shipped ARM64 ELF has 64 KB-aligned `LOAD` segments.
- Android 16/API 36 x86_64 emulator test used a temporary test-only x86_64 ABI
  build recovered from the same dependency versions.
- Clean install succeeded on Android 16.
- Onboarding cold-started and rendered correctly.
- Coarse location and contacts permission flow completed.
- Main launcher cold-started and remained running with no fatal exception.

The emulator logged caught `SecurityException`s while probing another launcher's
private provider and shortcut metadata. These did not terminate Evie and are
expected when Evie is not yet selected as the default launcher.

## Known limitations

- Evie's server-side services may no longer exist. News, recommendations, remote
  search, ads, analytics, sign-in, and push messaging may be partially or fully
  unavailable.
- A source checkout contains credential placeholders. Google-backed integrations
  authenticate only in builds produced after valid credentials are injected.
- Bundled Firebase, Google Play Services, Crashlytics, AndroidX, Fresco, OkHttp,
  and other dependencies remain 2018-era bytecode. Compatibility shims address
  observed platform blockers but do not modernize those SDKs internally.
- Notification permission is declared, but every legacy notification flow has
  not been redesigned around current runtime-permission UX.
- UI was designed for portrait phones. API 36 uses a temporary large-screen
  compatibility property rather than a full responsive-layout rewrite.
- Release supports ARM64 and ARMv7 (32-bit ARM). x86 and x86_64 devices are not supported.
- Google Play publication is not guaranteed. Restricted permissions, current
  Play policies, signing ownership, intellectual-property rights, and SDK policy
  requirements must be reviewed separately.
- JADX output contains decompiler artifacts and must not be treated as
  recompilable source.

## Security and provenance

Only the original APK and exact historical Maven artifacts matching its native
libraries were used. No third-party mod APK content is part of this repository or
release.

Legacy Google API keys and Fabric SDK developer tokens recovered from the
original APK and bundled dependencies were replaced by named placeholders in
both authoritative smali and reference decompilation output. The manual build
workflow restores their values from encrypted Actions secrets only on its runner.

Before installing any binary, compare its SHA-256 checksum and signing certificate
with values published here and in the GitHub Release notes.

## Legal notice

Evie, its artwork, bundled fonts, trademarks, and original application code belong
to their respective owners. This repository documents a compatibility and
preservation effort. It does not claim original authorship or grant rights beyond
those already held by the user. Verify that you have permission to use, modify,
and redistribute the application in your jurisdiction before publishing or
installing it.
