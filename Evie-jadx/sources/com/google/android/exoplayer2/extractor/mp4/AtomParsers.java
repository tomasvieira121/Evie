package com.google.android.exoplayer2.extractor.mp4;

import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.HevcConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AtomParsers {
    private static final int TYPE_vide = Util.getIntegerCodeForString("vide");
    private static final int TYPE_soun = Util.getIntegerCodeForString("soun");
    private static final int TYPE_text = Util.getIntegerCodeForString("text");
    private static final int TYPE_sbtl = Util.getIntegerCodeForString("sbtl");
    private static final int TYPE_subt = Util.getIntegerCodeForString("subt");
    private static final int TYPE_clcp = Util.getIntegerCodeForString("clcp");
    private static final int TYPE_meta = Util.getIntegerCodeForString("meta");

    private interface SampleSizeBox {
        int getSampleCount();

        boolean isFixedSampleSize();

        int readNextSampleSize();
    }

    public static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int hdlr = parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data);
        if (hdlr == -1) {
            return null;
        }
        TkhdData tkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        long j2 = j == -9223372036854775807L ? tkhd.duration : j;
        long mvhd = parseMvhd(leafAtom.data);
        long jScaleLargeTimestamp = j2 == -9223372036854775807L ? -9223372036854775807L : Util.scaleLargeTimestamp(j2, 1000000L, mvhd);
        Atom.ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        Pair<Long, String> mdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        StsdData stsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data, tkhd.f390id, tkhd.rotationDegrees, (String) mdhd.second, drmInitData, z2);
        if (z) {
            jArr = null;
            jArr2 = null;
        } else {
            Pair<long[], long[]> edts = parseEdts(containerAtom.getContainerAtomOfType(Atom.TYPE_edts));
            long[] jArr3 = (long[]) edts.first;
            jArr2 = (long[]) edts.second;
            jArr = jArr3;
        }
        if (stsd.format == null) {
            return null;
        }
        return new Track(tkhd.f390id, hdlr, ((Long) mdhd.first).longValue(), mvhd, jScaleLargeTimestamp, stsd.format, stsd.requiredSampleTransformation, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength, jArr, jArr2);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z;
        int unsignedIntToInt;
        int unsignedIntToInt2;
        int i;
        long j;
        int i2;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int[] iArr2;
        int[] iArr3;
        long[] jArr3;
        int[] iArr4;
        int i3;
        int[] iArr5;
        int i4;
        int unsignedIntToInt3;
        int i5;
        Track track2 = track;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz);
        if (leafAtomOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafAtomOfType);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stz2);
            if (leafAtomOfType2 == null) {
                throw new ParserException("Track has no sample table size information");
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(new long[0], new int[0], 0, new long[0], new int[0], -9223372036854775807L);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_co64);
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stsc).data;
        ParsableByteArray parsableByteArray3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stts).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray4 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray5 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
        parsableByteArray3.setPosition(12);
        int unsignedIntToInt4 = parsableByteArray3.readUnsignedIntToInt() - 1;
        int unsignedIntToInt5 = parsableByteArray3.readUnsignedIntToInt();
        int unsignedIntToInt6 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            unsignedIntToInt = parsableByteArray5.readUnsignedIntToInt();
        } else {
            unsignedIntToInt = 0;
        }
        int unsignedIntToInt7 = -1;
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            unsignedIntToInt2 = parsableByteArray4.readUnsignedIntToInt();
            if (unsignedIntToInt2 > 0) {
                unsignedIntToInt7 = parsableByteArray4.readUnsignedIntToInt() - 1;
            } else {
                parsableByteArray4 = null;
            }
        } else {
            unsignedIntToInt2 = 0;
        }
        long j2 = 0;
        if (!(stz2SampleSizeBox.isFixedSampleSize() && "audio/raw".equals(track2.format.sampleMimeType) && unsignedIntToInt4 == 0 && unsignedIntToInt == 0 && unsignedIntToInt2 == 0)) {
            long[] jArr4 = new long[sampleCount];
            int[] iArr6 = new int[sampleCount];
            long[] jArr5 = new long[sampleCount];
            int i6 = unsignedIntToInt2;
            int[] iArr7 = new int[sampleCount];
            int i7 = unsignedIntToInt4;
            int unsignedIntToInt8 = unsignedIntToInt5;
            int i8 = unsignedIntToInt6;
            int i9 = unsignedIntToInt;
            int i10 = unsignedIntToInt7;
            long j3 = 0;
            long j4 = 0;
            int i11 = 0;
            int i12 = 0;
            int unsignedIntToInt9 = 0;
            int i13 = 0;
            int i14 = i6;
            int i15 = 0;
            while (i12 < sampleCount) {
                long j5 = j4;
                int i16 = i15;
                while (i16 == 0) {
                    Assertions.checkState(chunkIterator.moveNext());
                    j5 = chunkIterator.offset;
                    i16 = chunkIterator.numSamples;
                    i14 = i14;
                    i8 = i8;
                }
                int i17 = i14;
                int i18 = i8;
                if (parsableByteArray5 != null) {
                    while (unsignedIntToInt9 == 0 && i9 > 0) {
                        unsignedIntToInt9 = parsableByteArray5.readUnsignedIntToInt();
                        i13 = parsableByteArray5.readInt();
                        i9--;
                    }
                    unsignedIntToInt9--;
                    i4 = i13;
                } else {
                    i4 = i13;
                }
                jArr4[i12] = j5;
                iArr6[i12] = stz2SampleSizeBox.readNextSampleSize();
                if (iArr6[i12] > i11) {
                    i11 = iArr6[i12];
                }
                jArr5[i12] = ((long) i4) + j3;
                iArr7[i12] = parsableByteArray4 == null ? 1 : 0;
                if (i12 == i10) {
                    iArr7[i12] = 1;
                    int i19 = i17 - 1;
                    if (i19 > 0) {
                        unsignedIntToInt3 = parsableByteArray4.readUnsignedIntToInt() - 1;
                        i17 = i19;
                    } else {
                        unsignedIntToInt3 = i10;
                        i17 = i19;
                    }
                } else {
                    unsignedIntToInt3 = i10;
                }
                j3 += (long) i18;
                unsignedIntToInt8--;
                if (unsignedIntToInt8 == 0) {
                    i5 = i7;
                    if (i5 > 0) {
                        i7 = i5 - 1;
                        unsignedIntToInt8 = parsableByteArray3.readUnsignedIntToInt();
                        i18 = parsableByteArray3.readInt();
                    }
                    long j6 = j5 + ((long) iArr6[i12]);
                    i12++;
                    int i20 = i18;
                    i10 = unsignedIntToInt3;
                    i15 = i16 - 1;
                    i8 = i20;
                    i13 = i4;
                    i14 = i17;
                    j4 = j6;
                    stz2SampleSizeBox = stz2SampleSizeBox;
                    sampleCount = sampleCount;
                } else {
                    i5 = i7;
                }
                i7 = i5;
                long j7 = j5 + ((long) iArr6[i12]);
                i12++;
                int i21 = i18;
                i10 = unsignedIntToInt3;
                i15 = i16 - 1;
                i8 = i21;
                i13 = i4;
                i14 = i17;
                j4 = j7;
                stz2SampleSizeBox = stz2SampleSizeBox;
                sampleCount = sampleCount;
            }
            int i22 = i14;
            int i23 = i13;
            i = sampleCount;
            int i24 = i7;
            j = j3 + ((long) i23);
            Assertions.checkArgument(unsignedIntToInt9 == 0);
            while (i9 > 0) {
                Assertions.checkArgument(parsableByteArray5.readUnsignedIntToInt() == 0);
                parsableByteArray5.readInt();
                i9--;
            }
            if (i22 == 0 && unsignedIntToInt8 == 0 && i15 == 0 && i24 == 0) {
                track2 = track;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Inconsistent stbl box for track ");
                track2 = track;
                sb.append(track2.f391id);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i22);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(unsignedIntToInt8);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i15);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(i24);
                Log.w("AtomParsers", sb.toString());
            }
            i2 = i11;
            jArr = jArr4;
            iArr = iArr7;
            jArr2 = jArr5;
            iArr2 = iArr6;
        } else {
            i = sampleCount;
            SampleSizeBox sampleSizeBox = stz2SampleSizeBox;
            long[] jArr6 = new long[chunkIterator.length];
            int[] iArr8 = new int[chunkIterator.length];
            while (chunkIterator.moveNext()) {
                jArr6[chunkIterator.index] = chunkIterator.offset;
                iArr8[chunkIterator.index] = chunkIterator.numSamples;
            }
            FixedSampleSizeRechunker.Results resultsRechunk = FixedSampleSizeRechunker.rechunk(sampleSizeBox.readNextSampleSize(), jArr6, iArr8, unsignedIntToInt6);
            long[] jArr7 = resultsRechunk.offsets;
            int[] iArr9 = resultsRechunk.sizes;
            int i25 = resultsRechunk.maximumSize;
            long[] jArr8 = resultsRechunk.timestamps;
            int[] iArr10 = resultsRechunk.flags;
            j = resultsRechunk.duration;
            i2 = i25;
            jArr = jArr7;
            iArr = iArr10;
            jArr2 = jArr8;
            iArr2 = iArr9;
        }
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(j, 1000000L, track2.timescale);
        if (track2.editListDurations == null || gaplessInfoHolder.hasGaplessInfo()) {
            Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
            return new TrackSampleTable(jArr, iArr2, i2, jArr2, iArr, jScaleLargeTimestamp);
        }
        if (track2.editListDurations.length == 1 && track2.type == 1 && jArr2.length >= 2) {
            long j8 = track2.editListMediaTimes[0];
            long jScaleLargeTimestamp2 = j8 + Util.scaleLargeTimestamp(track2.editListDurations[0], track2.timescale, track2.movieTimescale);
            if (jArr2[0] <= j8 && j8 < jArr2[1] && jArr2[jArr2.length - 1] < jScaleLargeTimestamp2 && jScaleLargeTimestamp2 <= j) {
                long jScaleLargeTimestamp3 = Util.scaleLargeTimestamp(j8 - jArr2[0], track2.format.sampleRate, track2.timescale);
                long jScaleLargeTimestamp4 = Util.scaleLargeTimestamp(j - jScaleLargeTimestamp2, track2.format.sampleRate, track2.timescale);
                if ((jScaleLargeTimestamp3 != 0 || jScaleLargeTimestamp4 != 0) && jScaleLargeTimestamp3 <= 2147483647L && jScaleLargeTimestamp4 <= 2147483647L) {
                    gaplessInfoHolder.encoderDelay = (int) jScaleLargeTimestamp3;
                    gaplessInfoHolder.encoderPadding = (int) jScaleLargeTimestamp4;
                    Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
                    return new TrackSampleTable(jArr, iArr2, i2, jArr2, iArr, jScaleLargeTimestamp);
                }
            }
        }
        if (track2.editListDurations.length == 1 && track2.editListDurations[0] == 0) {
            long j9 = track2.editListMediaTimes[0];
            for (int i26 = 0; i26 < jArr2.length; i26++) {
                jArr2[i26] = Util.scaleLargeTimestamp(jArr2[i26] - j9, 1000000L, track2.timescale);
            }
            return new TrackSampleTable(jArr, iArr2, i2, jArr2, iArr, Util.scaleLargeTimestamp(j - j9, 1000000L, track2.timescale));
        }
        boolean z2 = track2.type == 1;
        int i27 = 0;
        boolean z3 = false;
        int i28 = 0;
        int i29 = 0;
        while (i27 < track2.editListDurations.length) {
            long j10 = jScaleLargeTimestamp;
            long j11 = track2.editListMediaTimes[i27];
            if (j11 != -1) {
                long jScaleLargeTimestamp5 = Util.scaleLargeTimestamp(track2.editListDurations[i27], track2.timescale, track2.movieTimescale);
                int iBinarySearchCeil = Util.binarySearchCeil(jArr2, j11, true, true);
                int iBinarySearchCeil2 = Util.binarySearchCeil(jArr2, j11 + jScaleLargeTimestamp5, z2, false);
                i28 += iBinarySearchCeil2 - iBinarySearchCeil;
                z3 = (i29 != iBinarySearchCeil) | z3;
                i29 = iBinarySearchCeil2;
            }
            i27++;
            i2 = i2;
            iArr2 = iArr2;
            jScaleLargeTimestamp = j10;
        }
        int[] iArr11 = iArr2;
        int i30 = i2;
        long j12 = jScaleLargeTimestamp;
        boolean z4 = (i28 != i) | z3;
        long[] jArr9 = z4 ? new long[i28] : jArr;
        int[] iArr12 = z4 ? new int[i28] : iArr11;
        int i31 = z4 ? 0 : i30;
        int[] iArr13 = z4 ? new int[i28] : iArr;
        long[] jArr10 = new long[i28];
        int i32 = i31;
        int i33 = 0;
        int i34 = 0;
        while (i33 < track2.editListDurations.length) {
            long j13 = track2.editListMediaTimes[i33];
            long j14 = track2.editListDurations[i33];
            if (j13 != -1) {
                int i35 = i32;
                int[] iArr14 = iArr13;
                jArr3 = jArr10;
                long jScaleLargeTimestamp6 = Util.scaleLargeTimestamp(j14, track2.timescale, track2.movieTimescale) + j13;
                int iBinarySearchCeil3 = Util.binarySearchCeil(jArr2, j13, true, true);
                int iBinarySearchCeil4 = Util.binarySearchCeil(jArr2, jScaleLargeTimestamp6, z2, false);
                if (z4) {
                    int i36 = iBinarySearchCeil4 - iBinarySearchCeil3;
                    System.arraycopy(jArr, iBinarySearchCeil3, jArr9, i34, i36);
                    iArr4 = iArr11;
                    System.arraycopy(iArr4, iBinarySearchCeil3, iArr12, i34, i36);
                    iArr5 = iArr14;
                    System.arraycopy(iArr, iBinarySearchCeil3, iArr5, i34, i36);
                } else {
                    iArr4 = iArr11;
                    iArr5 = iArr14;
                }
                i3 = i35;
                while (iBinarySearchCeil3 < iBinarySearchCeil4) {
                    int[] iArr15 = iArr5;
                    int i37 = iBinarySearchCeil4;
                    long j15 = j13;
                    jArr3[i34] = Util.scaleLargeTimestamp(j2, 1000000L, track2.movieTimescale) + Util.scaleLargeTimestamp(jArr2[iBinarySearchCeil3] - j13, 1000000L, track2.timescale);
                    if (z4 && iArr12[i34] > i3) {
                        i3 = iArr4[iBinarySearchCeil3];
                    }
                    i34++;
                    iBinarySearchCeil3++;
                    j13 = j15;
                    iBinarySearchCeil4 = i37;
                    iArr5 = iArr15;
                }
                iArr3 = iArr5;
            } else {
                iArr3 = iArr13;
                jArr3 = jArr10;
                int i38 = i32;
                iArr4 = iArr11;
                z2 = z2;
                i3 = i38;
            }
            j2 += j14;
            i33++;
            z2 = z2;
            iArr13 = iArr3;
            iArr11 = iArr4;
            i32 = i3;
            jArr10 = jArr3;
        }
        long[] jArr11 = jArr10;
        int i39 = i32;
        int[] iArr16 = iArr11;
        long jScaleLargeTimestamp7 = Util.scaleLargeTimestamp(j2, 1000000L, track2.timescale);
        boolean z5 = false;
        for (int i40 = 0; i40 < iArr13.length && !z5; i40++) {
            z5 |= (iArr13[i40] & 1) != 0;
        }
        if (!z5) {
            Log.w("AtomParsers", "Ignoring edit list: Edited sample sequence does not contain a sync sample.");
            Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
            return new TrackSampleTable(jArr, iArr16, i30, jArr2, iArr, j12);
        }
        return new TrackSampleTable(jArr9, iArr12, i39, jArr11, iArr13, jScaleLargeTimestamp7);
    }

    public static Metadata parseUdta(Atom.LeafAtom leafAtom, boolean z) {
        if (z) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int i = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_meta) {
                parsableByteArray.setPosition(position);
                return parseMetaAtom(parsableByteArray, position + i);
            }
            parsableByteArray.skipBytes(i - 8);
        }
        return null;
    }

    private static Metadata parseMetaAtom(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_ilst) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + i2);
            }
            parsableByteArray.skipBytes(i2 - 8);
        }
        return null;
    }

    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry ilstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (ilstElement != null) {
                arrayList.add(ilstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        boolean z;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        int i = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i2 = fullAtomVersion == 0 ? 4 : 8;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= i2) {
                z = true;
                break;
            }
            if (parsableByteArray.data[position + i4] != -1) {
                z = false;
                break;
            }
            i4++;
        }
        long j = -9223372036854775807L;
        if (z) {
            parsableByteArray.skipBytes(i2);
        } else {
            long unsignedInt = fullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (unsignedInt != 0) {
                j = unsignedInt;
            }
        }
        parsableByteArray.skipBytes(16);
        int i5 = parsableByteArray.readInt();
        int i6 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int i7 = parsableByteArray.readInt();
        int i8 = parsableByteArray.readInt();
        if (i5 == 0 && i6 == 65536 && i7 == -65536 && i8 == 0) {
            i3 = 90;
        } else if (i5 == 0 && i6 == -65536 && i7 == 65536 && i8 == 0) {
            i3 = 270;
        } else if (i5 == -65536 && i6 == 0 && i7 == 0 && i8 == -65536) {
            i3 = 180;
        }
        return new TkhdData(i, j, i3);
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        int i = parsableByteArray.readInt();
        if (i == TYPE_soun) {
            return 1;
        }
        if (i == TYPE_vide) {
            return 2;
        }
        if (i == TYPE_text || i == TYPE_sbtl || i == TYPE_subt || i == TYPE_clcp) {
            return 3;
        }
        return i == TYPE_meta ? 4 : -1;
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 4 : 8);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(unsignedInt), "" + ((char) (((unsignedShort >> 10) & 31) + 96)) + ((char) (((unsignedShort >> 5) & 31) + 96)) + ((char) ((unsignedShort & 31) + 96)));
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        parsableByteArray.setPosition(12);
        int i3 = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(i3);
        for (int i4 = 0; i4 < i3; i4++) {
            int position = parsableByteArray.getPosition();
            int i5 = parsableByteArray.readInt();
            Assertions.checkArgument(i5 > 0, "childAtomSize should be positive");
            int i6 = parsableByteArray.readInt();
            if (i6 == Atom.TYPE_avc1 || i6 == Atom.TYPE_avc3 || i6 == Atom.TYPE_encv || i6 == Atom.TYPE_mp4v || i6 == Atom.TYPE_hvc1 || i6 == Atom.TYPE_hev1 || i6 == Atom.TYPE_s263 || i6 == Atom.TYPE_vp08 || i6 == Atom.TYPE_vp09) {
                parseVideoSampleEntry(parsableByteArray, i6, position, i5, i, i2, drmInitData, stsdData, i4);
            } else if (i6 == Atom.TYPE_mp4a || i6 == Atom.TYPE_enca || i6 == Atom.TYPE_ac_3 || i6 == Atom.TYPE_ec_3 || i6 == Atom.TYPE_dtsc || i6 == Atom.TYPE_dtse || i6 == Atom.TYPE_dtsh || i6 == Atom.TYPE_dtsl || i6 == Atom.TYPE_samr || i6 == Atom.TYPE_sawb || i6 == Atom.TYPE_lpcm || i6 == Atom.TYPE_sowt || i6 == Atom.TYPE__mp3 || i6 == Atom.TYPE_alac) {
                parseAudioSampleEntry(parsableByteArray, i6, position, i5, i, str, z, drmInitData, stsdData, i4);
            } else if (i6 == Atom.TYPE_TTML || i6 == Atom.TYPE_tx3g || i6 == Atom.TYPE_wvtt || i6 == Atom.TYPE_stpp || i6 == Atom.TYPE_c608) {
                parseTextSampleEntry(parsableByteArray, i6, position, i5, i, str, stsdData);
            } else if (i6 == Atom.TYPE_camm) {
                stsdData.format = Format.createSampleFormat(Integer.toString(i), "application/x-camera-motion", null, -1, null);
            }
            parsableByteArray.setPosition(position + i5);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, StsdData stsdData) throws ParserException {
        String str2;
        List listSingletonList;
        long j;
        parsableByteArray.setPosition(i2 + 8 + 8);
        if (i == Atom.TYPE_TTML) {
            str2 = "application/ttml+xml";
            listSingletonList = null;
            j = Long.MAX_VALUE;
        } else if (i == Atom.TYPE_tx3g) {
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            parsableByteArray.readBytes(bArr, 0, i5);
            str2 = "application/x-quicktime-tx3g";
            listSingletonList = Collections.singletonList(bArr);
            j = Long.MAX_VALUE;
        } else if (i == Atom.TYPE_wvtt) {
            str2 = "application/x-mp4-vtt";
            listSingletonList = null;
            j = Long.MAX_VALUE;
        } else if (i == Atom.TYPE_stpp) {
            str2 = "application/ttml+xml";
            listSingletonList = null;
            j = 0;
        } else if (i == Atom.TYPE_c608) {
            stsdData.requiredSampleTransformation = 1;
            str2 = "application/x-mp4-cea-608";
            listSingletonList = null;
            j = Long.MAX_VALUE;
        } else {
            throw new IllegalStateException();
        }
        stsdData.format = Format.createTextSampleFormat(Integer.toString(i4), str2, null, -1, 0, str, -1, null, j, listSingletonList);
    }

    /* JADX WARN: Code duplicated, block: B:79:0x014c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:80:0x014d  */
    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, StsdData stsdData, int i6) throws ParserException {
        DrmInitData drmInitData2;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i2 + 8 + 8);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        String str = null;
        int iIntValue = i;
        if (iIntValue == Atom.TYPE_encv) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i2, i3);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i6] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
            drmInitData2 = drmInitDataCopyWithSchemeType;
        } else {
            drmInitData2 = drmInitDataCopyWithSchemeType;
        }
        List<byte[]> listSingletonList = null;
        byte[] projFromParent = null;
        boolean z = false;
        float paspFromParent = 1.0f;
        int i7 = -1;
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            int i8 = parsableByteArray.readInt();
            if (i8 == 0 && parsableByteArray.getPosition() - i2 == i3) {
                if (str == null) {
                    return;
                }
                stsdData.format = Format.createVideoSampleFormat(Integer.toString(i4), str, null, -1, -1, unsignedShort, unsignedShort2, -1.0f, listSingletonList, i5, paspFromParent, projFromParent, i7, null, drmInitData2);
            }
            Assertions.checkArgument(i8 > 0, "childAtomSize should be positive");
            int i9 = parsableByteArray.readInt();
            if (i9 == Atom.TYPE_avcC) {
                Assertions.checkState(str == null);
                str = "video/avc";
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig avcConfig = AvcConfig.parse(parsableByteArray);
                listSingletonList = avcConfig.initializationData;
                stsdData.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = avcConfig.pixelWidthAspectRatio;
                }
            } else if (i9 == Atom.TYPE_hvcC) {
                Assertions.checkState(str == null);
                str = "video/hevc";
                parsableByteArray.setPosition(position2 + 8);
                HevcConfig hevcConfig = HevcConfig.parse(parsableByteArray);
                listSingletonList = hevcConfig.initializationData;
                stsdData.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
            } else if (i9 == Atom.TYPE_vpcC) {
                Assertions.checkState(str == null);
                str = iIntValue == Atom.TYPE_vp08 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
            } else if (i9 == Atom.TYPE_d263) {
                Assertions.checkState(str == null);
                str = "video/3gpp";
            } else if (i9 == Atom.TYPE_esds) {
                Assertions.checkState(str == null);
                Pair<String, byte[]> esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                str = (String) esdsFromParent.first;
                listSingletonList = Collections.singletonList(esdsFromParent.second);
            } else if (i9 == Atom.TYPE_pasp) {
                paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                z = true;
            } else if (i9 == Atom.TYPE_sv3d) {
                projFromParent = parseProjFromParent(parsableByteArray, position2, i8);
            } else if (i9 == Atom.TYPE_st3d) {
                int unsignedByte = parsableByteArray.readUnsignedByte();
                parsableByteArray.skipBytes(3);
                if (unsignedByte == 0) {
                    switch (parsableByteArray.readUnsignedByte()) {
                        case 0:
                            i7 = 0;
                            break;
                        case 1:
                            i7 = 1;
                            break;
                        case 2:
                            i7 = 2;
                            break;
                        case 3:
                            i7 = 3;
                            break;
                    }
                }
            }
            position += i8;
        }
        if (str == null) {
            return;
        }
        stsdData.format = Format.createVideoSampleFormat(Integer.toString(i4), str, null, -1, -1, unsignedShort, unsignedShort2, -1.0f, listSingletonList, i5, paspFromParent, projFromParent, i7, null, drmInitData2);
    }

    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType;
        if (containerAtom == null || (leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst)) == null) {
            return Pair.create(null, null);
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[unsignedIntToInt];
        long[] jArr2 = new long[unsignedIntToInt];
        for (int i = 0; i < unsignedIntToInt; i++) {
            jArr[i] = fullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = fullAtomVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, StsdData stsdData, int i5) throws ParserException {
        int unsignedShort;
        int unsignedShort2;
        int unsignedFixedPoint1616;
        DrmInitData drmInitData2;
        String str2;
        int i6;
        int i7;
        DrmInitData drmInitData3;
        String str3;
        int i8 = i2;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i8 + 8 + 8);
        if (z) {
            unsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            unsignedShort = 0;
        }
        if (unsignedShort == 0 || unsignedShort == 1) {
            unsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            unsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            if (unsignedShort == 1) {
                parsableByteArray.skipBytes(16);
            }
        } else {
            if (unsignedShort != 2) {
                return;
            }
            parsableByteArray.skipBytes(16);
            unsignedFixedPoint1616 = (int) Math.round(parsableByteArray.readDouble());
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
            unsignedShort2 = unsignedIntToInt;
        }
        int position = parsableByteArray.getPosition();
        int iIntValue = i;
        if (iIntValue == Atom.TYPE_enca) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i8, i3);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i5] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
            drmInitData2 = drmInitDataCopyWithSchemeType;
        } else {
            drmInitData2 = drmInitDataCopyWithSchemeType;
        }
        if (iIntValue == Atom.TYPE_ac_3) {
            str2 = "audio/ac3";
        } else if (iIntValue == Atom.TYPE_ec_3) {
            str2 = "audio/eac3";
        } else if (iIntValue == Atom.TYPE_dtsc) {
            str2 = "audio/vnd.dts";
        } else if (iIntValue == Atom.TYPE_dtsh || iIntValue == Atom.TYPE_dtsl) {
            str2 = "audio/vnd.dts.hd";
        } else if (iIntValue == Atom.TYPE_dtse) {
            str2 = "audio/vnd.dts.hd;profile=lbr";
        } else if (iIntValue == Atom.TYPE_samr) {
            str2 = "audio/3gpp";
        } else if (iIntValue == Atom.TYPE_sawb) {
            str2 = "audio/amr-wb";
        } else if (iIntValue == Atom.TYPE_lpcm || iIntValue == Atom.TYPE_sowt) {
            str2 = "audio/raw";
        } else if (iIntValue == Atom.TYPE__mp3) {
            str2 = "audio/mpeg";
        } else {
            str2 = iIntValue == Atom.TYPE_alac ? "audio/alac" : null;
        }
        String str4 = str2;
        int iIntValue2 = unsignedFixedPoint1616;
        int i9 = position;
        int iIntValue3 = unsignedShort2;
        byte[] bArr = null;
        while (i9 - i8 < i3) {
            parsableByteArray.setPosition(i9);
            int i10 = parsableByteArray.readInt();
            Assertions.checkArgument(i10 > 0, "childAtomSize should be positive");
            int i11 = parsableByteArray.readInt();
            if (i11 == Atom.TYPE_esds || (z && i11 == Atom.TYPE_wave)) {
                i6 = i10;
                String str5 = str4;
                i7 = i9;
                drmInitData3 = drmInitData2;
                int iFindEsdsPosition = i11 == Atom.TYPE_esds ? i7 : findEsdsPosition(parsableByteArray, i7, i6);
                if (iFindEsdsPosition != -1) {
                    Pair<String, byte[]> esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindEsdsPosition);
                    str4 = (String) esdsFromParent.first;
                    bArr = (byte[]) esdsFromParent.second;
                    if ("audio/mp4a-latm".equals(str4)) {
                        Pair<Integer, Integer> aacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(bArr);
                        iIntValue2 = ((Integer) aacAudioSpecificConfig.first).intValue();
                        iIntValue3 = ((Integer) aacAudioSpecificConfig.second).intValue();
                    }
                } else {
                    str4 = str5;
                }
            } else {
                if (i11 == Atom.TYPE_dac3) {
                    parsableByteArray.setPosition(i9 + 8);
                    stsdData.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitData2);
                    i6 = i10;
                    str3 = str4;
                    i7 = i9;
                    drmInitData3 = drmInitData2;
                } else if (i11 == Atom.TYPE_dec3) {
                    parsableByteArray.setPosition(i9 + 8);
                    stsdData.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitData2);
                    i6 = i10;
                    str3 = str4;
                    i7 = i9;
                    drmInitData3 = drmInitData2;
                } else if (i11 == Atom.TYPE_ddts) {
                    str3 = str4;
                    drmInitData3 = drmInitData2;
                    stsdData.format = Format.createAudioSampleFormat(Integer.toString(i4), str4, null, -1, -1, iIntValue3, iIntValue2, null, drmInitData3, 0, str);
                    i6 = i10;
                    i7 = i9;
                } else {
                    str3 = str4;
                    int i12 = i9;
                    drmInitData3 = drmInitData2;
                    if (i11 == Atom.TYPE_alac) {
                        i6 = i10;
                        byte[] bArr2 = new byte[i6];
                        i7 = i12;
                        parsableByteArray.setPosition(i7);
                        parsableByteArray.readBytes(bArr2, 0, i6);
                        bArr = bArr2;
                        str4 = str3;
                    } else {
                        i6 = i10;
                        i7 = i12;
                    }
                }
                str4 = str3;
            }
            i9 = i7 + i6;
            drmInitData2 = drmInitData3;
            i8 = i2;
        }
        String str6 = str4;
        DrmInitData drmInitData4 = drmInitData2;
        if (stsdData.format != null || str6 == null) {
            return;
        }
        stsdData.format = Format.createAudioSampleFormat(Integer.toString(i4), str6, null, -1, -1, iIntValue3, iIntValue2, "audio/raw".equals(str6) ? 2 : -1, bArr != null ? Collections.singletonList(bArr) : null, drmInitData4, 0, str);
    }

    private static int findEsdsPosition(ParsableByteArray parsableByteArray, int i, int i2) {
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            Assertions.checkArgument(i3 > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_esds) {
                return position;
            }
            position += i3;
        }
        return -1;
    }

    private static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((unsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((unsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if ("audio/mpeg".equals(mimeTypeFromMp4ObjectType) || "audio/vnd.dts".equals(mimeTypeFromMp4ObjectType) || "audio/vnd.dts.hd".equals(mimeTypeFromMp4ObjectType)) {
            return Pair.create(mimeTypeFromMp4ObjectType, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int expandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[expandableClassSize];
        parsableByteArray.readBytes(bArr, 0, expandableClassSize);
        return Pair.create(mimeTypeFromMp4ObjectType, bArr);
    }

    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) {
        Pair<Integer, TrackEncryptionBox> commonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            Assertions.checkArgument(i3 > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_sinf && (commonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, i3)) != null) {
                return commonEncryptionSinfFromParent;
            }
            position += i3;
        }
        return null;
    }

    static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        String string = null;
        Integer numValueOf = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i6 = parsableByteArray.readInt();
            int i7 = parsableByteArray.readInt();
            if (i7 == Atom.TYPE_frma) {
                numValueOf = Integer.valueOf(parsableByteArray.readInt());
            } else if (i7 == Atom.TYPE_schm) {
                parsableByteArray.skipBytes(4);
                string = parsableByteArray.readString(4);
            } else if (i7 == Atom.TYPE_schi) {
                i4 = i3;
                i5 = i6;
            }
            i3 += i6;
        }
        if (!"cenc".equals(string) && !"cbc1".equals(string) && !"cens".equals(string) && !"cbcs".equals(string)) {
            return null;
        }
        Assertions.checkArgument(numValueOf != null, "frma atom is mandatory");
        Assertions.checkArgument(i4 != -1, "schi atom is mandatory");
        TrackEncryptionBox schiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, string);
        Assertions.checkArgument(schiFromParent != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, schiFromParent);
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        byte[] bArr;
        int i5 = i + 8;
        while (i5 - i < i2) {
            parsableByteArray.setPosition(i5);
            int i6 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_tenc) {
                int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (fullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    i3 = unsignedByte & 15;
                    i4 = (unsignedByte & 240) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, bArr2.length);
                if (z && unsignedByte2 == 0) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    byte[] bArr3 = new byte[unsignedByte3];
                    parsableByteArray.readBytes(bArr3, 0, unsignedByte3);
                    bArr = bArr3;
                } else {
                    bArr = null;
                }
                return new TrackEncryptionBox(z, str, unsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += i6;
        }
        return null;
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i4 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_proj) {
                return Arrays.copyOfRange(parsableByteArray.data, i3, i4 + i3);
            }
            i3 += i4;
        }
        return null;
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (unsignedByte & 127);
        }
        return i;
    }

    private static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            Assertions.checkState(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    private static final class TkhdData {
        private final long duration;

        /* JADX INFO: renamed from: id */
        private final int f390id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.f390id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    private static final class StsdData {
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            this.fixedSampleSize = this.data.readUnsignedIntToInt();
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fixedSampleSize;
            return i == 0 ? this.data.readUnsignedIntToInt() : i;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return this.fixedSampleSize != 0;
        }
    }

    static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return false;
        }

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            this.fieldSize = this.data.readUnsignedIntToInt() & 255;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fieldSize;
            if (i == 8) {
                return this.data.readUnsignedByte();
            }
            if (i == 16) {
                return this.data.readUnsignedShort();
            }
            int i2 = this.sampleIndex;
            this.sampleIndex = i2 + 1;
            if (i2 % 2 == 0) {
                this.currentByte = this.data.readUnsignedByte();
                return (this.currentByte & 240) >> 4;
            }
            return this.currentByte & 15;
        }
    }
}
