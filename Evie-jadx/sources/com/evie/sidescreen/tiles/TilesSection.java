package com.evie.sidescreen.tiles;

import android.content.Context;
import android.os.SystemClock;
import com.evie.common.data.Lce;
import com.evie.models.sidescreen.SideScreenContentModelInterface;
import com.evie.models.sidescreen.data.SideScreenContent;
import com.evie.models.sidescreen.data.SideScreenContentLayout;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ConnectivityModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.Replacer;
import com.evie.sidescreen.mvp.Unreliable;
import com.evie.sidescreen.tiles.error.TilesErrorPresenter;
import com.evie.sidescreen.tiles.footer.TilesFooterPresenter;
import com.evie.sidescreen.tiles.header.TileHeaderPresenter;
import com.evie.sidescreen.tiles.loading.TilesLoadingPresenter;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.inject.Provider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class TilesSection implements Disposable {
    private final ActivationModel mActivationModel;
    private final ConnectivityModel mConnectivityModel;
    private final SideScreenContentModelInterface mContentModelInterface;
    private final Context mContext;
    private final ItemPresenter mHeaderPresenter;
    private long mIdleRefreshTimeLimit;
    private final Observable<Long> mIdleRefreshTimeLimitObservable;
    private final LifecycleCallbacks mLifecycleCallbacks;
    private final ScreenInfo mScreenInfo;
    private final TilesErrorPresenter mTilesErrorPresenter;
    private final Provider<TilesLoadingPresenter> mTilesLoadingPresenterProvider;
    private final TopLevelTilePresenterFactory mTopLevelTilePresenterFactory;
    private final List<ItemPresenter> mUnactivatedOverridePresenters;
    private final ItemPresenter mFooterPresenter = new TilesFooterPresenter();
    private boolean mShouldRefresh = true;
    private long mLeaveTime = Long.MIN_VALUE;
    private boolean mDisposed = false;
    private CompositeDisposable mDisposables = new CompositeDisposable();
    private BehaviorSubject<List<ItemPresenter>> mSubject = BehaviorSubject.create();
    private PublishSubject<Boolean> mIntervalRefreshSubject = PublishSubject.create();
    private Replacer mCurrentReplacer = null;

    public TilesSection(@Provided Context context, @Provided ActivationModel activationModel, @Provided LifecycleCallbacks lifecycleCallbacks, @Provided ConnectivityModel connectivityModel, SideScreenContentModelInterface sideScreenContentModelInterface, @Provided TopLevelTilePresenterFactory topLevelTilePresenterFactory, @Provided Provider<TilesLoadingPresenter> provider, @Provided Observable<Long> observable, @Provided List<ItemPresenter> list, @Provided CompositeDisposable compositeDisposable, TilesErrorPresenter tilesErrorPresenter, ScreenInfo screenInfo, ItemPresenter itemPresenter) {
        this.mContext = context;
        this.mActivationModel = activationModel;
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mConnectivityModel = connectivityModel;
        this.mTopLevelTilePresenterFactory = topLevelTilePresenterFactory;
        this.mTilesErrorPresenter = tilesErrorPresenter;
        this.mTilesLoadingPresenterProvider = provider;
        this.mIdleRefreshTimeLimitObservable = observable;
        this.mUnactivatedOverridePresenters = list;
        this.mContentModelInterface = sideScreenContentModelInterface;
        this.mScreenInfo = screenInfo;
        this.mHeaderPresenter = itemPresenter;
        compositeDisposable.add(this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.HIDE).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$lnCvBz7qEjBr0TXKXKFYbeME6eo
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.markRefreshTimerStartIfNeeded();
            }
        }));
        compositeDisposable.add(this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.SHOW).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$KUhjovzRN8cZwiW55hLHfBJPDsc
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.markRefreshTimerEnd();
            }
        }));
        compositeDisposable.add(this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.PAUSE).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$tEIvu-zh_X-TqAv-oF6PM0efYls
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TilesSection.lambda$new$2(this.f$0, (LifecycleEvent) obj);
            }
        }));
        compositeDisposable.add(this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.RESUME).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$I9USc0fJTwpHjL4y7uVz6O5ZNBo
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TilesSection.lambda$new$3(this.f$0, (LifecycleEvent) obj);
            }
        }));
        compositeDisposable.add(this);
        final Observable<U> observableCast = this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.SHOW).cast(Object.class);
        final Observable<U> observableCast2 = this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.RESUME).cast(Object.class);
        final Observable<U> observableCast3 = this.mConnectivityModel.getObservable().cast(Object.class);
        this.mDisposables.add(this.mIdleRefreshTimeLimitObservable.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$mkeQ3KqH6VAey9zD2U_dBgr1zAY
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mIdleRefreshTimeLimit = ((Long) obj).longValue();
            }
        }));
        this.mDisposables.add(this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$RgKcbShH6JIUtClIniCQjqilIyc
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.merge(observableCast, observableCast2, observableCast3).startWith(new Object()).filter(new Predicate() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$WPlpX6qFjmxxqMUbCM2F21fj7pU
                    @Override // io.reactivex.functions.Predicate
                    public final boolean test(Object obj2) {
                        return TilesSection.lambda$null$5(tilesSection, obj2);
                    }
                });
            }
        }).subscribe((Consumer<? super R>) new Consumer() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$ZOPgn1AtwQIustjw8p4DiLQ4aOU
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TilesSection.lambda$new$7(this.f$0, obj);
            }
        }));
        this.mDisposables.add(this.mContentModelInterface.getObservable().map(new Function() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$7tyHHpb_lTP8xUqCCsy8H2xJEu4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                TilesSection tilesSection = this.f$0;
                return tilesSection.getContentTilesForLce(tilesSection.mContext, (Lce) obj, tilesSection.mSubject);
            }
        }).filter(new Predicate() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$WjGw9PXwziFz_iCNgrwQPkxlUlc
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return TilesSection.lambda$new$9((List) obj);
            }
        }).map(new Function() { // from class: com.evie.sidescreen.tiles.-$$Lambda$0L_Ej33NorW7bo-o7YzdgBq-uvs
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.assembleSectionWithContent((List) obj);
            }
        }).startWith(getStarterPresenters()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.-$$Lambda$TilesSection$s1cud0FcbrpT94Y7v7uz6opzUls
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TilesSection.lambda$new$10(this.f$0, (List) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$new$2(TilesSection tilesSection, LifecycleEvent lifecycleEvent) throws Exception {
        if (tilesSection.mLifecycleCallbacks.isShowing()) {
            tilesSection.markRefreshTimerStartIfNeeded();
        }
    }

    public static /* synthetic */ void lambda$new$3(TilesSection tilesSection, LifecycleEvent lifecycleEvent) throws Exception {
        if (tilesSection.mLifecycleCallbacks.isShowing()) {
            tilesSection.markRefreshTimerEnd();
        }
    }

    public static /* synthetic */ boolean lambda$null$5(TilesSection tilesSection, Object obj) throws Exception {
        return tilesSection.shouldRefresh() && tilesSection.mLifecycleCallbacks.isShowing() && tilesSection.mLifecycleCallbacks.isResumed() && tilesSection.mConnectivityModel.isConnected();
    }

    public static /* synthetic */ void lambda$new$7(TilesSection tilesSection, Object obj) throws Exception {
        tilesSection.mIntervalRefreshSubject.onNext(Boolean.valueOf(tilesSection.mShouldRefresh));
        tilesSection.mShouldRefresh = false;
        tilesSection.mDisposables.add(tilesSection.mContentModelInterface.refreshContent("timeout"));
    }

    static /* synthetic */ boolean lambda$new$9(List list) throws Exception {
        return !list.isEmpty();
    }

    public static /* synthetic */ void lambda$new$10(TilesSection tilesSection, List list) throws Exception {
        List<ItemPresenter> value = tilesSection.mSubject.getValue();
        if (value != null) {
            for (ItemPresenter itemPresenter : value) {
                if (!(itemPresenter instanceof TileHeaderPresenter)) {
                    itemPresenter.dispose();
                }
            }
        }
        tilesSection.mSubject.onNext(list);
    }

    private List<ItemPresenter> getStarterPresenters() {
        List<ItemPresenter> list = this.mUnactivatedOverridePresenters;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mHeaderPresenter);
        arrayList.add(this.mTilesLoadingPresenterProvider.get());
        arrayList.add(new TilesFooterPresenter());
        return arrayList;
    }

    public Observable<List<ItemPresenter>> getPresenters() {
        return this.mSubject;
    }

    public Observable<Boolean> isRefreshedAfterInterval() {
        return this.mIntervalRefreshSubject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void markRefreshTimerStartIfNeeded() {
        if (this.mLeaveTime == Long.MIN_VALUE) {
            this.mLeaveTime = SystemClock.elapsedRealtime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void markRefreshTimerEnd() {
        if (this.mLeaveTime != Long.MIN_VALUE && SystemClock.elapsedRealtime() - this.mLeaveTime > this.mIdleRefreshTimeLimit) {
            this.mShouldRefresh = true;
        }
        this.mLeaveTime = Long.MIN_VALUE;
    }

    private boolean shouldRefresh() {
        return this.mShouldRefresh;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ItemPresenter> getContentTilesForLce(Context context, Lce<SideScreenContent> lce, Observer<List<ItemPresenter>> observer) {
        ArrayList<Object> arrayList = new ArrayList();
        if (lce.isError()) {
            Timber.m555e(lce.getErrorData(), "TilesSection encountered an error:", new Object[0]);
            arrayList.add(this.mTilesErrorPresenter);
        } else if (lce.isLoading()) {
            String loadingSource = lce.getLoadingSource();
            if ("timeout".equals(loadingSource) || "error".equals(loadingSource)) {
                arrayList.add(this.mTilesLoadingPresenterProvider.get());
            } else {
                return Collections.emptyList();
            }
        } else {
            SideScreenContent data = lce.getData();
            if (data == null) {
                return Collections.emptyList();
            }
            SideScreenContentLayout layout = data.getLayout();
            if (layout == null) {
                return Collections.emptyList();
            }
            arrayList.addAll(this.mTopLevelTilePresenterFactory.processTiles(context, data.getObjects(), layout.getTiles(), 0, null, this.mScreenInfo));
        }
        this.mCurrentReplacer = new TilesSectionReplacer(observer);
        for (Object obj : arrayList) {
            if (obj instanceof Unreliable) {
                ((Unreliable) obj).setReplacer(this.mCurrentReplacer);
            }
        }
        return arrayList;
    }

    protected List<ItemPresenter> assembleSectionWithContent(List<ItemPresenter> list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, this.mHeaderPresenter);
        arrayList.add(this.mFooterPresenter);
        return arrayList;
    }

    private class TilesSectionReplacer implements Replacer {
        Observer<List<ItemPresenter>> mTarget;

        public TilesSectionReplacer(Observer<List<ItemPresenter>> observer) {
            this.mTarget = observer;
        }

        @Override // com.evie.sidescreen.mvp.Replacer
        public void replace(ItemPresenter<?> itemPresenter, List<? extends ItemPresenter<?>> list) {
            ArrayList arrayList;
            int iIndexOf;
            if (TilesSection.this.mCurrentReplacer == this && ((List) TilesSection.this.mSubject.getValue()).contains(itemPresenter) && (iIndexOf = (arrayList = new ArrayList((Collection) TilesSection.this.mSubject.getValue())).indexOf(itemPresenter)) != -1) {
                arrayList.remove(iIndexOf);
                for (int i = 0; i < list.size(); i++) {
                    arrayList.add(iIndexOf + i, list.get(i));
                }
                for (Object obj : list) {
                    if (obj instanceof Unreliable) {
                        ((Unreliable) obj).setReplacer(TilesSection.this.mCurrentReplacer);
                    }
                }
                this.mTarget.onNext(arrayList);
            }
        }
    }

    public ScreenInfo getScreenInfo() {
        return this.mScreenInfo;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.mDisposables.dispose();
        this.mDisposed = true;
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.mDisposed;
    }
}
