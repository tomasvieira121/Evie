#!/usr/bin/env python3
"""Download the matching armeabi-v7a native libraries from Maven Central."""

import io
import urllib.request
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DEST_DIR = ROOT / "Evie-src" / "lib" / "armeabi-v7a"

AARS = [
    (
        "https://repo1.maven.org/maven2/com/squareup/duktape/duktape-android/1.1.0/duktape-android-1.1.0.aar",
        "jni/armeabi-v7a/libduktape.so",
        "libduktape.so",
    ),
    (
        "https://repo1.maven.org/maven2/com/facebook/fresco/animated-gif/1.4.0/animated-gif-1.4.0.aar",
        "jni/armeabi-v7a/libgifimage.so",
        "libgifimage.so",
    ),
    (
        "https://repo1.maven.org/maven2/com/facebook/fresco/imagepipeline/1.4.0/imagepipeline-1.4.0.aar",
        "jni/armeabi-v7a/libimagepipeline.so",
        "libimagepipeline.so",
    ),
]


def main():
    DEST_DIR.mkdir(parents=True, exist_ok=True)
    for url, internal_path, output_name in AARS:
        print(f"Downloading {output_name} from {url}...")
        req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0"})
        with urllib.request.urlopen(req) as resp:
            data = resp.read()
        with zipfile.ZipFile(io.BytesIO(data)) as z:
            so_bytes = z.read(internal_path)
            target = DEST_DIR / output_name
            target.write_bytes(so_bytes)
            print(f"Saved {target} ({len(so_bytes)} bytes)")

    print("All armeabi-v7a libraries downloaded successfully.")


if __name__ == "__main__":
    main()
