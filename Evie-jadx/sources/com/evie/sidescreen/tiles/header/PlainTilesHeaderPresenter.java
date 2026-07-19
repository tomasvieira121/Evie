package com.evie.sidescreen.tiles.header;

import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.view.View;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.google.auto.factory.AutoFactory;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class PlainTilesHeaderPresenter extends TileHeaderPresenter<PlainTilesHeaderViewHolder> implements TileRowDividerItemDecoration.TileRowDividerContractor {
    private final Observable<Boolean> mEnableDataDebug;
    private Disposable mEnableDataDebugDisposable;
    private final String mHeaderTitle;
    private boolean mDebugDataUsageEnabled = false;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private Runnable mDebugDataUsage = new Runnable() { // from class: com.evie.sidescreen.tiles.header.PlainTilesHeaderPresenter.1
        @Override // java.lang.Runnable
        public void run() {
            if (PlainTilesHeaderPresenter.this.mViewHolder != null) {
                double uidRxBytes = TrafficStats.getUidRxBytes(Process.myUid());
                Double.isNaN(uidRxBytes);
                ((PlainTilesHeaderViewHolder) PlainTilesHeaderPresenter.this.mViewHolder).setTitle(String.format("%.2f", Double.valueOf((uidRxBytes / 1024.0d) / 1024.0d)));
                PlainTilesHeaderPresenter.this.mHandler.postDelayed(PlainTilesHeaderPresenter.this.mDebugDataUsage, 1000L);
            }
        }
    };

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return true;
    }

    public PlainTilesHeaderPresenter(Observable<Boolean> observable, final String str) {
        this.mEnableDataDebug = observable;
        this.mHeaderTitle = str;
        this.mEnableDataDebugDisposable = this.mEnableDataDebug.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.header.-$$Lambda$PlainTilesHeaderPresenter$t21twb_ygB2oE9vfkzmn965baG4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                PlainTilesHeaderPresenter.lambda$new$0(this.f$0, str, (Boolean) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$new$0(PlainTilesHeaderPresenter plainTilesHeaderPresenter, String str, Boolean bool) throws Exception {
        plainTilesHeaderPresenter.mDebugDataUsageEnabled = bool.booleanValue();
        if (bool.booleanValue() || plainTilesHeaderPresenter.mViewHolder == 0) {
            return;
        }
        ((PlainTilesHeaderViewHolder) plainTilesHeaderPresenter.mViewHolder).setTitle(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public PlainTilesHeaderViewHolder createViewHolderInstance(View view) {
        return new PlainTilesHeaderViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(PlainTilesHeaderViewHolder plainTilesHeaderViewHolder) {
        this.mEnableDataDebugDisposable = this.mEnableDataDebug.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.header.-$$Lambda$PlainTilesHeaderPresenter$vUNbjFASiXQTLk-XKMKTeW23970
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                PlainTilesHeaderPresenter.lambda$onBindViewHolder$1(this.f$0, (Boolean) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$onBindViewHolder$1(PlainTilesHeaderPresenter plainTilesHeaderPresenter, Boolean bool) throws Exception {
        plainTilesHeaderPresenter.mDebugDataUsageEnabled = bool.booleanValue();
        if (bool.booleanValue() || plainTilesHeaderPresenter.mViewHolder == 0) {
            return;
        }
        ((PlainTilesHeaderViewHolder) plainTilesHeaderPresenter.mViewHolder).setTitle(plainTilesHeaderPresenter.mHeaderTitle);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected void onUnbindViewHolder() {
        super.onUnbindViewHolder();
        Disposable disposable = this.mEnableDataDebugDisposable;
        if (disposable == null || !disposable.isDisposed()) {
            return;
        }
        this.mEnableDataDebugDisposable.dispose();
        this.mEnableDataDebugDisposable = null;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return PlainTilesHeaderViewHolder.f362ID;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onVisibilityChanged(boolean z) {
        super.onVisibilityChanged(z);
        if (this.mDebugDataUsageEnabled) {
            if (z) {
                this.mDebugDataUsage.run();
            } else {
                this.mHandler.removeCallbacks(this.mDebugDataUsage);
            }
        }
    }
}
