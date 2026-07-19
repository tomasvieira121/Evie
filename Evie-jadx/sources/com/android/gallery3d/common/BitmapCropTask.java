package com.android.gallery3d.common;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import com.voxel.launcher3.NycWallpaperUtils;
import com.voxel.launcher3.Utilities;
import is.shortcut.R;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class BitmapCropTask extends AsyncTask<Integer, Void, Boolean> {
    Context mContext;
    RectF mCropBounds;
    Bitmap mCroppedBitmap;
    String mInFilePath;
    byte[] mInImageBytes;
    int mInResId;
    Uri mInUri;
    boolean mNoCrop;
    OnBitmapCroppedHandler mOnBitmapCroppedHandler;
    OnEndCropHandler mOnEndCropHandler;
    int mOutHeight;
    int mOutWidth;
    Resources mResources;
    int mRotation;
    boolean mSaveCroppedBitmap;
    boolean mSetWallpaper;

    public interface OnBitmapCroppedHandler {
        void onBitmapCropped(byte[] bArr, Rect rect);
    }

    public interface OnEndCropHandler {
        void run(boolean z);
    }

    public BitmapCropTask(byte[] bArr, RectF rectF, int i, int i2, int i3, boolean z, boolean z2, OnEndCropHandler onEndCropHandler) {
        this.mInUri = null;
        this.mInResId = 0;
        this.mCropBounds = null;
        this.mInImageBytes = bArr;
        init(rectF, i, i2, i3, z, z2, onEndCropHandler);
    }

    public BitmapCropTask(Context context, Uri uri, RectF rectF, int i, int i2, int i3, boolean z, boolean z2, OnEndCropHandler onEndCropHandler) {
        this.mInUri = null;
        this.mInResId = 0;
        this.mCropBounds = null;
        this.mContext = context;
        this.mInUri = uri;
        init(rectF, i, i2, i3, z, z2, onEndCropHandler);
    }

    public BitmapCropTask(Context context, Resources resources, int i, RectF rectF, int i2, int i3, int i4, boolean z, boolean z2, OnEndCropHandler onEndCropHandler) {
        this.mInUri = null;
        this.mInResId = 0;
        this.mCropBounds = null;
        this.mContext = context;
        this.mInResId = i;
        this.mResources = resources;
        init(rectF, i2, i3, i4, z, z2, onEndCropHandler);
    }

    private void init(RectF rectF, int i, int i2, int i3, boolean z, boolean z2, OnEndCropHandler onEndCropHandler) {
        this.mCropBounds = rectF;
        this.mRotation = i;
        this.mOutWidth = i2;
        this.mOutHeight = i3;
        this.mSetWallpaper = z;
        this.mSaveCroppedBitmap = z2;
        this.mOnEndCropHandler = onEndCropHandler;
    }

    public void setOnBitmapCropped(OnBitmapCroppedHandler onBitmapCroppedHandler) {
        this.mOnBitmapCroppedHandler = onBitmapCroppedHandler;
    }

    public void setNoCrop(boolean z) {
        this.mNoCrop = z;
    }

    public void setOnEndRunnable(OnEndCropHandler onEndCropHandler) {
        this.mOnEndCropHandler = onEndCropHandler;
    }

    private InputStream regenerateInputStream() {
        if (this.mInUri == null && this.mInResId == 0 && this.mInFilePath == null && this.mInImageBytes == null) {
            Log.w("BitmapCropTask", "cannot read original file, no input URI, resource ID, or image byte array given");
            return null;
        }
        try {
            if (this.mInUri != null) {
                return new BufferedInputStream(this.mContext.getContentResolver().openInputStream(this.mInUri));
            }
            if (this.mInFilePath != null) {
                return this.mContext.openFileInput(this.mInFilePath);
            }
            if (this.mInImageBytes != null) {
                return new BufferedInputStream(new ByteArrayInputStream(this.mInImageBytes));
            }
            return new BufferedInputStream(this.mResources.openRawResource(this.mInResId));
        } catch (FileNotFoundException e) {
            Log.w("BitmapCropTask", "cannot read file: " + this.mInUri.toString(), e);
            return null;
        }
    }

    public Point getImageBounds() {
        InputStream inputStreamRegenerateInputStream = regenerateInputStream();
        if (inputStreamRegenerateInputStream != null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStreamRegenerateInputStream, null, options);
            Utils.closeSilently(inputStreamRegenerateInputStream);
            if (options.outWidth != 0 && options.outHeight != 0) {
                return new Point(options.outWidth, options.outHeight);
            }
        }
        return null;
    }

    public void setCropBounds(RectF rectF) {
        this.mCropBounds = rectF;
    }

    public Bitmap getCroppedBitmap() {
        return this.mCroppedBitmap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [int] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v3, types: [int] */
    public boolean cropBitmap(int i) throws Throwable {
        InputStream inputStreamRegenerateInputStream;
        BitmapRegionDecoder bitmapRegionDecoderNewInstance;
        Bitmap bitmapCreateBitmap;
        Bitmap bitmapDecodeStream;
        InputStream inputStreamRegenerateInputStream2;
        InputStream inputStream = null;
        boolean z = false;
        if (this.mSetWallpaper && this.mNoCrop) {
            try {
                InputStream inputStreamRegenerateInputStream3 = regenerateInputStream();
                setWallpaper(inputStreamRegenerateInputStream3, null, i);
                Utils.closeSilently(inputStreamRegenerateInputStream3);
            } catch (IOException e) {
                Log.w("BitmapCropTask", "cannot write stream to wallpaper", e);
                z = true;
            }
            return !z;
        }
        if (this.mSetWallpaper && Utilities.ATLEAST_N && this.mRotation == 0 && this.mOutWidth > 0 && this.mOutHeight > 0) {
            Rect rect = new Rect();
            this.mCropBounds.roundOut(rect);
            try {
                try {
                    inputStreamRegenerateInputStream2 = regenerateInputStream();
                    try {
                        if (inputStreamRegenerateInputStream2 == null) {
                            Log.w("BitmapCropTask", "cannot get input stream for uri=" + this.mInUri.toString());
                            Utils.closeSilently(inputStreamRegenerateInputStream2);
                            return false;
                        }
                        WallpaperManager.getInstance(this.mContext.getApplicationContext()).suggestDesiredDimensions(this.mOutWidth, this.mOutHeight);
                        setWallpaper(inputStreamRegenerateInputStream2, rect, i);
                        if (this.mOnBitmapCroppedHandler != null) {
                            this.mOnBitmapCroppedHandler.onBitmapCropped(null, rect);
                        }
                        Utils.closeSilently(inputStreamRegenerateInputStream2);
                    } catch (IOException e2) {
                        e = e2;
                        inputStream = inputStreamRegenerateInputStream2;
                        Log.w("BitmapCropTask", "cannot open region decoder for file: " + this.mInUri.toString(), e);
                        Utils.closeSilently(inputStream);
                    } catch (Throwable th) {
                        th = th;
                        Utils.closeSilently(inputStreamRegenerateInputStream2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStreamRegenerateInputStream2 = inputStream;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } else {
            Rect rect2 = new Rect();
            Matrix matrix = new Matrix();
            Matrix matrix2 = new Matrix();
            Point imageBounds = getImageBounds();
            int i2 = this.mRotation;
            if (i2 > 0) {
                matrix.setRotate(i2);
                matrix2.setRotate(-this.mRotation);
                this.mCropBounds.roundOut(rect2);
                this.mCropBounds = new RectF(rect2);
                if (imageBounds == null) {
                    Log.w("BitmapCropTask", "cannot get bounds for image");
                    return false;
                }
                float[] fArr = {imageBounds.x, imageBounds.y};
                matrix.mapPoints(fArr);
                fArr[0] = Math.abs(fArr[0]);
                fArr[1] = Math.abs(fArr[1]);
                this.mCropBounds.offset((-fArr[0]) / 2.0f, (-fArr[1]) / 2.0f);
                matrix2.mapRect(this.mCropBounds);
                this.mCropBounds.offset(imageBounds.x / 2, imageBounds.y / 2);
            }
            this.mCropBounds.roundOut(rect2);
            if (rect2.width() <= 0 || rect2.height() <= 0) {
                Log.w("BitmapCropTask", "crop has bad values for full size image");
                return false;
            }
            int iWidth = rect2.width() / this.mOutWidth;
            int iHeight = rect2.height();
            ?? r12 = this.mOutHeight;
            int iMax = Math.max(1, Math.min(iWidth, (int) (iHeight / r12)));
            try {
                try {
                    inputStreamRegenerateInputStream = regenerateInputStream();
                    try {
                        if (inputStreamRegenerateInputStream == null) {
                            Log.w("BitmapCropTask", "cannot get input stream for uri=" + this.mInUri.toString());
                            Utils.closeSilently(inputStreamRegenerateInputStream);
                            return false;
                        }
                        bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(inputStreamRegenerateInputStream, false);
                        try {
                            Utils.closeSilently(inputStreamRegenerateInputStream);
                        } catch (IOException e4) {
                            e = e4;
                            Log.w("BitmapCropTask", "cannot open region decoder for file: " + this.mInUri.toString(), e);
                        }
                        Utils.closeSilently(inputStreamRegenerateInputStream);
                        if (bitmapRegionDecoderNewInstance != null) {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            if (iMax > 1) {
                                options.inSampleSize = iMax;
                            }
                            bitmapCreateBitmap = bitmapRegionDecoderNewInstance.decodeRegion(rect2, options);
                            bitmapRegionDecoderNewInstance.recycle();
                        } else {
                            bitmapCreateBitmap = null;
                        }
                        if (bitmapCreateBitmap == null) {
                            InputStream inputStreamRegenerateInputStream4 = regenerateInputStream();
                            if (inputStreamRegenerateInputStream4 != null) {
                                BitmapFactory.Options options2 = new BitmapFactory.Options();
                                if (iMax > 1) {
                                    options2.inSampleSize = iMax;
                                }
                                bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamRegenerateInputStream4, null, options2);
                                Utils.closeSilently(inputStreamRegenerateInputStream4);
                            } else {
                                bitmapDecodeStream = null;
                            }
                            if (bitmapDecodeStream != null) {
                                int width = imageBounds.x / bitmapDecodeStream.getWidth();
                                float f = width;
                                this.mCropBounds.left /= f;
                                this.mCropBounds.top /= f;
                                this.mCropBounds.bottom /= f;
                                this.mCropBounds.right /= f;
                                this.mCropBounds.roundOut(rect2);
                                if (rect2.width() > bitmapDecodeStream.getWidth()) {
                                    rect2.right = rect2.left + bitmapDecodeStream.getWidth();
                                }
                                if (rect2.right > bitmapDecodeStream.getWidth()) {
                                    rect2.offset(-(rect2.right - bitmapDecodeStream.getWidth()), 0);
                                }
                                if (rect2.height() > bitmapDecodeStream.getHeight()) {
                                    rect2.bottom = rect2.top + bitmapDecodeStream.getHeight();
                                }
                                if (rect2.bottom > bitmapDecodeStream.getHeight()) {
                                    rect2.offset(0, -(rect2.bottom - bitmapDecodeStream.getHeight()));
                                }
                                bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeStream, rect2.left, rect2.top, rect2.width(), rect2.height());
                            }
                        }
                        if (bitmapCreateBitmap == null) {
                            Log.w("BitmapCropTask", "cannot decode file: " + this.mInUri.toString());
                            return false;
                        }
                        if ((this.mOutWidth > 0 && this.mOutHeight > 0) || this.mRotation > 0) {
                            float[] fArr2 = {bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight()};
                            matrix.mapPoints(fArr2);
                            fArr2[0] = Math.abs(fArr2[0]);
                            fArr2[1] = Math.abs(fArr2[1]);
                            if (this.mOutWidth <= 0 || this.mOutHeight <= 0) {
                                this.mOutWidth = Math.round(fArr2[0]);
                                this.mOutHeight = Math.round(fArr2[1]);
                            }
                            RectF rectF = new RectF(0.0f, 0.0f, fArr2[0], fArr2[1]);
                            RectF rectF2 = new RectF(0.0f, 0.0f, this.mOutWidth, this.mOutHeight);
                            Matrix matrix3 = new Matrix();
                            if (this.mRotation == 0) {
                                matrix3.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                            } else {
                                Matrix matrix4 = new Matrix();
                                matrix4.setTranslate((-bitmapCreateBitmap.getWidth()) / 2.0f, (-bitmapCreateBitmap.getHeight()) / 2.0f);
                                Matrix matrix5 = new Matrix();
                                matrix5.setRotate(this.mRotation);
                                Matrix matrix6 = new Matrix();
                                matrix6.setTranslate(fArr2[0] / 2.0f, fArr2[1] / 2.0f);
                                Matrix matrix7 = new Matrix();
                                matrix7.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                                Matrix matrix8 = new Matrix();
                                matrix8.setConcat(matrix5, matrix4);
                                Matrix matrix9 = new Matrix();
                                matrix9.setConcat(matrix7, matrix6);
                                matrix3.setConcat(matrix9, matrix8);
                            }
                            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap((int) rectF2.width(), (int) rectF2.height(), Bitmap.Config.ARGB_8888);
                            if (bitmapCreateBitmap2 != null) {
                                Canvas canvas = new Canvas(bitmapCreateBitmap2);
                                Paint paint = new Paint();
                                paint.setFilterBitmap(true);
                                canvas.drawBitmap(bitmapCreateBitmap, matrix3, paint);
                                bitmapCreateBitmap = bitmapCreateBitmap2;
                            }
                        }
                        if (this.mSaveCroppedBitmap) {
                            this.mCroppedBitmap = bitmapCreateBitmap;
                        }
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(2048);
                        if (bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 90, byteArrayOutputStream)) {
                            if (this.mSetWallpaper) {
                                try {
                                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                                    setWallpaper(new ByteArrayInputStream(byteArray), null, i);
                                    if (this.mOnBitmapCroppedHandler != null) {
                                        this.mOnBitmapCroppedHandler.onBitmapCropped(byteArray, new Rect(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight()));
                                    }
                                } catch (IOException e5) {
                                    Log.w("BitmapCropTask", "cannot write stream to wallpaper", e5);
                                    z = true;
                                }
                            }
                        } else {
                            Log.w("BitmapCropTask", "cannot compress bitmap");
                            z = true;
                        }
                    } catch (IOException e6) {
                        e = e6;
                        bitmapRegionDecoderNewInstance = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    Utils.closeSilently(r12);
                    throw th;
                }
            } catch (IOException e7) {
                e = e7;
                inputStreamRegenerateInputStream = null;
                bitmapRegionDecoderNewInstance = null;
            } catch (Throwable th4) {
                th = th4;
                r12 = 0;
                Utils.closeSilently(r12);
                throw th;
            }
        }
        return !z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Boolean doInBackground(Integer... numArr) {
        return Boolean.valueOf(cropBitmap(numArr.length == 0 ? 1 : numArr[0].intValue()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Boolean bool) {
        if (!bool.booleanValue()) {
            Toast.makeText(this.mContext, R.string.wallpaper_set_fail, 0).show();
        }
        OnEndCropHandler onEndCropHandler = this.mOnEndCropHandler;
        if (onEndCropHandler != null) {
            onEndCropHandler.run(bool.booleanValue());
        }
    }

    private void setWallpaper(InputStream inputStream, Rect rect, int i) throws IOException {
        if (!Utilities.ATLEAST_N) {
            WallpaperManager.getInstance(this.mContext.getApplicationContext()).setStream(inputStream);
        } else {
            NycWallpaperUtils.setStream(this.mContext, inputStream, rect, true, i);
        }
    }
}
