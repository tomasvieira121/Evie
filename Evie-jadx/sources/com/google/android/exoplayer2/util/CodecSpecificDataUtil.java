package com.google.android.exoplayer2.util;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import io.fabric.sdk.android.services.events.EventsFilesManager;

/* JADX INFO: loaded from: classes.dex */
public final class CodecSpecificDataUtil {
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    private static final int[] AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, EventsFilesManager.MAX_BYTE_SIZE_PER_FILE, 7350};
    private static final int[] AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static Pair<Integer, Integer> parseAacAudioSpecificConfig(byte[] bArr) throws ParserException {
        return parseAacAudioSpecificConfig(new ParsableBitArray(bArr), false);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004a A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:20:0x0051  */
    /* JADX WARN: Code duplicated, block: B:22:0x0058  */
    public static Pair<Integer, Integer> parseAacAudioSpecificConfig(ParsableBitArray parsableBitArray, boolean z) throws ParserException {
        int bits;
        int aacAudioObjectType = getAacAudioObjectType(parsableBitArray);
        int aacSamplingFrequency = getAacSamplingFrequency(parsableBitArray);
        int bits2 = parsableBitArray.readBits(4);
        if (aacAudioObjectType == 5 || aacAudioObjectType == 29) {
            aacSamplingFrequency = getAacSamplingFrequency(parsableBitArray);
            aacAudioObjectType = getAacAudioObjectType(parsableBitArray);
            if (aacAudioObjectType == 22) {
                bits2 = parsableBitArray.readBits(4);
            }
        }
        if (z) {
            if (aacAudioObjectType != 17) {
                switch (aacAudioObjectType) {
                    default:
                        switch (aacAudioObjectType) {
                            default:
                                switch (aacAudioObjectType) {
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                        break;
                                    default:
                                        throw new ParserException("Unsupported audio object type: " + aacAudioObjectType);
                                }
                            case 6:
                            case 7:
                                parseGaSpecificConfig(parsableBitArray, aacAudioObjectType, bits2);
                                switch (aacAudioObjectType) {
                                    case 17:
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                        bits = parsableBitArray.readBits(2);
                                        if (bits != 2 || bits == 3) {
                                            throw new ParserException("Unsupported epConfig: " + bits);
                                        }
                                        break;
                                }
                                break;
                        }
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        parseGaSpecificConfig(parsableBitArray, aacAudioObjectType, bits2);
                        switch (aacAudioObjectType) {
                            case 17:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                                bits = parsableBitArray.readBits(2);
                                if (bits != 2) {
                                    break;
                                }
                                throw new ParserException("Unsupported epConfig: " + bits);
                        }
                }
            }
            parseGaSpecificConfig(parsableBitArray, aacAudioObjectType, bits2);
            switch (aacAudioObjectType) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    bits = parsableBitArray.readBits(2);
                    if (bits != 2) {
                        break;
                    }
                    throw new ParserException("Unsupported epConfig: " + bits);
            }
        }
        int i = AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE[bits2];
        Assertions.checkArgument(i != -1);
        return Pair.create(Integer.valueOf(aacSamplingFrequency), Integer.valueOf(i));
    }

    public static byte[] buildAacAudioSpecificConfig(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] buildNalUnit(byte[] bArr, int i, int i2) {
        byte[] bArr2 = NAL_START_CODE;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, NAL_START_CODE.length, i2);
        return bArr3;
    }

    private static int getAacAudioObjectType(ParsableBitArray parsableBitArray) {
        int bits = parsableBitArray.readBits(5);
        return bits == 31 ? parsableBitArray.readBits(6) + 32 : bits;
    }

    private static int getAacSamplingFrequency(ParsableBitArray parsableBitArray) {
        int bits = parsableBitArray.readBits(4);
        if (bits == 15) {
            return parsableBitArray.readBits(24);
        }
        Assertions.checkArgument(bits < 13);
        return AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[bits];
    }

    private static void parseGaSpecificConfig(ParsableBitArray parsableBitArray, int i, int i2) {
        parsableBitArray.skipBits(1);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(14);
        }
        boolean bit = parsableBitArray.readBit();
        if (i2 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i == 6 || i == 20) {
            parsableBitArray.skipBits(3);
        }
        if (bit) {
            if (i == 22) {
                parsableBitArray.skipBits(16);
            }
            if (i == 17 || i == 19 || i == 20 || i == 23) {
                parsableBitArray.skipBits(3);
            }
            parsableBitArray.skipBits(1);
        }
    }
}
