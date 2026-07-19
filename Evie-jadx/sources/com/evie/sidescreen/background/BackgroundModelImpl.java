package com.evie.sidescreen.background;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import com.evie.common.data.Lce;
import com.evie.models.wallpaper.WallpaperData;
import com.evie.models.wallpaper.WallpaperModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.R;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import java.io.ByteArrayOutputStream;
import java.util.Calendar;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class BackgroundModelImpl extends BackgroundModel {
    static String IMAGE_KEY = "image";
    static String LAST_FETCH_DAY_KEY = "last_fetch_day";
    private final ActivationModel mActivationModel;
    private BehaviorSubject<Bitmap> mBehaviorSubject;
    private final Context mContext;
    private final LifecycleCallbacks mLifecycleCallbacks;
    private final OkHttpClient mOkHttpClient;
    private SharedPreferences mSharedPreferences;
    private final BackgroundModel.ImageDensity mTargetDensity;
    private final WallpaperModel mWallpaperModel;

    public BackgroundModelImpl(Context context, SharedPreferences sharedPreferences, int i, LifecycleCallbacks lifecycleCallbacks, ActivationModel activationModel, WallpaperModel wallpaperModel, OkHttpClient okHttpClient) {
        this.mContext = context;
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mActivationModel = activationModel;
        this.mWallpaperModel = wallpaperModel;
        this.mOkHttpClient = okHttpClient;
        this.mSharedPreferences = sharedPreferences;
        this.mTargetDensity = BackgroundModel.ImageDensity.findClosestImageDensity(i);
    }

    @Override // com.evie.sidescreen.background.BackgroundModel
    public Observable<Bitmap> getObservable() {
        if (this.mBehaviorSubject == null) {
            this.mBehaviorSubject = BehaviorSubject.createDefault(getCacheBitmap());
            this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.background.-$$Lambda$BackgroundModelImpl$8gmY6RAA_7gxCW3kIbUAix1VUQM
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f$0.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.RESUME).startWith(LifecycleEvent.RESUME);
                }
            }).filter(new Predicate() { // from class: com.evie.sidescreen.background.-$$Lambda$BackgroundModelImpl$U5Lnydn36-d5FxSj4jhrFVSGKhA
                @Override // io.reactivex.functions.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.shouldFetch();
                }
            }).observeOn(Schedulers.m548io()).flatMap(new Function() { // from class: com.evie.sidescreen.background.-$$Lambda$BackgroundModelImpl$kwo-xbUUXroAiUWrjvLqCUHwmE8
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f$0.mWallpaperModel.getWallpapers();
                }
            }).flatMap(new Function() { // from class: com.evie.sidescreen.background.-$$Lambda$BackgroundModelImpl$punPlWG9T60F6DS1GJWngUuH7tE
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return BackgroundModelImpl.lambda$getObservable$3(this.f$0, (Lce) obj);
                }
            }).observeOn(AndroidSchedulers.mainThread()).subscribe(this.mBehaviorSubject);
        }
        return this.mBehaviorSubject;
    }

    public static /* synthetic */ ObservableSource lambda$getObservable$3(BackgroundModelImpl backgroundModelImpl, Lce lce) throws Exception {
        String mdpi;
        if (lce.isLoading() || lce.isError()) {
            if (lce.isError()) {
                Timber.m554e(lce.getErrorData());
            }
            return Observable.empty();
        }
        WallpaperData wallpaperData = (WallpaperData) lce.getData();
        switch (backgroundModelImpl.mTargetDensity) {
            case MDPI:
                mdpi = wallpaperData.getMdpi();
                break;
            case HDPI:
                mdpi = wallpaperData.getHdpi();
                break;
            case XHDPI:
                mdpi = wallpaperData.getXhdpi();
                break;
            default:
                mdpi = wallpaperData.getXxhdpi();
                break;
        }
        Bitmap bitmapDecodeByteArray = null;
        try {
            byte[] bArrBytes = backgroundModelImpl.mOkHttpClient.newCall(new Request.Builder().url(mdpi).get().build()).execute().body().bytes();
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrBytes, 0, bArrBytes.length);
        } catch (Exception unused) {
        }
        if (bitmapDecodeByteArray != null) {
            backgroundModelImpl.setCacheBitmap(bitmapDecodeByteArray);
            return Observable.just(bitmapDecodeByteArray);
        }
        return Observable.empty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldFetch() {
        return this.mSharedPreferences.getLong(LAST_FETCH_DAY_KEY, 0L) != ((long) Calendar.getInstance().get(6));
    }

    private Bitmap getCacheBitmap() {
        Bitmap bitmapDecodeByteArray = null;
        String string = this.mSharedPreferences.getString(IMAGE_KEY, null);
        try {
            if (!TextUtils.isEmpty(string)) {
                byte[] bArrDecode = Base64.decode(string, 0);
                bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
            }
        } catch (Exception unused) {
        }
        if (bitmapDecodeByteArray != null) {
            return bitmapDecodeByteArray;
        }
        BitmapDrawable bitmapDrawable = (BitmapDrawable) this.mContext.getResources().getDrawable(R.drawable.wp_1);
        setCacheBitmap(bitmapDrawable.getBitmap());
        return bitmapDrawable.getBitmap();
    }

    private void setCacheBitmap(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        this.mSharedPreferences.edit().putLong(LAST_FETCH_DAY_KEY, Calendar.getInstance().get(6)).putString(IMAGE_KEY, Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0)).apply();
    }
}
