package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class CodedInputByteBufferNano {
    private final byte[] buffer;
    private int bufferPos;
    private int bufferSize;
    private int bufferSizeAfterLimit;
    private int bufferStart;
    private int lastTag;
    private int recursionDepth;
    private int currentLimit = Integer.MAX_VALUE;
    private int recursionLimit = 64;
    private int sizeLimit = 67108864;

    public static CodedInputByteBufferNano newInstance(byte[] bArr, int i, int i2) {
        return new CodedInputByteBufferNano(bArr, i, i2);
    }

    public int readTag() throws IOException {
        if (isAtEnd()) {
            this.lastTag = 0;
            return 0;
        }
        this.lastTag = readRawVarint32();
        int i = this.lastTag;
        if (i != 0) {
            return i;
        }
        throw InvalidProtocolBufferNanoException.invalidTag();
    }

    public void checkLastTagWas(int i) throws InvalidProtocolBufferNanoException {
        if (this.lastTag != i) {
            throw InvalidProtocolBufferNanoException.invalidEndTag();
        }
    }

    public boolean skipField(int i) throws IOException {
        switch (WireFormatNano.getTagWireType(i)) {
            case 0:
                readInt32();
                return true;
            case 1:
                readRawLittleEndian64();
                return true;
            case 2:
                skipRawBytes(readRawVarint32());
                return true;
            case 3:
                skipMessage();
                checkLastTagWas(WireFormatNano.makeTag(WireFormatNano.getTagFieldNumber(i), 4));
                return true;
            case 4:
                return false;
            case 5:
                readRawLittleEndian32();
                return true;
            default:
                throw InvalidProtocolBufferNanoException.invalidWireType();
        }
    }

    public void skipMessage() throws IOException {
        int tag;
        do {
            tag = readTag();
            if (tag == 0) {
                return;
            }
        } while (skipField(tag));
    }

    public long readInt64() throws IOException {
        return readRawVarint64();
    }

    public int readInt32() throws IOException {
        return readRawVarint32();
    }

    public boolean readBool() throws IOException {
        return readRawVarint32() != 0;
    }

    public String readString() throws IOException {
        int rawVarint32 = readRawVarint32();
        int i = this.bufferSize;
        int i2 = this.bufferPos;
        if (rawVarint32 <= i - i2 && rawVarint32 > 0) {
            String str = new String(this.buffer, i2, rawVarint32, "UTF-8");
            this.bufferPos += rawVarint32;
            return str;
        }
        return new String(readRawBytes(rawVarint32), "UTF-8");
    }

    public void readMessage(MessageNano messageNano) throws IOException {
        int rawVarint32 = readRawVarint32();
        if (this.recursionDepth >= this.recursionLimit) {
            throw InvalidProtocolBufferNanoException.recursionLimitExceeded();
        }
        int iPushLimit = pushLimit(rawVarint32);
        this.recursionDepth++;
        messageNano.mergeFrom(this);
        checkLastTagWas(0);
        this.recursionDepth--;
        popLimit(iPushLimit);
    }

    public byte[] readBytes() throws IOException {
        int rawVarint32 = readRawVarint32();
        int i = this.bufferSize;
        int i2 = this.bufferPos;
        if (rawVarint32 <= i - i2 && rawVarint32 > 0) {
            byte[] bArr = new byte[rawVarint32];
            System.arraycopy(this.buffer, i2, bArr, 0, rawVarint32);
            this.bufferPos += rawVarint32;
            return bArr;
        }
        return readRawBytes(rawVarint32);
    }

    public int readRawVarint32() throws IOException {
        byte rawByte = readRawByte();
        if (rawByte >= 0) {
            return rawByte;
        }
        int i = rawByte & 127;
        byte rawByte2 = readRawByte();
        if (rawByte2 >= 0) {
            return i | (rawByte2 << 7);
        }
        int i2 = i | ((rawByte2 & 127) << 7);
        byte rawByte3 = readRawByte();
        if (rawByte3 >= 0) {
            return i2 | (rawByte3 << 14);
        }
        int i3 = i2 | ((rawByte3 & 127) << 14);
        byte rawByte4 = readRawByte();
        if (rawByte4 >= 0) {
            return i3 | (rawByte4 << 21);
        }
        int i4 = i3 | ((rawByte4 & 127) << 21);
        byte rawByte5 = readRawByte();
        int i5 = i4 | (rawByte5 << 28);
        if (rawByte5 >= 0) {
            return i5;
        }
        for (int i6 = 0; i6 < 5; i6++) {
            if (readRawByte() >= 0) {
                return i5;
            }
        }
        throw InvalidProtocolBufferNanoException.malformedVarint();
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public long readRawVarint64() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte rawByte = readRawByte();
            j |= ((long) (rawByte & 127)) << i;
            if ((rawByte & 128) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferNanoException.malformedVarint();
    }

    public int readRawLittleEndian32() throws IOException {
        return (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24);
    }

    public long readRawLittleEndian64() throws IOException {
        byte rawByte = readRawByte();
        return ((((long) readRawByte()) & 255) << 8) | (((long) rawByte) & 255) | ((((long) readRawByte()) & 255) << 16) | ((((long) readRawByte()) & 255) << 24) | ((((long) readRawByte()) & 255) << 32) | ((((long) readRawByte()) & 255) << 40) | ((((long) readRawByte()) & 255) << 48) | ((((long) readRawByte()) & 255) << 56);
    }

    private CodedInputByteBufferNano(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.bufferStart = i;
        this.bufferSize = i2 + i;
        this.bufferPos = i;
    }

    public int pushLimit(int i) throws InvalidProtocolBufferNanoException {
        if (i < 0) {
            throw InvalidProtocolBufferNanoException.negativeSize();
        }
        int i2 = i + this.bufferPos;
        int i3 = this.currentLimit;
        if (i2 > i3) {
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        this.currentLimit = i2;
        recomputeBufferSizeAfterLimit();
        return i3;
    }

    private void recomputeBufferSizeAfterLimit() {
        this.bufferSize += this.bufferSizeAfterLimit;
        int i = this.bufferSize;
        int i2 = this.currentLimit;
        if (i > i2) {
            this.bufferSizeAfterLimit = i - i2;
            this.bufferSize = i - this.bufferSizeAfterLimit;
        } else {
            this.bufferSizeAfterLimit = 0;
        }
    }

    public void popLimit(int i) {
        this.currentLimit = i;
        recomputeBufferSizeAfterLimit();
    }

    public boolean isAtEnd() {
        return this.bufferPos == this.bufferSize;
    }

    public int getPosition() {
        return this.bufferPos - this.bufferStart;
    }

    public void rewindToPosition(int i) {
        int i2 = this.bufferPos;
        int i3 = this.bufferStart;
        if (i <= i2 - i3) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(24);
                sb.append("Bad position ");
                sb.append(i);
                throw new IllegalArgumentException(sb.toString());
            }
            this.bufferPos = i3 + i;
            return;
        }
        int i4 = i2 - i3;
        StringBuilder sb2 = new StringBuilder(50);
        sb2.append("Position ");
        sb2.append(i);
        sb2.append(" is beyond current ");
        sb2.append(i4);
        throw new IllegalArgumentException(sb2.toString());
    }

    public byte readRawByte() throws IOException {
        int i = this.bufferPos;
        if (i == this.bufferSize) {
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        byte[] bArr = this.buffer;
        this.bufferPos = i + 1;
        return bArr[i];
    }

    public byte[] readRawBytes(int i) throws IOException {
        if (i < 0) {
            throw InvalidProtocolBufferNanoException.negativeSize();
        }
        int i2 = this.bufferPos;
        int i3 = i2 + i;
        int i4 = this.currentLimit;
        if (i3 > i4) {
            skipRawBytes(i4 - i2);
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        if (i <= this.bufferSize - i2) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.buffer, i2, bArr, 0, i);
            this.bufferPos += i;
            return bArr;
        }
        throw InvalidProtocolBufferNanoException.truncatedMessage();
    }

    public void skipRawBytes(int i) throws IOException {
        if (i < 0) {
            throw InvalidProtocolBufferNanoException.negativeSize();
        }
        int i2 = this.bufferPos;
        int i3 = i2 + i;
        int i4 = this.currentLimit;
        if (i3 > i4) {
            skipRawBytes(i4 - i2);
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        if (i <= this.bufferSize - i2) {
            this.bufferPos = i2 + i;
            return;
        }
        throw InvalidProtocolBufferNanoException.truncatedMessage();
    }
}
