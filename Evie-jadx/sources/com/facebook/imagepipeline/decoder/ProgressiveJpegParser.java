package com.facebook.imagepipeline.decoder;

import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.common.memory.ByteArrayPool;
import com.facebook.common.memory.PooledByteArrayBufferedInputStream;
import com.facebook.common.util.StreamUtil;
import com.facebook.imagepipeline.image.EncodedImage;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class ProgressiveJpegParser {
    private final ByteArrayPool mByteArrayPool;
    private boolean mEndMarkerRead;
    private int mBytesParsed = 0;
    private int mLastByteRead = 0;
    private int mNextFullScanNumber = 0;
    private int mBestScanEndOffset = 0;
    private int mBestScanNumber = 0;
    private int mParserState = 0;

    private static boolean doesMarkerStartSegment(int i) {
        if (i == 1) {
            return false;
        }
        return ((i >= 208 && i <= 215) || i == 217 || i == 216) ? false : true;
    }

    public ProgressiveJpegParser(ByteArrayPool byteArrayPool) {
        this.mByteArrayPool = (ByteArrayPool) Preconditions.checkNotNull(byteArrayPool);
    }

    public boolean parseMoreData(EncodedImage encodedImage) {
        if (this.mParserState == 6 || encodedImage.getSize() <= this.mBytesParsed) {
            return false;
        }
        PooledByteArrayBufferedInputStream pooledByteArrayBufferedInputStream = new PooledByteArrayBufferedInputStream(encodedImage.getInputStream(), this.mByteArrayPool.get(16384), this.mByteArrayPool);
        try {
            StreamUtil.skip(pooledByteArrayBufferedInputStream, this.mBytesParsed);
            return doParseMoreData(pooledByteArrayBufferedInputStream);
        } catch (IOException e) {
            Throwables.propagate(e);
            return false;
        } finally {
            Closeables.closeQuietly(pooledByteArrayBufferedInputStream);
        }
    }

    private boolean doParseMoreData(InputStream inputStream) throws Throwable {
        int i;
        int i2 = this.mBestScanNumber;
        while (this.mParserState != 6 && (i = inputStream.read()) != -1) {
            try {
                this.mBytesParsed++;
                if (this.mEndMarkerRead) {
                    this.mParserState = 6;
                    this.mEndMarkerRead = false;
                    return false;
                }
                switch (this.mParserState) {
                    case 0:
                        if (i == 255) {
                            this.mParserState = 1;
                        } else {
                            this.mParserState = 6;
                        }
                        break;
                    case 1:
                        if (i == 216) {
                            this.mParserState = 2;
                        } else {
                            this.mParserState = 6;
                        }
                        break;
                    case 2:
                        if (i == 255) {
                            this.mParserState = 3;
                        }
                        break;
                    case 3:
                        if (i == 255) {
                            this.mParserState = 3;
                        } else if (i == 0) {
                            this.mParserState = 2;
                        } else if (i == 217) {
                            this.mEndMarkerRead = true;
                            newScanOrImageEndFound(this.mBytesParsed - 2);
                            this.mParserState = 2;
                        } else {
                            if (i == 218) {
                                newScanOrImageEndFound(this.mBytesParsed - 2);
                            }
                            if (doesMarkerStartSegment(i)) {
                                this.mParserState = 4;
                            } else {
                                this.mParserState = 2;
                            }
                        }
                        break;
                    case 4:
                        this.mParserState = 5;
                        break;
                    case 5:
                        int i3 = ((this.mLastByteRead << 8) + i) - 2;
                        StreamUtil.skip(inputStream, i3);
                        this.mBytesParsed += i3;
                        this.mParserState = 2;
                        break;
                    default:
                        Preconditions.checkState(false);
                        break;
                }
                this.mLastByteRead = i;
            } catch (IOException e) {
                Throwables.propagate(e);
            }
        }
        return (this.mParserState == 6 || this.mBestScanNumber == i2) ? false : true;
    }

    private void newScanOrImageEndFound(int i) {
        if (this.mNextFullScanNumber > 0) {
            this.mBestScanEndOffset = i;
        }
        int i2 = this.mNextFullScanNumber;
        this.mNextFullScanNumber = i2 + 1;
        this.mBestScanNumber = i2;
    }

    public int getBestScanEndOffset() {
        return this.mBestScanEndOffset;
    }

    public int getBestScanNumber() {
        return this.mBestScanNumber;
    }

    public boolean isEndMarkerRead() {
        return this.mEndMarkerRead;
    }
}
