package com.linkedin.urls.detection;

/* JADX INFO: loaded from: classes.dex */
public class DomainNameReader {
    private StringBuilder _buffer;
    private final CharacterHandler _characterHandler;
    private String _current;
    private UrlDetectorOptions _options;
    private final InputTextReader _reader;
    private int _dots = 0;
    private int _currentLabelLength = 0;
    private int _topLevelLength = 0;
    private int _startDomainName = 0;
    private boolean _numeric = false;
    private boolean _seenBracket = false;
    private boolean _seenCompleteBracketSet = false;
    private boolean _zoneIndex = false;

    interface CharacterHandler {
        void addCharacter(char c);
    }

    public enum ReaderNextState {
        InvalidDomainName,
        ValidDomainName,
        ReadFragment,
        ReadPath,
        ReadPort,
        ReadQueryString,
        ReadUserPass
    }

    public DomainNameReader(InputTextReader inputTextReader, StringBuilder sb, String str, UrlDetectorOptions urlDetectorOptions, CharacterHandler characterHandler) {
        this._buffer = sb;
        this._current = str;
        this._reader = inputTextReader;
        this._options = urlDetectorOptions;
        this._characterHandler = characterHandler;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:73:0x0103  */
    /* JADX WARN: Code duplicated, block: B:95:0x0105 A[SYNTHETIC] */
    private ReaderNextState readCurrent() {
        int i;
        String str = this._current;
        if (str != null) {
            if (str.length() == 1 && CharUtils.isDot(this._current.charAt(0))) {
                return ReaderNextState.InvalidDomainName;
            }
            if (this._current.length() == 3 && this._current.equalsIgnoreCase("%2e")) {
                return ReaderNextState.InvalidDomainName;
            }
            this._startDomainName = this._buffer.length() - this._current.length();
            this._numeric = true;
            char[] charArray = this._current.toCharArray();
            int length = charArray.length;
            boolean z = length > 2 && charArray[0] == '0' && (charArray[1] == 'x' || charArray[1] == 'X');
            int i2 = z ? 2 : 0;
            boolean z2 = z;
            boolean z3 = false;
            int i3 = 0;
            while (i2 < length && !z3) {
                char c = charArray[i2];
                this._currentLabelLength++;
                int i4 = this._currentLabelLength;
                this._topLevelLength = i4;
                if (i4 > 64) {
                    return ReaderNextState.InvalidDomainName;
                }
                if (CharUtils.isDot(c)) {
                    this._dots++;
                    this._currentLabelLength = 0;
                } else if (c == '[') {
                    this._seenBracket = true;
                    this._numeric = false;
                } else if (c == '%' && (i = i2 + 2) < length) {
                    int i5 = i2 + 1;
                    if (CharUtils.isHex(charArray[i5]) && CharUtils.isHex(charArray[i])) {
                        if (charArray[i5] == '2' && charArray[i] == 'e') {
                            this._dots++;
                            this._currentLabelLength = 0;
                        } else {
                            this._numeric = false;
                        }
                        i2 = i;
                    } else if (z2) {
                        if (!CharUtils.isHex(c)) {
                            this._numeric = false;
                            i2--;
                            z2 = false;
                        }
                    } else if (!CharUtils.isAlpha(c)) {
                        this._numeric = false;
                    } else {
                        this._numeric = false;
                    }
                } else if (z2) {
                    if (!CharUtils.isHex(c)) {
                        this._numeric = false;
                        i2--;
                        z2 = false;
                    }
                } else if (!CharUtils.isAlpha(c) || c == '-' || c >= 192) {
                    this._numeric = false;
                } else if (!CharUtils.isNumeric(c) && !this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN)) {
                    this._currentLabelLength = 0;
                    this._topLevelLength = 0;
                    this._numeric = true;
                    this._dots = 0;
                    i3 = i2 + 1;
                    z3 = true;
                }
                i2++;
            }
            if (i3 > 0) {
                if (i3 < this._current.length()) {
                    StringBuilder sb = this._buffer;
                    sb.replace(0, sb.length(), this._current.substring(i3));
                    this._startDomainName = 0;
                }
                if (i3 >= this._current.length() || this._buffer.toString().equals(".")) {
                    return ReaderNextState.InvalidDomainName;
                }
            }
        } else {
            this._startDomainName = this._buffer.length();
        }
        return ReaderNextState.ValidDomainName;
    }

    public ReaderNextState readDomainName() {
        if (readCurrent() == ReaderNextState.InvalidDomainName) {
            return ReaderNextState.InvalidDomainName;
        }
        boolean z = false;
        while (!z && !this._reader.eof()) {
            char c = this._reader.read();
            if (c == '/') {
                return checkDomainNameValid(ReaderNextState.ReadPath, Character.valueOf(c));
            }
            if (c == ':' && (!this._seenBracket || this._seenCompleteBracketSet)) {
                return checkDomainNameValid(ReaderNextState.ReadPort, Character.valueOf(c));
            }
            if (c == '?') {
                return checkDomainNameValid(ReaderNextState.ReadQueryString, Character.valueOf(c));
            }
            if (c == '#') {
                return checkDomainNameValid(ReaderNextState.ReadFragment, Character.valueOf(c));
            }
            if (c == '@') {
                this._reader.goBack();
                return ReaderNextState.ReadUserPass;
            }
            if (CharUtils.isDot(c) || (c == '%' && this._reader.canReadChars(2) && this._reader.peek(2).equalsIgnoreCase("2e"))) {
                if (this._currentLabelLength < 1) {
                    z = true;
                } else {
                    this._buffer.append(c);
                    if (!CharUtils.isDot(c)) {
                        this._buffer.append(this._reader.read());
                        this._buffer.append(this._reader.read());
                    }
                    if (!this._zoneIndex) {
                        this._dots++;
                        this._currentLabelLength = 0;
                    }
                    if (this._currentLabelLength >= 64) {
                        return ReaderNextState.InvalidDomainName;
                    }
                }
            } else if (this._seenBracket && ((CharUtils.isHex(c) || c == ':' || c == '[' || c == ']' || c == '%') && !this._seenCompleteBracketSet)) {
                if (c == '%') {
                    this._zoneIndex = true;
                } else if (c == ':') {
                    this._currentLabelLength = 0;
                } else {
                    if (c == '[') {
                        this._reader.goBack();
                        return ReaderNextState.InvalidDomainName;
                    }
                    if (c == ']') {
                        this._seenCompleteBracketSet = true;
                        this._zoneIndex = false;
                    } else {
                        this._currentLabelLength++;
                    }
                }
                this._numeric = false;
                this._buffer.append(c);
            } else if (CharUtils.isAlphaNumeric(c) || c == '-' || c >= 192) {
                if (this._seenCompleteBracketSet) {
                    this._reader.goBack();
                    z = true;
                } else {
                    if (c != 'x' && c != 'X' && !CharUtils.isNumeric(c)) {
                        this._numeric = false;
                    }
                    this._buffer.append(c);
                    this._currentLabelLength++;
                    this._topLevelLength = this._currentLabelLength;
                }
            } else if (c == '[' && !this._seenBracket) {
                this._seenBracket = true;
                this._numeric = false;
                this._buffer.append(c);
            } else if (c == '[' && this._seenCompleteBracketSet) {
                this._reader.goBack();
                z = true;
            } else if (c == '%' && this._reader.canReadChars(2) && CharUtils.isHex(this._reader.peekChar(0)) && CharUtils.isHex(this._reader.peekChar(1))) {
                this._buffer.append(c);
                this._buffer.append(this._reader.read());
                this._buffer.append(this._reader.read());
                this._currentLabelLength += 3;
                this._topLevelLength = this._currentLabelLength;
            } else {
                this._characterHandler.addCharacter(c);
                z = true;
            }
        }
        return checkDomainNameValid(ReaderNextState.ValidDomainName, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    private ReaderNextState checkDomainNameValid(ReaderNextState readerNextState, Character ch2) {
        int i;
        int i2;
        if (this._buffer.length() > 3) {
            StringBuilder sb = this._buffer;
            i = sb.substring(sb.length() - 3).equalsIgnoreCase("%2e") ? 3 : 1;
        }
        int length = this._buffer.length() - this._startDomainName;
        boolean zIsValidIpv6 = false;
        if (this._currentLabelLength <= 0) {
            i = 0;
        }
        int i3 = length + i;
        int i4 = this._dots + (this._currentLabelLength > 0 ? 1 : 0);
        if (i3 < 255 && i4 <= 127) {
            if (this._numeric) {
                zIsValidIpv6 = isValidIpv4(this._buffer.substring(this._startDomainName).toLowerCase());
            } else if (this._seenBracket) {
                zIsValidIpv6 = isValidIpv6(this._buffer.substring(this._startDomainName).toLowerCase());
            } else if ((this._currentLabelLength > 0 && this._dots >= 1) || ((this._dots >= 2 && this._currentLabelLength == 0) || (this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN) && this._dots == 0))) {
                int length2 = this._buffer.length() - this._topLevelLength;
                if (this._currentLabelLength == 0) {
                    length2--;
                }
                int iMax = Math.max(length2, 0);
                StringBuilder sb2 = this._buffer;
                if (sb2.substring(iMax, Math.min(4, sb2.length() - iMax) + iMax).equalsIgnoreCase("xn--") || ((i2 = this._topLevelLength) >= 2 && i2 <= 22)) {
                    zIsValidIpv6 = true;
                }
            }
        }
        if (!zIsValidIpv6) {
            this._reader.goBack();
            return ReaderNextState.InvalidDomainName;
        }
        if (ch2 != null) {
            this._buffer.append(ch2);
        }
        return readerNextState;
    }

    private boolean isValidIpv4(String str) {
        long j;
        int i;
        Integer numValueOf;
        if (str.length() <= 0) {
            return false;
        }
        int i2 = this._dots;
        if (i2 == 0) {
            try {
                if (str.length() > 2 && str.charAt(0) == '0' && str.charAt(1) == 'x') {
                    j = Long.parseLong(str.substring(2), 16);
                } else if (str.charAt(0) == '0') {
                    j = Long.parseLong(str.substring(1), 8);
                } else {
                    j = Long.parseLong(str);
                }
                return j <= 4294967295L && j >= 16843008;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        if (i2 != 3) {
            return false;
        }
        String[] strArrSplitByDot = CharUtils.splitByDot(str);
        boolean z = true;
        for (int i3 = 0; i3 < strArrSplitByDot.length && z; i3++) {
            String strSubstring = strArrSplitByDot[i3];
            if (strSubstring.length() > 0) {
                if (strSubstring.length() > 2 && strSubstring.charAt(0) == '0' && strSubstring.charAt(1) == 'x') {
                    strSubstring = strSubstring.substring(2);
                    i = 16;
                } else if (strSubstring.charAt(0) == '0') {
                    strSubstring = strSubstring.substring(1);
                    i = 8;
                } else {
                    i = 10;
                }
                if (strSubstring.length() == 0) {
                    numValueOf = 0;
                } else {
                    try {
                        numValueOf = Integer.valueOf(Integer.parseInt(strSubstring, i));
                    } catch (NumberFormatException unused2) {
                        return false;
                    }
                }
                if (numValueOf.intValue() < 0 || numValueOf.intValue() > 255) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0098  */
    /* JADX WARN: Code duplicated, block: B:42:0x009c  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:60:0x00de  */
    private boolean isValidIpv6(String str) {
        int i;
        char[] charArray = str.toCharArray();
        if (charArray.length >= 3) {
            char c = ']';
            if (charArray[charArray.length - 1] == ']') {
                char c2 = '[';
                if (charArray[0] == '[' && (charArray[1] != ':' || charArray[2] == ':')) {
                    StringBuilder sb = new StringBuilder();
                    Boolean bool = true;
                    int i2 = 0;
                    int i3 = 1;
                    boolean z = false;
                    char c3 = 0;
                    boolean z2 = false;
                    int i4 = 0;
                    while (i2 < charArray.length) {
                        char c4 = charArray[i2];
                        if (c4 == '%') {
                            if (charArray[i2] != '%') {
                                if (charArray.length - i2 >= 2 && charArray[i2 + 1] == '2') {
                                    i = i2 + 2;
                                    if (charArray[i] == 'e') {
                                        sb.append("%2e");
                                        i2 = i;
                                        bool = false;
                                    }
                                }
                                z = true;
                            }
                            if (bool.booleanValue() && (!z || charArray[i2] == '%')) {
                                if (!isValidIpv4(sb.toString())) {
                                    return false;
                                }
                                i3++;
                            }
                        } else if (c4 == ':') {
                            if (c3 == ':') {
                                if (z2) {
                                    return false;
                                }
                                z2 = true;
                            }
                            if (!bool.booleanValue()) {
                                return false;
                            }
                            i3++;
                            sb.delete(0, sb.length());
                            bool = true;
                            i4 = 0;
                        } else if (c4 != c2) {
                            if (c4 == c) {
                                if (charArray[i2] != '%') {
                                    if (charArray.length - i2 >= 2) {
                                        i = i2 + 2;
                                        if (charArray[i] == 'e') {
                                            sb.append("%2e");
                                            i2 = i;
                                            bool = false;
                                        }
                                    }
                                    z = true;
                                }
                                if (bool.booleanValue()) {
                                }
                            } else if (z) {
                                if (!CharUtils.isUnreserved(charArray[i2])) {
                                    return false;
                                }
                            } else {
                                sb.append(charArray[i2]);
                                if (bool.booleanValue() && CharUtils.isHex(charArray[i2])) {
                                    i4++;
                                } else {
                                    bool = false;
                                }
                            }
                        }
                        if (i4 > 4 || i3 > 8) {
                            return false;
                        }
                        c3 = charArray[i2];
                        i2++;
                        c = ']';
                        c2 = '[';
                    }
                    if (i3 != 1) {
                        return i3 >= 8 || z2;
                    }
                    return false;
                }
            }
        }
        return false;
    }
}
