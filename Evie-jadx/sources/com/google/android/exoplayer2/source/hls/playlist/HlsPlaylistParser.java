package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.C0762C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Queue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)");
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!checkPlaylistHeader(bufferedReader)) {
                throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    String strTrim = line.trim();
                    if (!strTrim.isEmpty()) {
                        if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                            arrayDeque.add(strTrim);
                            HlsMasterPlaylist masterPlaylist = parseMasterPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                            Util.closeQuietly(bufferedReader);
                            return masterPlaylist;
                        }
                        if (!strTrim.startsWith("#EXT-X-TARGETDURATION") && !strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE") && !strTrim.startsWith("#EXTINF") && !strTrim.startsWith("#EXT-X-KEY") && !strTrim.startsWith("#EXT-X-BYTERANGE") && !strTrim.equals("#EXT-X-DISCONTINUITY") && !strTrim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") && !strTrim.equals("#EXT-X-ENDLIST")) {
                            arrayDeque.add(strTrim);
                        }
                        arrayDeque.add(strTrim);
                        HlsMediaPlaylist mediaPlaylist = parseMediaPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                        Util.closeQuietly(bufferedReader);
                        return mediaPlaylist;
                    }
                } else {
                    Util.closeQuietly(bufferedReader);
                    throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                }
            }
        } catch (Throwable th) {
            Util.closeQuietly(bufferedReader);
            throw th;
        }
    }

    private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int i = bufferedReader.read();
        if (i == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i = bufferedReader.read();
        }
        int iSkipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, i);
        for (int i2 = 0; i2 < 7; i2++) {
            if (iSkipIgnorableWhitespace != "#EXTM3U".charAt(i2)) {
                return false;
            }
            iSkipIgnorableWhitespace = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, iSkipIgnorableWhitespace));
    }

    private static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0154  */
    private static HlsMasterPlaylist parseMasterPlaylist(LineIterator lineIterator, String str) throws IOException {
        int i;
        String str2;
        int i2;
        int i3;
        int i4;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        boolean zContains = false;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith("#EXT")) {
                arrayList5.add(next);
            }
            if (next.startsWith("#EXT-X-MEDIA")) {
                arrayList4.add(next);
            } else if (next.startsWith("#EXT-X-STREAM-INF")) {
                zContains |= next.contains("CLOSED-CAPTIONS=NONE");
                int intAttr = parseIntAttr(next, REGEX_BANDWIDTH);
                String optionalStringAttr = parseOptionalStringAttr(next, REGEX_AVERAGE_BANDWIDTH);
                int i5 = optionalStringAttr != null ? Integer.parseInt(optionalStringAttr) : intAttr;
                String optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_CODECS);
                String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_RESOLUTION);
                if (optionalStringAttr3 != null) {
                    String[] strArrSplit = optionalStringAttr3.split("x");
                    int i6 = Integer.parseInt(strArrSplit[0]);
                    int i7 = Integer.parseInt(strArrSplit[1]);
                    if (i6 <= 0 || i7 <= 0) {
                        i4 = -1;
                        i7 = -1;
                    } else {
                        i4 = i6;
                    }
                    i2 = i4;
                    i3 = i7;
                } else {
                    i2 = -1;
                    i3 = -1;
                }
                String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_FRAME_RATE);
                float f = optionalStringAttr4 != null ? Float.parseFloat(optionalStringAttr4) : -1.0f;
                String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_AUDIO);
                if (optionalStringAttr5 != null && optionalStringAttr2 != null) {
                    map.put(optionalStringAttr5, Util.getCodecsOfType(optionalStringAttr2, 1));
                }
                String next2 = lineIterator.next();
                if (hashSet.add(next2)) {
                    arrayList.add(new HlsMasterPlaylist.HlsUrl(next2, Format.createVideoContainerFormat(Integer.toString(arrayList.size()), "application/x-mpegURL", null, optionalStringAttr2, i5, i2, i3, f, null, 0)));
                }
            }
        }
        int i8 = 0;
        Format format = null;
        ArrayList arrayList6 = null;
        while (i8 < arrayList4.size()) {
            String str3 = (String) arrayList4.get(i8);
            int selectionFlags = parseSelectionFlags(str3);
            String optionalStringAttr6 = parseOptionalStringAttr(str3, REGEX_URI);
            String stringAttr = parseStringAttr(str3, REGEX_NAME);
            String optionalStringAttr7 = parseOptionalStringAttr(str3, REGEX_LANGUAGE);
            String optionalStringAttr8 = parseOptionalStringAttr(str3, REGEX_GROUP_ID);
            ArrayList arrayList7 = arrayList4;
            switch (parseStringAttr(str3, REGEX_TYPE)) {
                case "AUDIO":
                    String str4 = (String) map.get(optionalStringAttr8);
                    Format formatCreateAudioContainerFormat = Format.createAudioContainerFormat(stringAttr, "application/x-mpegURL", str4 != null ? MimeTypes.getMediaMimeType(str4) : null, str4, -1, -1, -1, null, selectionFlags, optionalStringAttr7);
                    if (optionalStringAttr6 != null) {
                        arrayList2.add(new HlsMasterPlaylist.HlsUrl(optionalStringAttr6, formatCreateAudioContainerFormat));
                        break;
                    } else {
                        format = formatCreateAudioContainerFormat;
                        break;
                    }
                    break;
                case "SUBTITLES":
                    arrayList3.add(new HlsMasterPlaylist.HlsUrl(optionalStringAttr6, Format.createTextContainerFormat(stringAttr, "application/x-mpegURL", "text/vtt", null, -1, selectionFlags, optionalStringAttr7)));
                    break;
                case "CLOSED-CAPTIONS":
                    String stringAttr2 = parseStringAttr(str3, REGEX_INSTREAM_ID);
                    if (stringAttr2.startsWith("CC")) {
                        i = Integer.parseInt(stringAttr2.substring(2));
                        str2 = "application/cea-608";
                    } else {
                        i = Integer.parseInt(stringAttr2.substring(7));
                        str2 = "application/cea-708";
                    }
                    if (arrayList6 == null) {
                        arrayList6 = new ArrayList();
                    }
                    arrayList6.add(Format.createTextContainerFormat(stringAttr, null, str2, null, -1, selectionFlags, optionalStringAttr7, i));
                    break;
            }
            i8++;
            arrayList4 = arrayList7;
        }
        return new HlsMasterPlaylist(str, arrayList5, arrayList, arrayList2, arrayList3, format, zContains ? Collections.emptyList() : arrayList6);
    }

    private static int parseSelectionFlags(String str) {
        return (parseBooleanAttribute(str, REGEX_DEFAULT, false) ? 1 : 0) | (parseBooleanAttribute(str, REGEX_FORCED, false) ? 2 : 0) | (parseBooleanAttribute(str, REGEX_AUTOSELECT, false) ? 4 : 0);
    }

    private static HlsMediaPlaylist parseMediaPlaylist(LineIterator lineIterator, String str) throws IOException {
        DrmInitData.SchemeData widevineSchemeData;
        String hexString;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        long doubleAttr = -9223372036854775807L;
        long intAttr = -9223372036854775807L;
        int i = 0;
        int i2 = 0;
        long jMsToUs = 0;
        boolean z = false;
        int i3 = 0;
        long j = 0;
        int intAttr2 = 1;
        boolean z2 = false;
        boolean z3 = false;
        DrmInitData drmInitData = null;
        HlsMediaPlaylist.Segment segment = null;
        long j2 = 0;
        long longAttr = 0;
        boolean z4 = false;
        long j3 = -1;
        long j4 = 0;
        String stringAttr = null;
        String str2 = null;
        long doubleAttr2 = 0;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith("#EXT")) {
                arrayList2.add(next);
            }
            if (next.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String stringAttr2 = parseStringAttr(next, REGEX_PLAYLIST_TYPE);
                if ("VOD".equals(stringAttr2)) {
                    i2 = 1;
                } else if ("EVENT".equals(stringAttr2)) {
                    i2 = 2;
                }
            } else if (next.startsWith("#EXT-X-START")) {
                doubleAttr = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
            } else if (next.startsWith("#EXT-X-MAP")) {
                String stringAttr3 = parseStringAttr(next, REGEX_URI);
                String optionalStringAttr = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE);
                if (optionalStringAttr != null) {
                    String[] strArrSplit = optionalStringAttr.split("@");
                    j3 = Long.parseLong(strArrSplit[0]);
                    if (strArrSplit.length > 1) {
                        j2 = Long.parseLong(strArrSplit[1]);
                    }
                }
                segment = new HlsMediaPlaylist.Segment(stringAttr3, j2, j3);
                j2 = 0;
                j3 = -1;
            } else if (next.startsWith("#EXT-X-TARGETDURATION")) {
                intAttr = 1000000 * ((long) parseIntAttr(next, REGEX_TARGET_DURATION));
            } else if (next.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                longAttr = parseLongAttr(next, REGEX_MEDIA_SEQUENCE);
                j = longAttr;
            } else if (next.startsWith("#EXT-X-VERSION")) {
                intAttr2 = parseIntAttr(next, REGEX_VERSION);
            } else if (next.startsWith("#EXTINF")) {
                doubleAttr2 = (long) (parseDoubleAttr(next, REGEX_MEDIA_DURATION) * 1000000.0d);
            } else if (next.startsWith("#EXT-X-KEY")) {
                String optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_METHOD);
                String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_KEYFORMAT);
                if ("NONE".equals(optionalStringAttr2)) {
                    stringAttr = null;
                    str2 = null;
                } else {
                    String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_IV);
                    if ("identity".equals(optionalStringAttr3) || optionalStringAttr3 == null) {
                        if ("AES-128".equals(optionalStringAttr2)) {
                            stringAttr = parseStringAttr(next, REGEX_URI);
                            str2 = optionalStringAttr4;
                        } else {
                            str2 = optionalStringAttr4;
                            stringAttr = null;
                        }
                    } else if (optionalStringAttr2 == null || (widevineSchemeData = parseWidevineSchemeData(next, optionalStringAttr3)) == null) {
                        str2 = optionalStringAttr4;
                        stringAttr = null;
                    } else {
                        drmInitData = new DrmInitData(("SAMPLE-AES-CENC".equals(optionalStringAttr2) || "SAMPLE-AES-CTR".equals(optionalStringAttr2)) ? "cenc" : "cbcs", widevineSchemeData);
                        str2 = optionalStringAttr4;
                        stringAttr = null;
                    }
                }
            } else if (next.startsWith("#EXT-X-BYTERANGE")) {
                String[] strArrSplit2 = parseStringAttr(next, REGEX_BYTERANGE).split("@");
                j3 = Long.parseLong(strArrSplit2[0]);
                if (strArrSplit2.length > 1) {
                    j2 = Long.parseLong(strArrSplit2[1]);
                }
            } else if (next.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                i3 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
                z = true;
            } else if (next.equals("#EXT-X-DISCONTINUITY")) {
                i++;
            } else if (next.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                if (jMsToUs == 0) {
                    jMsToUs = C0762C.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + 1))) - j4;
                }
            } else if (next.equals("#EXT-X-GAP")) {
                z4 = true;
            } else if (next.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                z2 = true;
            } else if (next.equals("#EXT-X-ENDLIST")) {
                z3 = true;
            } else if (!next.startsWith("#")) {
                if (stringAttr == null) {
                    hexString = null;
                } else {
                    hexString = str2 != null ? str2 : Long.toHexString(longAttr);
                }
                long j5 = longAttr + 1;
                if (j3 == -1) {
                    j2 = 0;
                }
                arrayList.add(new HlsMediaPlaylist.Segment(next, doubleAttr2, i, j4, stringAttr, hexString, j2, j3, z4));
                j4 += doubleAttr2;
                if (j3 != -1) {
                    j2 += j3;
                }
                longAttr = j5;
                j3 = -1;
                z4 = false;
                doubleAttr2 = 0;
            }
        }
        return new HlsMediaPlaylist(i2, str, arrayList2, doubleAttr, jMsToUs, z, i3, j, intAttr2, intAttr, z2, z3, jMsToUs != 0, drmInitData, segment, arrayList);
    }

    private static DrmInitData.SchemeData parseWidevineSchemeData(String str, String str2) throws ParserException {
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String stringAttr = parseStringAttr(str, REGEX_URI);
            return new DrmInitData.SchemeData(C0762C.WIDEVINE_UUID, "video/mp4", Base64.decode(stringAttr.substring(stringAttr.indexOf(44)), 0));
        }
        if (!"com.widevine".equals(str2)) {
            return null;
        }
        try {
            return new DrmInitData.SchemeData(C0762C.WIDEVINE_UUID, "hls", str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new ParserException(e);
        }
    }

    private static int parseIntAttr(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(parseStringAttr(str, pattern));
    }

    private static long parseLongAttr(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(parseStringAttr(str, pattern));
    }

    private static double parseDoubleAttr(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(parseStringAttr(str, pattern));
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    private static String parseStringAttr(String str, Pattern pattern) throws ParserException {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() == 1) {
            return matcher.group(1);
        }
        throw new ParserException("Couldn't match " + pattern.pattern() + " in " + str);
    }

    private static boolean parseBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals("YES") : z;
    }

    private static Pattern compileBooleanAttrPattern(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    private static class LineIterator {
        private final Queue<String> extraLines;
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        public boolean hasNext() throws IOException {
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = this.extraLines.poll();
                return true;
            }
            do {
                String line = this.reader.readLine();
                this.next = line;
                if (line == null) {
                    return false;
                }
                this.next = this.next.trim();
            } while (this.next.isEmpty());
            return true;
        }

        public String next() throws IOException {
            if (!hasNext()) {
                return null;
            }
            String str = this.next;
            this.next = null;
            return str;
        }
    }
}
