package com.google.android.exoplayer2.audio;

import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.ParsableBitArray;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DtsUtil {
    private static final int[] CHANNELS_BY_AMODE = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] SAMPLE_RATE_BY_SFREQ = {-1, EventsFilesManager.MAX_BYTE_SIZE_PER_FILE, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] TWICE_BITRATE_KBPS_BY_RATE = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, CodedOutputStream.DEFAULT_BUFFER_SIZE, 6144, 7680};

    public static boolean isSyncWord(int i) {
        return i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368;
    }

    public static Format parseDtsFormat(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        ParsableBitArray normalizedFrameHeader = getNormalizedFrameHeader(bArr);
        normalizedFrameHeader.skipBits(60);
        int i = CHANNELS_BY_AMODE[normalizedFrameHeader.readBits(6)];
        int i2 = SAMPLE_RATE_BY_SFREQ[normalizedFrameHeader.readBits(4)];
        int bits = normalizedFrameHeader.readBits(5);
        int[] iArr = TWICE_BITRATE_KBPS_BY_RATE;
        int i3 = bits >= iArr.length ? -1 : (iArr[bits] * 1000) / 2;
        normalizedFrameHeader.skipBits(10);
        return Format.createAudioSampleFormat(str, "audio/vnd.dts", null, i3, -1, i + (normalizedFrameHeader.readBits(2) > 0 ? 1 : 0), i2, null, drmInitData, 0, str2);
    }

    public static int parseDtsAudioSampleCount(byte[] bArr) {
        int i;
        byte b = bArr[0];
        if (b != 31) {
            switch (b) {
                case -2:
                    i = ((bArr[4] & 252) >> 2) | ((bArr[5] & 1) << 6);
                    break;
                case -1:
                    i = ((bArr[7] & 60) >> 2) | ((bArr[4] & 7) << 4);
                    break;
                default:
                    i = ((bArr[5] & 252) >> 2) | ((bArr[4] & 1) << 6);
                    break;
            }
        } else {
            i = ((bArr[6] & 60) >> 2) | ((bArr[5] & 7) << 4);
        }
        return (i + 1) * 32;
    }

    public static int parseDtsAudioSampleCount(ByteBuffer byteBuffer) {
        int i;
        int iPosition = byteBuffer.position();
        byte b = byteBuffer.get(iPosition);
        if (b != 31) {
            switch (b) {
                case -2:
                    i = ((byteBuffer.get(iPosition + 4) & 252) >> 2) | ((byteBuffer.get(iPosition + 5) & 1) << 6);
                    break;
                case -1:
                    i = ((byteBuffer.get(iPosition + 7) & 60) >> 2) | ((byteBuffer.get(iPosition + 4) & 7) << 4);
                    break;
                default:
                    i = ((byteBuffer.get(iPosition + 5) & 252) >> 2) | ((byteBuffer.get(iPosition + 4) & 1) << 6);
                    break;
            }
        } else {
            i = ((byteBuffer.get(iPosition + 6) & 60) >> 2) | ((byteBuffer.get(iPosition + 5) & 7) << 4);
        }
        return (i + 1) * 32;
    }

    public static int getDtsFrameSize(byte[] bArr) {
        int i;
        boolean z = false;
        byte b = bArr[0];
        if (b != 31) {
            switch (b) {
                case -2:
                    i = (((bArr[6] & 240) >> 4) | ((bArr[4] & 3) << 12) | ((bArr[7] & 255) << 4)) + 1;
                    break;
                case -1:
                    i = (((bArr[9] & 60) >> 2) | ((bArr[7] & 3) << 12) | ((bArr[6] & 255) << 4)) + 1;
                    z = true;
                    break;
                default:
                    i = (((bArr[7] & 240) >> 4) | ((bArr[5] & 3) << 12) | ((bArr[6] & 255) << 4)) + 1;
                    break;
            }
        } else {
            i = (((bArr[8] & 60) >> 2) | ((bArr[6] & 3) << 12) | ((bArr[7] & 255) << 4)) + 1;
            z = true;
        }
        return z ? (i * 16) / 14 : i;
    }

    private static ParsableBitArray getNormalizedFrameHeader(byte[] bArr) {
        if (bArr[0] == 127) {
            return new ParsableBitArray(bArr);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (isLittleEndianFrameHeader(bArrCopyOf)) {
            for (int i = 0; i < bArrCopyOf.length - 1; i += 2) {
                byte b = bArrCopyOf[i];
                int i2 = i + 1;
                bArrCopyOf[i] = bArrCopyOf[i2];
                bArrCopyOf[i2] = b;
            }
        }
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArrCopyOf);
        if (bArrCopyOf[0] == 31) {
            ParsableBitArray parsableBitArray2 = new ParsableBitArray(bArrCopyOf);
            while (parsableBitArray2.bitsLeft() >= 16) {
                parsableBitArray2.skipBits(2);
                parsableBitArray.putInt(parsableBitArray2.readBits(14), 14);
            }
        }
        parsableBitArray.reset(bArrCopyOf);
        return parsableBitArray;
    }

    private static boolean isLittleEndianFrameHeader(byte[] bArr) {
        return bArr[0] == -2 || bArr[0] == -1;
    }
}
