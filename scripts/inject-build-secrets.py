#!/usr/bin/env python3
"""Inject CI secrets into the Apktool build tree without printing them."""

from __future__ import annotations

import os
import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SOURCE_ROOT = ROOT / "Evie-src"

TARGET_FILES = (
    SOURCE_ROOT / "res/values/strings.xml",
    SOURCE_ROOT / "smali/com/evie/sidescreen/relatedcontent/YouTubeVideoHandler.smali",
    SOURCE_ROOT / "smali/com/google/android/gms/internal/ads/zznk.smali",
    SOURCE_ROOT / "smali/com/crashlytics/android/beta/CheckForUpdatesRequest.smali",
    SOURCE_ROOT
    / "smali_classes2/io/fabric/sdk/android/services/common/AbstractSpiCall.smali",
)

SECRET_SPECS = {
    "INJECT_FIREBASE_API_KEY": ("EVIE_FIREBASE_API_KEY", 2, r"AIza[0-9A-Za-z_-]{35}"),
    "INJECT_GOOGLE_MAPS_API_KEY": ("EVIE_GOOGLE_MAPS_API_KEY", 1, r"AIza[0-9A-Za-z_-]{35}"),
    "INJECT_YOUTUBE_API_KEY": ("EVIE_YOUTUBE_API_KEY", 1, r"AIza[0-9A-Za-z_-]{35}"),
    "INJECT_ADS_SAFE_BROWSING_API_KEY": (
        "EVIE_ADS_SAFE_BROWSING_API_KEY",
        1,
        r"AIza[0-9A-Za-z_-]{35}",
    ),
    "INJECT_FABRIC_DEVELOPER_TOKEN": (
        "EVIE_FABRIC_DEVELOPER_TOKEN",
        3,
        r"[0-9a-f]{40}",
    ),
}

DEFAULT_FALLBACKS = {
    "INJECT_FIREBASE_API_KEY": "AIzaSy" + "0" * 33,
    "INJECT_GOOGLE_MAPS_API_KEY": "AIzaSy" + "1" * 33,
    "INJECT_YOUTUBE_API_KEY": "AIzaSy" + "2" * 33,
    "INJECT_ADS_SAFE_BROWSING_API_KEY": "AIzaSy" + "3" * 33,
    "INJECT_FABRIC_DEVELOPER_TOKEN": "0" * 40,
}


def fail(message: str) -> None:
    print(f"error: {message}", file=sys.stderr)
    raise SystemExit(1)


def main() -> None:
    missing_files = [path for path in TARGET_FILES if not path.is_file()]
    if missing_files:
        fail("one or more expected build-source files are missing")

    contents = {path: path.read_text(encoding="utf-8") for path in TARGET_FILES}

    for placeholder, (environment_name, expected_count, pattern) in SECRET_SPECS.items():
        value = os.environ.get(environment_name, "").strip()
        if not value:
            value = DEFAULT_FALLBACKS[placeholder]
            print(f"Notice: {environment_name} not set; using fallback dummy key")
        elif not re.fullmatch(pattern, value):
            fail(f"{environment_name} has an unexpected format")

        count = sum(text.count(placeholder) for text in contents.values())
        if count != expected_count:
            fail(
                f"{placeholder} occurred {count} times; expected {expected_count}. "
                "Refusing an incomplete injection."
            )

        contents = {
            path: text.replace(placeholder, value) for path, text in contents.items()
        }
        print(f"Injected {environment_name} into {expected_count} location(s)")

    for path, text in contents.items():
        path.write_text(text, encoding="utf-8")

    remaining = [
        placeholder
        for placeholder in SECRET_SPECS
        if any(placeholder in text for text in contents.values())
    ]
    if remaining:
        fail("one or more injection placeholders remain")


if __name__ == "__main__":
    main()
