package com.linkedin.urls.detection;

/* JADX INFO: loaded from: classes.dex */
public class InputTextReader {
    private final char[] _content;
    private int _index = 0;

    public InputTextReader(String str) {
        this._content = str.toCharArray();
    }

    public char read() {
        char[] cArr = this._content;
        int i = this._index;
        this._index = i + 1;
        char c = cArr[i];
        if (CharUtils.isWhiteSpace(c)) {
            return ' ';
        }
        return c;
    }

    public String peek(int i) {
        return new String(this._content, this._index, i);
    }

    public char peekChar(int i) {
        if (!canReadChars(i)) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this._content[this._index + i];
    }

    public boolean canReadChars(int i) {
        return this._content.length >= this._index + i;
    }

    public boolean eof() {
        return this._content.length <= this._index;
    }

    public int getPosition() {
        return this._index;
    }

    public void seek(int i) {
        this._index = i;
    }

    public void goBack() {
        this._index--;
    }
}
