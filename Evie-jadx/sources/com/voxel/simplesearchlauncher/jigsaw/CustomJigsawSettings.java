package com.voxel.simplesearchlauncher.jigsaw;

import com.evie.jigsaw.JigsawSettings;
import is.shortcut.R;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomJigsawSettings {
    public static void apply(JigsawSettings.JigsawSettingsBuilder jigsawSettingsBuilder) {
        jigsawSettingsBuilder.ads(false).shortcuts(true).errorImage(R.drawable.sad_emoji);
    }
}
