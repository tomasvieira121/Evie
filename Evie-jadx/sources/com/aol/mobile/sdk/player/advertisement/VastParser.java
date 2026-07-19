package com.aol.mobile.sdk.player.advertisement;

import android.text.TextUtils;
import android.util.Xml;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmAd;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class VastParser {
    private static boolean getNestingValue(int i, boolean z) throws XmlPullParserException {
        return i == 2 || (i != 3 && z);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0243 A[Catch: all -> 0x0271, TRY_LEAVE, TryCatch #0 {all -> 0x0271, blocks: (B:3:0x0019, B:4:0x002f, B:6:0x0035, B:9:0x0042, B:11:0x004a, B:14:0x0052, B:16:0x0058, B:20:0x0069, B:22:0x0075, B:23:0x0079, B:25:0x007f, B:113:0x023d, B:115:0x0243, B:118:0x0255, B:120:0x025b, B:29:0x008b, B:30:0x0095, B:47:0x00d0, B:48:0x00d3, B:88:0x01b7, B:91:0x01c1, B:93:0x01dc, B:94:0x01e4, B:96:0x01ea, B:97:0x01f2, B:99:0x01fa, B:101:0x0205, B:104:0x020f, B:107:0x021d, B:109:0x0225, B:60:0x013e, B:62:0x0146, B:67:0x015d, B:69:0x0165, B:71:0x0172, B:74:0x017b, B:76:0x0181, B:78:0x018f, B:81:0x019c, B:83:0x01a2, B:79:0x0194, B:64:0x014e, B:49:0x00dd, B:50:0x00eb, B:51:0x00fb, B:52:0x010b, B:53:0x011b, B:32:0x0099, B:35:0x00a4, B:38:0x00b0, B:41:0x00bb, B:44:0x00c6), top: B:129:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0255 A[Catch: all -> 0x0271, TRY_ENTER, TryCatch #0 {all -> 0x0271, blocks: (B:3:0x0019, B:4:0x002f, B:6:0x0035, B:9:0x0042, B:11:0x004a, B:14:0x0052, B:16:0x0058, B:20:0x0069, B:22:0x0075, B:23:0x0079, B:25:0x007f, B:113:0x023d, B:115:0x0243, B:118:0x0255, B:120:0x025b, B:29:0x008b, B:30:0x0095, B:47:0x00d0, B:48:0x00d3, B:88:0x01b7, B:91:0x01c1, B:93:0x01dc, B:94:0x01e4, B:96:0x01ea, B:97:0x01f2, B:99:0x01fa, B:101:0x0205, B:104:0x020f, B:107:0x021d, B:109:0x0225, B:60:0x013e, B:62:0x0146, B:67:0x015d, B:69:0x0165, B:71:0x0172, B:74:0x017b, B:76:0x0181, B:78:0x018f, B:81:0x019c, B:83:0x01a2, B:79:0x0194, B:64:0x014e, B:49:0x00dd, B:50:0x00eb, B:51:0x00fb, B:52:0x010b, B:53:0x011b, B:32:0x0099, B:35:0x00a4, B:38:0x00b0, B:41:0x00bb, B:44:0x00c6), top: B:129:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x025b A[Catch: all -> 0x0271, TRY_LEAVE, TryCatch #0 {all -> 0x0271, blocks: (B:3:0x0019, B:4:0x002f, B:6:0x0035, B:9:0x0042, B:11:0x004a, B:14:0x0052, B:16:0x0058, B:20:0x0069, B:22:0x0075, B:23:0x0079, B:25:0x007f, B:113:0x023d, B:115:0x0243, B:118:0x0255, B:120:0x025b, B:29:0x008b, B:30:0x0095, B:47:0x00d0, B:48:0x00d3, B:88:0x01b7, B:91:0x01c1, B:93:0x01dc, B:94:0x01e4, B:96:0x01ea, B:97:0x01f2, B:99:0x01fa, B:101:0x0205, B:104:0x020f, B:107:0x021d, B:109:0x0225, B:60:0x013e, B:62:0x0146, B:67:0x015d, B:69:0x0165, B:71:0x0172, B:74:0x017b, B:76:0x0181, B:78:0x018f, B:81:0x019c, B:83:0x01a2, B:79:0x0194, B:64:0x014e, B:49:0x00dd, B:50:0x00eb, B:51:0x00fb, B:52:0x010b, B:53:0x011b, B:32:0x0099, B:35:0x00a4, B:38:0x00b0, B:41:0x00bb, B:44:0x00c6), top: B:129:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x026c  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static VrmAd parse(String str) throws XmlPullParserException, IOException {
        boolean z;
        String str2;
        boolean z2;
        String attributeValue;
        boolean z3;
        HashMap map = new HashMap();
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        boolean nestingValue = false;
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        StringReader stringReader = new StringReader(str);
        xmlPullParserNewPullParser.setInput(stringReader);
        try {
            xmlPullParserNewPullParser.nextTag();
            xmlPullParserNewPullParser.require(2, null, "VAST");
            int i = 1;
            String strTrim = null;
            String strTrim2 = null;
            String strTrim3 = null;
            String attributeValue2 = null;
            boolean nestingValue2 = false;
            boolean nestingValue3 = false;
            boolean nestingValue4 = false;
            boolean zBooleanValue = true;
            boolean zBooleanValue2 = false;
            boolean nestingValue5 = false;
            while (xmlPullParserNewPullParser.next() != i) {
                String name = xmlPullParserNewPullParser.getName();
                if (name != null) {
                    if ("Ad".equals(name)) {
                        if (xmlPullParserNewPullParser.getEventType() == 2) {
                            for (int i2 = 0; i2 < xmlPullParserNewPullParser.getAttributeCount(); i2++) {
                                if (!xmlPullParserNewPullParser.getAttributeName(i2).equals("sequence")) {
                                    if (xmlPullParserNewPullParser.getAttributeName(i2).equals("id")) {
                                        attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(i2);
                                    }
                                } else {
                                    stringReader.close();
                                    return null;
                                }
                            }
                            i = 1;
                        } else if (xmlPullParserNewPullParser.getEventType() == 3) {
                            if (!TextUtils.isEmpty(strTrim)) {
                                VrmAd vrmAd = new VrmAd(strTrim, strTrim2, new VrmAd.Pixels(map), zBooleanValue, zBooleanValue2, attributeValue2);
                                stringReader.close();
                                return vrmAd;
                            }
                            if (!TextUtils.isEmpty(strTrim3)) {
                                stringReader.close();
                                return null;
                            }
                            VrmAd vrmAd2 = new VrmAd(strTrim3, new VrmAd.Pixels(map), zBooleanValue, zBooleanValue2, attributeValue2);
                            stringReader.close();
                            return vrmAd2;
                        }
                    }
                    switch (xmlPullParserNewPullParser.getName()) {
                        case "TrackingEvents":
                            nestingValue2 = getNestingValue(xmlPullParserNewPullParser.getEventType(), nestingValue2);
                            nestingValue5 = nestingValue5;
                            i = 1;
                            continue;
                            break;
                        case "VideoClicks":
                            nestingValue = getNestingValue(xmlPullParserNewPullParser.getEventType(), nestingValue);
                            nestingValue5 = nestingValue5;
                            i = 1;
                            continue;
                            break;
                        case "Linear":
                            nestingValue3 = getNestingValue(xmlPullParserNewPullParser.getEventType(), nestingValue3);
                            nestingValue5 = nestingValue5;
                            i = 1;
                            continue;
                            break;
                        case "InLine":
                            nestingValue4 = getNestingValue(xmlPullParserNewPullParser.getEventType(), nestingValue4);
                            nestingValue5 = nestingValue5;
                            i = 1;
                            continue;
                            break;
                        case "Wrapper":
                            nestingValue5 = getNestingValue(xmlPullParserNewPullParser.getEventType(), nestingValue5);
                            i = 1;
                            continue;
                            break;
                        default:
                            z = nestingValue5;
                            str2 = strTrim3;
                            if (xmlPullParserNewPullParser.getEventType() != 2) {
                                break;
                            } else {
                                if (nestingValue4 || z) {
                                    if ("Impression".equals(name) || "Error".equals(name)) {
                                        addTracker(trim(xmlPullParserNewPullParser.nextText()), name, map);
                                    }
                                    if (nestingValue3) {
                                        if (nestingValue && "ClickTracking".equals(name)) {
                                            addTracker(trim(xmlPullParserNewPullParser.nextText()), name, map);
                                        }
                                        if (nestingValue2 && "Tracking".equals(name)) {
                                            int i3 = 0;
                                            while (true) {
                                                if (i3 < xmlPullParserNewPullParser.getAttributeCount()) {
                                                    z2 = nestingValue;
                                                    if (xmlPullParserNewPullParser.getAttributeName(i3).equals("event")) {
                                                        attributeValue = xmlPullParserNewPullParser.getAttributeValue(i3);
                                                    } else {
                                                        i3++;
                                                        nestingValue = z2;
                                                    }
                                                } else {
                                                    z2 = nestingValue;
                                                    attributeValue = null;
                                                }
                                            }
                                            if (!TextUtils.isEmpty(attributeValue)) {
                                                addTracker(trim(xmlPullParserNewPullParser.nextText()), attributeValue, map);
                                            }
                                        } else {
                                            z2 = nestingValue;
                                        }
                                    } else {
                                        z2 = nestingValue;
                                    }
                                } else {
                                    z2 = nestingValue;
                                }
                                if (nestingValue4 && nestingValue3) {
                                    if ("MediaFile".equals(name) && strTrim == null) {
                                        String attributeValue3 = xmlPullParserNewPullParser.getAttributeValue(null, "type");
                                        String attributeValue4 = xmlPullParserNewPullParser.getAttributeValue(null, "scalable");
                                        z3 = nestingValue2;
                                        String attributeValue5 = xmlPullParserNewPullParser.getAttributeValue(null, "maintainAspectRatio");
                                        if (!TextUtils.isEmpty(attributeValue4)) {
                                            zBooleanValue = Boolean.valueOf(attributeValue4).booleanValue();
                                        }
                                        if (!TextUtils.isEmpty(attributeValue5)) {
                                            zBooleanValue2 = Boolean.valueOf(attributeValue5).booleanValue();
                                        }
                                        if ("video/mp4".equals(attributeValue3)) {
                                            strTrim = trim(xmlPullParserNewPullParser.nextText());
                                        }
                                    } else {
                                        z3 = nestingValue2;
                                    }
                                    if ("ClickThrough".equals(name) && strTrim2 == null) {
                                        strTrim2 = trim(xmlPullParserNewPullParser.nextText());
                                    }
                                } else {
                                    z3 = nestingValue2;
                                }
                                strTrim3 = (z && "VASTAdTagURI".equals(name)) ? trim(xmlPullParserNewPullParser.nextText()) : str2;
                                nestingValue5 = z;
                                nestingValue = z2;
                                nestingValue2 = z3;
                                i = 1;
                            }
                            break;
                    }
                } else {
                    z = nestingValue5;
                    str2 = strTrim3;
                }
                strTrim3 = str2;
                i = 1;
                nestingValue5 = z;
            }
            if (!TextUtils.isEmpty(strTrim)) {
                VrmAd vrmAd3 = new VrmAd(strTrim, strTrim2, new VrmAd.Pixels(map), zBooleanValue, zBooleanValue2, attributeValue2);
                stringReader.close();
                return vrmAd3;
            }
            if (!TextUtils.isEmpty(strTrim3)) {
                stringReader.close();
                return null;
            }
            VrmAd vrmAd4 = new VrmAd(strTrim3, new VrmAd.Pixels(map), zBooleanValue, zBooleanValue2, attributeValue2);
            stringReader.close();
            return vrmAd4;
        } catch (Throwable th) {
            stringReader.close();
            throw th;
        }
    }

    private static void addTracker(String str, String str2, HashMap<String, List<String>> map) throws XmlPullParserException, IOException {
        if (map.get(str2) == null) {
            map.put(str2, new ArrayList());
        }
        map.get(str2).add(str);
    }

    private static String trim(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }
}
