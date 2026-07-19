package com.google.android.exoplayer2.text.ttml;

import android.text.Layout;
import android.util.Log;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.ColorParser;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.util.XmlPullParserUtil;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public final class TtmlDecoder extends SimpleSubtitleDecoder {
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern FONT_SIZE = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    private static final Pattern PERCENTAGE_COORDINATES = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final FrameAndTickRate DEFAULT_FRAME_AND_TICK_RATE = new FrameAndTickRate(30.0f, 1, 1);

    public TtmlDecoder() {
        super("TtmlDecoder");
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
            this.xmlParserFactory.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public TtmlSubtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            TtmlSubtitle ttmlSubtitle = null;
            map2.put("", new TtmlRegion(null));
            int i2 = 0;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            LinkedList linkedList = new LinkedList();
            FrameAndTickRate frameAndTickRates = DEFAULT_FRAME_AND_TICK_RATE;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                TtmlNode ttmlNode = (TtmlNode) linkedList.peekLast();
                if (i2 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            frameAndTickRates = parseFrameAndTickRates(xmlPullParserNewPullParser);
                        }
                        if (!isSupportedTag(name)) {
                            Log.i("TtmlDecoder", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i2++;
                        } else if ("head".equals(name)) {
                            parseHeader(xmlPullParserNewPullParser, map, map2);
                        } else {
                            try {
                                TtmlNode node = parseNode(xmlPullParserNewPullParser, ttmlNode, map2, frameAndTickRates);
                                linkedList.addLast(node);
                                if (ttmlNode != null) {
                                    ttmlNode.addChild(node);
                                }
                            } catch (SubtitleDecoderException e) {
                                Log.w("TtmlDecoder", "Suppressing parser error", e);
                                i2++;
                            }
                        }
                    } else if (eventType == 4) {
                        ttmlNode.addChild(TtmlNode.buildTextNode(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals("tt")) {
                            ttmlSubtitle = new TtmlSubtitle((TtmlNode) linkedList.getLast(), map, map2);
                        }
                        linkedList.removeLast();
                    }
                } else if (eventType == 2) {
                    i2++;
                } else if (eventType == 3) {
                    i2--;
                }
                xmlPullParserNewPullParser.next();
            }
            return ttmlSubtitle;
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new SubtitleDecoderException("Unable to decode source", e3);
        }
    }

    private FrameAndTickRate parseFrameAndTickRates(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        float f = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] strArrSplit = attributeValue2.split(" ");
            if (strArrSplit.length != 2) {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
        }
        int i2 = DEFAULT_FRAME_AND_TICK_RATE.subFrameRate;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = DEFAULT_FRAME_AND_TICK_RATE.tickRate;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new FrameAndTickRate(i * f, i2, i3);
    }

    private Map<String, TtmlStyle> parseHeader(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2) throws XmlPullParserException, IOException {
        TtmlRegion regionAttributes;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "style")) {
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style");
                TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser, new TtmlStyle());
                if (attributeValue != null) {
                    for (String str : parseStyleIds(attributeValue)) {
                        styleAttributes.chain(map.get(str));
                    }
                }
                if (styleAttributes.getId() != null) {
                    map.put(styleAttributes.getId(), styleAttributes);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "region") && (regionAttributes = parseRegionAttributes(xmlPullParser)) != null) {
                map2.put(regionAttributes.f400id, regionAttributes);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "head"));
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0099  */
    private TtmlRegion parseRegionAttributes(XmlPullParser xmlPullParser) {
        float f;
        int i;
        String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "id");
        if (attributeValue == null) {
            return null;
        }
        String attributeValue2 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "origin");
        if (attributeValue2 != null) {
            Matcher matcher = PERCENTAGE_COORDINATES.matcher(attributeValue2);
            if (matcher.matches()) {
                try {
                    float f2 = Float.parseFloat(matcher.group(1)) / 100.0f;
                    float f3 = Float.parseFloat(matcher.group(2)) / 100.0f;
                    String attributeValue3 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "extent");
                    if (attributeValue3 != null) {
                        Matcher matcher2 = PERCENTAGE_COORDINATES.matcher(attributeValue3);
                        if (matcher2.matches()) {
                            try {
                                float f4 = Float.parseFloat(matcher2.group(1)) / 100.0f;
                                float f5 = Float.parseFloat(matcher2.group(2)) / 100.0f;
                                String attributeValue4 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "displayAlign");
                                if (attributeValue4 != null) {
                                    switch (Util.toLowerInvariant(attributeValue4)) {
                                        case "center":
                                            f = f3 + (f5 / 2.0f);
                                            i = 1;
                                            break;
                                        case "after":
                                            f = f3 + f5;
                                            i = 2;
                                            break;
                                        default:
                                            f = f3;
                                            i = 0;
                                            break;
                                    }
                                } else {
                                    f = f3;
                                    i = 0;
                                }
                                return new TtmlRegion(attributeValue, f2, f, 0, i, f4);
                            } catch (NumberFormatException unused) {
                                Log.w("TtmlDecoder", "Ignoring region with malformed extent: " + attributeValue2);
                                return null;
                            }
                        }
                        Log.w("TtmlDecoder", "Ignoring region with unsupported extent: " + attributeValue2);
                        return null;
                    }
                    Log.w("TtmlDecoder", "Ignoring region without an extent");
                    return null;
                } catch (NumberFormatException unused2) {
                    Log.w("TtmlDecoder", "Ignoring region with malformed origin: " + attributeValue2);
                    return null;
                }
            }
            Log.w("TtmlDecoder", "Ignoring region with unsupported origin: " + attributeValue2);
            return null;
        }
        Log.w("TtmlDecoder", "Ignoring region without an origin");
        return null;
    }

    private String[] parseStyleIds(String str) {
        return str.split("\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0079  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:83:0x012e  */
    private TtmlStyle parseStyleAttributes(XmlPullParser xmlPullParser, TtmlStyle ttmlStyle) {
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle ttmlStyleCreateIfNull = ttmlStyle;
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            switch (xmlPullParser.getAttributeName(i)) {
                case "id":
                    if ("style".equals(xmlPullParser.getName())) {
                        ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setId(attributeValue);
                        break;
                    } else {
                        break;
                    }
                    break;
                case "backgroundColor":
                    ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull);
                    try {
                        ttmlStyleCreateIfNull.setBackgroundColor(ColorParser.parseTtmlColor(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        Log.w("TtmlDecoder", "Failed parsing background value: " + attributeValue);
                        break;
                    }
                    break;
                case "color":
                    ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull);
                    try {
                        ttmlStyleCreateIfNull.setFontColor(ColorParser.parseTtmlColor(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused2) {
                        Log.w("TtmlDecoder", "Failed parsing color value: " + attributeValue);
                        break;
                    }
                    break;
                case "fontFamily":
                    ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setFontFamily(attributeValue);
                    break;
                case "fontSize":
                    try {
                        ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull);
                        parseFontSize(attributeValue, ttmlStyleCreateIfNull);
                        break;
                    } catch (SubtitleDecoderException unused3) {
                        Log.w("TtmlDecoder", "Failed parsing fontSize value: " + attributeValue);
                        break;
                    }
                    break;
                case "fontWeight":
                    ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setBold("bold".equalsIgnoreCase(attributeValue));
                    break;
                case "fontStyle":
                    ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setItalic("italic".equalsIgnoreCase(attributeValue));
                    break;
                case "textAlign":
                    switch (Util.toLowerInvariant(attributeValue)) {
                        case "left":
                            ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setTextAlign(Layout.Alignment.ALIGN_NORMAL);
                            break;
                        case "start":
                            ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setTextAlign(Layout.Alignment.ALIGN_NORMAL);
                            break;
                        case "right":
                            ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setTextAlign(Layout.Alignment.ALIGN_OPPOSITE);
                            break;
                        case "end":
                            ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setTextAlign(Layout.Alignment.ALIGN_OPPOSITE);
                            break;
                        case "center":
                            ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setTextAlign(Layout.Alignment.ALIGN_CENTER);
                            break;
                    }
                    break;
                case "textDecoration":
                    switch (Util.toLowerInvariant(attributeValue)) {
                        case "linethrough":
                            ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setLinethrough(true);
                            break;
                        case "nolinethrough":
                            ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setLinethrough(false);
                            break;
                        case "underline":
                            ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setUnderline(true);
                            break;
                        case "nounderline":
                            ttmlStyleCreateIfNull = createIfNull(ttmlStyleCreateIfNull).setUnderline(false);
                            break;
                    }
                    break;
            }
        }
        return ttmlStyleCreateIfNull;
    }

    private TtmlStyle createIfNull(TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x006a  */
    private TtmlNode parseNode(XmlPullParser xmlPullParser, TtmlNode ttmlNode, Map<String, TtmlRegion> map, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        long j;
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser, null);
        String[] strArr = null;
        long timeExpression = -9223372036854775807L;
        long timeExpression2 = -9223372036854775807L;
        long timeExpression3 = -9223372036854775807L;
        String str = "";
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            switch (attributeName) {
                case "begin":
                    timeExpression = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "end":
                    timeExpression2 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "dur":
                    timeExpression3 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "style":
                    String[] styleIds = parseStyleIds(attributeValue);
                    if (styleIds.length > 0) {
                        strArr = styleIds;
                        break;
                    } else {
                        break;
                    }
                    break;
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        break;
                    } else {
                        break;
                    }
                    break;
            }
        }
        if (ttmlNode != null) {
            j = -9223372036854775807L;
            if (ttmlNode.startTimeUs != -9223372036854775807L) {
                if (timeExpression != -9223372036854775807L) {
                    timeExpression += ttmlNode.startTimeUs;
                }
                if (timeExpression2 != -9223372036854775807L) {
                    timeExpression2 += ttmlNode.startTimeUs;
                }
            }
        } else {
            j = -9223372036854775807L;
        }
        if (timeExpression2 == j) {
            if (timeExpression3 != j) {
                timeExpression2 = timeExpression3 + timeExpression;
            } else if (ttmlNode != null && ttmlNode.endTimeUs != j) {
                timeExpression2 = ttmlNode.endTimeUs;
            }
        }
        return TtmlNode.buildNode(xmlPullParser.getName(), timeExpression, timeExpression2, styleAttributes, strArr, str);
    }

    private static boolean isSupportedTag(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("smpte:image") || str.equals("smpte:data") || str.equals("smpte:information");
    }

    private static void parseFontSize(String str, TtmlStyle ttmlStyle) throws SubtitleDecoderException {
        Matcher matcher;
        String[] strArrSplit = str.split("\\s+");
        if (strArrSplit.length == 1) {
            matcher = FONT_SIZE.matcher(str);
        } else if (strArrSplit.length == 2) {
            matcher = FONT_SIZE.matcher(strArrSplit[1]);
            Log.w("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + strArrSplit.length + ".");
        }
        if (matcher.matches()) {
            String strGroup = matcher.group(3);
            switch (strGroup) {
                case "px":
                    ttmlStyle.setFontSizeUnit(1);
                    break;
                case "em":
                    ttmlStyle.setFontSizeUnit(2);
                    break;
                case "%":
                    ttmlStyle.setFontSizeUnit(3);
                    break;
                default:
                    throw new SubtitleDecoderException("Invalid unit for fontSize: '" + strGroup + "'.");
            }
            ttmlStyle.setFontSize(Float.valueOf(matcher.group(1)).floatValue());
            return;
        }
        throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:47:0x00f4  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static long parseTimeExpression(String str, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        Matcher matcher = CLOCK_TIME.matcher(str);
        byte b = 5;
        if (matcher.matches()) {
            double d = Long.parseLong(matcher.group(1)) * 3600;
            double d2 = Long.parseLong(matcher.group(2)) * 60;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = Long.parseLong(matcher.group(3));
            Double.isNaN(d3);
            double d4 = d + d2 + d3;
            String strGroup = matcher.group(4);
            double d5 = 0.0d;
            double d6 = d4 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d);
            String strGroup2 = matcher.group(5);
            double d7 = d6 + (strGroup2 != null ? Long.parseLong(strGroup2) / frameAndTickRate.effectiveFrameRate : 0.0d);
            String strGroup3 = matcher.group(6);
            if (strGroup3 != null) {
                double d8 = Long.parseLong(strGroup3);
                double d9 = frameAndTickRate.subFrameRate;
                Double.isNaN(d8);
                Double.isNaN(d9);
                double d10 = frameAndTickRate.effectiveFrameRate;
                Double.isNaN(d10);
                d5 = (d8 / d9) / d10;
            }
            return (long) ((d7 + d5) * 1000000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (matcher2.matches()) {
            double d11 = Double.parseDouble(matcher2.group(1));
            String strGroup4 = matcher2.group(2);
            int iHashCode = strGroup4.hashCode();
            if (iHashCode != 102) {
                if (iHashCode != 104) {
                    if (iHashCode != 109) {
                        if (iHashCode != 3494) {
                            switch (iHashCode) {
                                case 115:
                                    if (!strGroup4.equals("s")) {
                                        b = -1;
                                    } else {
                                        b = 2;
                                    }
                                    break;
                                case 116:
                                    if (!strGroup4.equals("t")) {
                                        b = -1;
                                    }
                                    break;
                                default:
                                    b = -1;
                                    break;
                            }
                        } else if (strGroup4.equals("ms")) {
                            b = 3;
                        } else {
                            b = -1;
                        }
                    } else if (strGroup4.equals("m")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (strGroup4.equals("h")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (strGroup4.equals("f")) {
                b = 4;
            } else {
                b = -1;
            }
            switch (b) {
                case 0:
                    d11 *= 3600.0d;
                    break;
                case 1:
                    d11 *= 60.0d;
                    break;
                case 3:
                    d11 /= 1000.0d;
                    break;
                case 4:
                    double d12 = frameAndTickRate.effectiveFrameRate;
                    Double.isNaN(d12);
                    d11 /= d12;
                    break;
                case 5:
                    double d13 = frameAndTickRate.tickRate;
                    Double.isNaN(d13);
                    d11 /= d13;
                    break;
            }
            return (long) (d11 * 1000000.0d);
        }
        throw new SubtitleDecoderException("Malformed time expression: " + str);
    }

    private static final class FrameAndTickRate {
        final float effectiveFrameRate;
        final int subFrameRate;
        final int tickRate;

        FrameAndTickRate(float f, int i, int i2) {
            this.effectiveFrameRate = f;
            this.subFrameRate = i;
            this.tickRate = i2;
        }
    }
}
