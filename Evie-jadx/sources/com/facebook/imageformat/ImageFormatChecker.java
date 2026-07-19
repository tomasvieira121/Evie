package com.facebook.imageformat;

import com.facebook.common.internal.ByteStreams;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImageFormatChecker {
    private static ImageFormatChecker sInstance;

    @Nullable
    private List<ImageFormat.FormatChecker> mCustomImageFormatCheckers;
    private final ImageFormat.FormatChecker mDefaultFormatChecker = new DefaultImageFormatChecker();
    private int mMaxHeaderLength;

    private ImageFormatChecker() {
        updateMaxHeaderLength();
    }

    public void setCustomImageFormatCheckers(@Nullable List<ImageFormat.FormatChecker> list) {
        this.mCustomImageFormatCheckers = list;
        updateMaxHeaderLength();
    }

    public ImageFormat determineImageFormat(InputStream inputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        int i = this.mMaxHeaderLength;
        byte[] bArr = new byte[i];
        int headerFromStream = readHeaderFromStream(i, inputStream, bArr);
        List<ImageFormat.FormatChecker> list = this.mCustomImageFormatCheckers;
        if (list != null) {
            Iterator<ImageFormat.FormatChecker> it = list.iterator();
            while (it.hasNext()) {
                ImageFormat imageFormatDetermineFormat = it.next().determineFormat(bArr, headerFromStream);
                if (imageFormatDetermineFormat != null && imageFormatDetermineFormat != ImageFormat.UNKNOWN) {
                    return imageFormatDetermineFormat;
                }
            }
        }
        ImageFormat imageFormatDetermineFormat2 = this.mDefaultFormatChecker.determineFormat(bArr, headerFromStream);
        return imageFormatDetermineFormat2 == null ? ImageFormat.UNKNOWN : imageFormatDetermineFormat2;
    }

    private void updateMaxHeaderLength() {
        this.mMaxHeaderLength = this.mDefaultFormatChecker.getHeaderSize();
        List<ImageFormat.FormatChecker> list = this.mCustomImageFormatCheckers;
        if (list != null) {
            Iterator<ImageFormat.FormatChecker> it = list.iterator();
            while (it.hasNext()) {
                this.mMaxHeaderLength = Math.max(this.mMaxHeaderLength, it.next().getHeaderSize());
            }
        }
    }

    private static int readHeaderFromStream(int i, InputStream inputStream, byte[] bArr) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length >= i);
        if (inputStream.markSupported()) {
            try {
                inputStream.mark(i);
                return ByteStreams.read(inputStream, bArr, 0, i);
            } finally {
                inputStream.reset();
            }
        }
        return ByteStreams.read(inputStream, bArr, 0, i);
    }

    public static synchronized ImageFormatChecker getInstance() {
        if (sInstance == null) {
            sInstance = new ImageFormatChecker();
        }
        return sInstance;
    }

    public static ImageFormat getImageFormat(InputStream inputStream) throws IOException {
        return getInstance().determineImageFormat(inputStream);
    }

    public static ImageFormat getImageFormat_WrapIOException(InputStream inputStream) {
        try {
            return getImageFormat(inputStream);
        } catch (IOException e) {
            throw Throwables.propagate(e);
        }
    }
}
