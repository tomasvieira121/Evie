package com.linkedin.urls.detection;

import com.linkedin.urls.Url;
import com.linkedin.urls.UrlMarker;
import com.linkedin.urls.UrlPart;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class UrlDetector {
    private static final Set<String> VALID_SCHEMES = Collections.unmodifiableSet(new HashSet(Arrays.asList("http://", "https://", "ftp://", "ftps://", "http%3a//", "https%3a//", "ftp%3a//", "ftps%3a//")));
    private final UrlDetectorOptions _options;
    private final InputTextReader _reader;
    private StringBuilder _buffer = new StringBuilder();
    private boolean _hasScheme = false;
    private boolean _quoteStart = false;
    private boolean _singleQuoteStart = false;
    private boolean _dontMatchIpv6 = false;
    private ArrayList<Url> _urlList = new ArrayList<>();
    private HashMap<Character, Integer> _characterMatch = new HashMap<>();
    private UrlMarker _currentUrlMarker = new UrlMarker();

    private enum CharacterMatch {
        CharacterNotMatched,
        CharacterMatchStop,
        CharacterMatchStart
    }

    public enum ReadEndState {
        ValidUrl,
        InvalidUrl
    }

    public UrlDetector(String str, UrlDetectorOptions urlDetectorOptions) {
        this._reader = new InputTextReader(str);
        this._options = urlDetectorOptions;
    }

    public List<Url> detect() {
        readDefault();
        return this._urlList;
    }

    private void readDefault() {
        int iProcessColon = 0;
        while (!this._reader.eof()) {
            char c = this._reader.read();
            switch (c) {
                case ' ':
                    if (this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN) && this._buffer.length() > 0 && this._hasScheme) {
                        this._reader.goBack();
                        if (!readDomainName(this._buffer.substring(iProcessColon))) {
                            readEnd(ReadEndState.InvalidUrl);
                        }
                    }
                    this._buffer.append(c);
                    readEnd(ReadEndState.InvalidUrl);
                    iProcessColon = 0;
                    break;
                case '%':
                    if (this._reader.canReadChars(2)) {
                        if (this._reader.peek(2).equalsIgnoreCase("3a")) {
                            this._buffer.append(c);
                            this._buffer.append(this._reader.read());
                            this._buffer.append(this._reader.read());
                            iProcessColon = processColon(iProcessColon);
                        } else if (CharUtils.isHex(this._reader.peekChar(0)) && CharUtils.isHex(this._reader.peekChar(1))) {
                            this._buffer.append(c);
                            this._buffer.append(this._reader.read());
                            this._buffer.append(this._reader.read());
                            if (!readDomainName(this._buffer.substring(iProcessColon))) {
                                readEnd(ReadEndState.InvalidUrl);
                            }
                            iProcessColon = 0;
                        }
                    }
                    break;
                case '.':
                case 12290:
                case 65294:
                case 65377:
                    this._buffer.append(c);
                    if (!readDomainName(this._buffer.substring(iProcessColon))) {
                        readEnd(ReadEndState.InvalidUrl);
                    }
                    iProcessColon = 0;
                    break;
                case '/':
                    if (this._hasScheme || (this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN) && this._buffer.length() > 1)) {
                        this._reader.goBack();
                        if (!readDomainName(this._buffer.substring(iProcessColon))) {
                            readEnd(ReadEndState.InvalidUrl);
                        }
                        iProcessColon = 0;
                    } else {
                        readEnd(ReadEndState.InvalidUrl);
                        this._buffer.append(c);
                        this._hasScheme = readHtml5Root();
                        iProcessColon = this._buffer.length();
                    }
                    break;
                case ':':
                    this._buffer.append(c);
                    iProcessColon = processColon(iProcessColon);
                    break;
                case '@':
                    if (this._buffer.length() > 0) {
                        this._currentUrlMarker.setIndex(UrlPart.USERNAME_PASSWORD, iProcessColon);
                        this._buffer.append(c);
                        if (!readDomainName(null)) {
                            readEnd(ReadEndState.InvalidUrl);
                        }
                        iProcessColon = 0;
                    }
                    break;
                case '[':
                    if (this._dontMatchIpv6 && checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                        readEnd(ReadEndState.InvalidUrl);
                        iProcessColon = 0;
                    }
                    int position = this._reader.getPosition();
                    if (!this._hasScheme) {
                        StringBuilder sb = this._buffer;
                        sb.delete(0, sb.length());
                    }
                    this._buffer.append(c);
                    if (!readDomainName(this._buffer.substring(iProcessColon))) {
                        readEnd(ReadEndState.InvalidUrl);
                        this._reader.seek(position);
                        this._dontMatchIpv6 = true;
                    }
                    iProcessColon = 0;
                    break;
                default:
                    if (checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                        readEnd(ReadEndState.InvalidUrl);
                        iProcessColon = 0;
                    } else {
                        this._buffer.append(c);
                    }
                    break;
            }
        }
        if (!this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN) || this._buffer.length() <= 0 || !this._hasScheme || readDomainName(this._buffer.substring(iProcessColon))) {
            return;
        }
        readEnd(ReadEndState.InvalidUrl);
    }

    private int processColon(int i) {
        if (this._hasScheme) {
            if (readUserPass(i)) {
                return 0;
            }
            this._reader.goBack();
            if (this._buffer.length() > 0) {
                StringBuilder sb = this._buffer;
                sb.delete(sb.length() - 1, this._buffer.length());
            } else {
                i = 0;
            }
            int position = (this._reader.getPosition() - this._buffer.length()) + i;
            if (readDomainName(this._buffer.substring(i))) {
                return 0;
            }
            this._reader.seek(position);
            readEnd(ReadEndState.InvalidUrl);
            return 0;
        }
        if (readScheme() && this._buffer.length() > 0) {
            this._hasScheme = true;
            return this._buffer.length();
        }
        if (this._buffer.length() > 0 && this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN) && this._reader.canReadChars(1)) {
            this._reader.goBack();
            StringBuilder sb2 = this._buffer;
            sb2.delete(sb2.length() - 1, this._buffer.length());
            if (!readDomainName(this._buffer.toString())) {
                readEnd(ReadEndState.InvalidUrl);
            }
            return i;
        }
        readEnd(ReadEndState.InvalidUrl);
        return 0;
    }

    private int getCharacterCount(char c) {
        Integer num = this._characterMatch.get(Character.valueOf(c));
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharacterMatch checkMatchingCharacter(char c) {
        boolean z;
        if ((c == '\"' && this._options.hasFlag(UrlDetectorOptions.QUOTE_MATCH)) || (c == '\'' && this._options.hasFlag(UrlDetectorOptions.SINGLE_QUOTE_MATCH))) {
            if (c == '\"') {
                z = this._quoteStart;
                this._quoteStart = true;
            } else {
                z = this._singleQuoteStart;
                this._singleQuoteStart = true;
            }
            Integer numValueOf = Integer.valueOf(getCharacterCount(c) + 1);
            this._characterMatch.put(Character.valueOf(c), numValueOf);
            return (z || numValueOf.intValue() % 2 == 0) ? CharacterMatch.CharacterMatchStop : CharacterMatch.CharacterMatchStart;
        }
        if (this._options.hasFlag(UrlDetectorOptions.BRACKET_MATCH) && (c == '[' || c == '{' || c == '(')) {
            this._characterMatch.put(Character.valueOf(c), Integer.valueOf(getCharacterCount(c) + 1));
            return CharacterMatch.CharacterMatchStart;
        }
        if (this._options.hasFlag(UrlDetectorOptions.XML) && c == '<') {
            this._characterMatch.put(Character.valueOf(c), Integer.valueOf(getCharacterCount(c) + 1));
            return CharacterMatch.CharacterMatchStart;
        }
        if ((this._options.hasFlag(UrlDetectorOptions.BRACKET_MATCH) && (c == ']' || c == '}' || c == ')')) || (this._options.hasFlag(UrlDetectorOptions.XML) && c == '>')) {
            Integer numValueOf2 = Integer.valueOf(getCharacterCount(c) + 1);
            this._characterMatch.put(Character.valueOf(c), numValueOf2);
            char c2 = 0;
            if (c == ')') {
                c2 = '(';
            } else if (c == '>') {
                c2 = '<';
            } else if (c == ']') {
                c2 = '[';
            } else if (c == '}') {
                c2 = '{';
            }
            return getCharacterCount(c2) > numValueOf2.intValue() ? CharacterMatch.CharacterMatchStop : CharacterMatch.CharacterMatchStart;
        }
        return CharacterMatch.CharacterNotMatched;
    }

    private boolean readHtml5Root() {
        if (this._reader.eof()) {
            return false;
        }
        char c = this._reader.read();
        if (c == '/') {
            this._buffer.append(c);
            return true;
        }
        this._reader.goBack();
        readEnd(ReadEndState.InvalidUrl);
        return false;
    }

    private boolean readScheme() {
        if (this._options.hasFlag(UrlDetectorOptions.HTML) && this._buffer.length() >= 7) {
            StringBuilder sb = this._buffer;
            if ("mailto:".equalsIgnoreCase(sb.substring(sb.length() - 7))) {
                return readEnd(ReadEndState.InvalidUrl);
            }
        }
        int length = this._buffer.length();
        int i = 0;
        while (!this._reader.eof()) {
            char c = this._reader.read();
            if (c == '/') {
                this._buffer.append(c);
                if (i == 1) {
                    if (!VALID_SCHEMES.contains(this._buffer.toString().toLowerCase())) {
                        return false;
                    }
                    this._currentUrlMarker.setIndex(UrlPart.SCHEME, 0);
                    return true;
                }
                i++;
            } else {
                if (c == ' ' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                    this._buffer.append(c);
                    return false;
                }
                if (c == '[') {
                    this._reader.goBack();
                    return false;
                }
                if (length > 0 || i > 0 || !CharUtils.isAlpha(c)) {
                    this._reader.goBack();
                    return readUserPass(0);
                }
            }
        }
        return false;
    }

    private boolean readUserPass(int i) {
        int length = this._buffer.length();
        int i2 = 0;
        boolean z = false;
        while (i2 == 0 && !this._reader.eof()) {
            char c = this._reader.read();
            if (c == '@') {
                this._buffer.append(c);
                this._currentUrlMarker.setIndex(UrlPart.USERNAME_PASSWORD, i);
                return readDomainName("");
            }
            if (CharUtils.isDot(c) || c == '[') {
                this._buffer.append(c);
                z = true;
            } else if (c == '#' || c == ' ' || c == '/' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                i2 = 1;
                z = true;
            } else {
                this._buffer.append(c);
            }
        }
        if (z) {
            int length2 = this._buffer.length() - length;
            StringBuilder sb = this._buffer;
            sb.delete(length, sb.length());
            this._reader.seek(Math.max((this._reader.getPosition() - length2) - i2, 0));
            return false;
        }
        return readEnd(ReadEndState.InvalidUrl);
    }

    private boolean readDomainName(String str) {
        this._currentUrlMarker.setIndex(UrlPart.HOST, str == null ? this._buffer.length() : this._buffer.length() - str.length());
        switch (new DomainNameReader(this._reader, this._buffer, str, this._options, new DomainNameReader.CharacterHandler() { // from class: com.linkedin.urls.detection.UrlDetector.1
            @Override // com.linkedin.urls.detection.DomainNameReader.CharacterHandler
            public void addCharacter(char c) {
                UrlDetector.this.checkMatchingCharacter(c);
            }
        }).readDomainName()) {
            case ValidDomainName:
                return readEnd(ReadEndState.ValidUrl);
            case ReadFragment:
                return readFragment();
            case ReadPath:
                return readPath();
            case ReadPort:
                return readPort();
            case ReadQueryString:
                return readQueryString();
            case ReadUserPass:
                int iIndexOf = this._currentUrlMarker.indexOf(UrlPart.HOST);
                this._currentUrlMarker.unsetIndex(UrlPart.HOST);
                return readUserPass(iIndexOf);
            default:
                return false;
        }
    }

    private boolean readFragment() {
        this._currentUrlMarker.setIndex(UrlPart.FRAGMENT, this._buffer.length() - 1);
        while (!this._reader.eof()) {
            char c = this._reader.read();
            if (c == ' ' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                return readEnd(ReadEndState.ValidUrl);
            }
            this._buffer.append(c);
        }
        return readEnd(ReadEndState.ValidUrl);
    }

    private boolean readQueryString() {
        this._currentUrlMarker.setIndex(UrlPart.QUERY, this._buffer.length() - 1);
        while (!this._reader.eof()) {
            char c = this._reader.read();
            if (c == '#') {
                this._buffer.append(c);
                return readFragment();
            }
            if (c == ' ' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                return readEnd(ReadEndState.ValidUrl);
            }
            this._buffer.append(c);
        }
        return readEnd(ReadEndState.ValidUrl);
    }

    private boolean readPort() {
        this._currentUrlMarker.setIndex(UrlPart.PORT, this._buffer.length());
        int i = 0;
        while (!this._reader.eof()) {
            char c = this._reader.read();
            i++;
            if (c == '/') {
                this._buffer.append(c);
                return readPath();
            }
            if (c == '?') {
                this._buffer.append(c);
                return readQueryString();
            }
            if (c == '#') {
                this._buffer.append(c);
                return readFragment();
            }
            if (checkMatchingCharacter(c) == CharacterMatch.CharacterMatchStop || !CharUtils.isNumeric(c)) {
                this._reader.goBack();
                if (i == 1) {
                    StringBuilder sb = this._buffer;
                    sb.delete(sb.length() - 1, this._buffer.length());
                }
                this._currentUrlMarker.unsetIndex(UrlPart.PORT);
                return readEnd(ReadEndState.ValidUrl);
            }
            this._buffer.append(c);
        }
        return readEnd(ReadEndState.ValidUrl);
    }

    private boolean readPath() {
        this._currentUrlMarker.setIndex(UrlPart.PATH, this._buffer.length() - 1);
        while (!this._reader.eof()) {
            char c = this._reader.read();
            if (c == ' ' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                return readEnd(ReadEndState.ValidUrl);
            }
            this._buffer.append(c);
            if (c == '?') {
                return readQueryString();
            }
            if (c == '#') {
                return readFragment();
            }
        }
        return readEnd(ReadEndState.ValidUrl);
    }

    private boolean readEnd(ReadEndState readEndState) {
        if (readEndState == ReadEndState.ValidUrl && this._buffer.length() > 0) {
            int length = this._buffer.length();
            if (this._quoteStart) {
                int i = length - 1;
                if (this._buffer.charAt(i) == '\"') {
                    this._buffer.delete(i, length);
                }
            }
            if (this._buffer.length() > 0) {
                this._currentUrlMarker.setOriginalUrl(this._buffer.toString());
                this._urlList.add(this._currentUrlMarker.createUrl());
            }
        }
        StringBuilder sb = this._buffer;
        sb.delete(0, sb.length());
        this._quoteStart = false;
        this._hasScheme = false;
        this._dontMatchIpv6 = false;
        this._currentUrlMarker = new UrlMarker();
        return readEndState == ReadEndState.ValidUrl;
    }
}
