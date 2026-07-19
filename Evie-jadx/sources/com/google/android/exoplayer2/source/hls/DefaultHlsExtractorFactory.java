package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.p004ts.Ac3Extractor;
import com.google.android.exoplayer2.extractor.p004ts.AdtsExtractor;
import com.google.android.exoplayer2.extractor.p004ts.DefaultTsPayloadReaderFactory;
import com.google.android.exoplayer2.extractor.p004ts.TsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultHlsExtractorFactory implements HlsExtractorFactory {
    @Override // com.google.android.exoplayer2.source.hls.HlsExtractorFactory
    public Pair<Extractor, Boolean> createExtractor(Extractor extractor, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, TimestampAdjuster timestampAdjuster) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            lastPathSegment = "";
        }
        boolean z = false;
        if ("text/vtt".equals(format.sampleMimeType) || lastPathSegment.endsWith(".webvtt") || lastPathSegment.endsWith(".vtt")) {
            extractor = new WebvttExtractor(format.language, timestampAdjuster);
        } else if (lastPathSegment.endsWith(".aac")) {
            extractor = new AdtsExtractor();
            z = true;
        } else if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
            extractor = new Ac3Extractor();
            z = true;
        } else if (lastPathSegment.endsWith(".mp3")) {
            extractor = new Mp3Extractor(0, 0L);
            z = true;
        } else if (extractor == null) {
            if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5)) {
                extractor = new FragmentedMp4Extractor(0, timestampAdjuster, null, drmInitData, list != null ? list : Collections.emptyList());
            } else {
                int i = 16;
                if (list != null) {
                    i = 48;
                } else {
                    list = Collections.emptyList();
                }
                String str = format.codecs;
                if (!TextUtils.isEmpty(str)) {
                    if (!"audio/mp4a-latm".equals(MimeTypes.getAudioMediaMimeType(str))) {
                        i |= 2;
                    }
                    if (!"video/avc".equals(MimeTypes.getVideoMediaMimeType(str))) {
                        i |= 4;
                    }
                }
                extractor = new TsExtractor(2, timestampAdjuster, new DefaultTsPayloadReaderFactory(i, list));
            }
        }
        return Pair.create(extractor, Boolean.valueOf(z));
    }
}
