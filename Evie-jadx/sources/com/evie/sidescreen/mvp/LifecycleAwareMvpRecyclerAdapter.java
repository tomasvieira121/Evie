package com.evie.sidescreen.mvp;

import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleAwareMvpRecyclerAdapter extends MvpRecyclerAdapter {
    private final ActivationModel mActivationModel;
    private final LifecycleCallbacks mLifecycleCallbacks;

    public LifecycleAwareMvpRecyclerAdapter(ActivationModel activationModel, LifecycleCallbacks lifecycleCallbacks) {
        this.mActivationModel = activationModel;
        this.mLifecycleCallbacks = lifecycleCallbacks;
    }

    @Override // com.evie.sidescreen.mvp.MvpRecyclerAdapter
    protected MvpRecyclerAdapter.PresenterVisibilityManager createVisibilityManager() {
        return new LifecycleAwarePresenterVisibilityManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    class LifecycleAwarePresenterVisibilityManager extends MvpRecyclerAdapter.PresenterVisibilityManager {
        private LifecycleAwarePresenterVisibilityManager() {
            super();
        }

        @Override // com.evie.sidescreen.mvp.MvpRecyclerAdapter.PresenterVisibilityManager
        public void listen() {
            LifecycleAwareMvpRecyclerAdapter.this.mDisposables.add(LifecycleAwareMvpRecyclerAdapter.this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.mvp.-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$bDREH0VSAyncIBbMlCkCTjHFQ8g
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return LifecycleAwareMvpRecyclerAdapter.LifecycleAwarePresenterVisibilityManager.lambda$listen$0(this.f$0, obj);
                }
            }).subscribeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.mvp.-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$ipTfCPiYAwLNZ8xAudiKMe67loA
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    this.f$0.setShowing(true);
                }
            }));
            LifecycleAwareMvpRecyclerAdapter.this.mDisposables.add(LifecycleAwareMvpRecyclerAdapter.this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.mvp.-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$utMWqihP3zy1SDXg1tgyM5hrwOY
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return LifecycleAwareMvpRecyclerAdapter.this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.HIDE);
                }
            }).subscribeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.mvp.-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$JwpLfV-oc0nBEoG5tkdjTaK3cjc
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    this.f$0.setShowing(false);
                }
            }));
            LifecycleAwareMvpRecyclerAdapter.this.mDisposables.add(LifecycleAwareMvpRecyclerAdapter.this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.mvp.-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$RW4qslqiju37uGj-mYw4r1xwJzo
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return LifecycleAwareMvpRecyclerAdapter.this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.RESUME);
                }
            }).subscribeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.mvp.-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$77mZoP2ADnb5vxzQ8qAqWpdMTfk
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    this.f$0.setResumed(true);
                }
            }));
            LifecycleAwareMvpRecyclerAdapter.this.mDisposables.add(LifecycleAwareMvpRecyclerAdapter.this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.mvp.-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$ucKXumP0N0GnqX28qqHjl_R__hI
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return LifecycleAwareMvpRecyclerAdapter.this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.PAUSE);
                }
            }).subscribeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.mvp.-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$dNAnfQegi4CKgm_D-g8hjRUtOa8
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    this.f$0.setResumed(false);
                }
            }));
        }

        public static /* synthetic */ ObservableSource lambda$listen$0(LifecycleAwarePresenterVisibilityManager lifecycleAwarePresenterVisibilityManager, Object obj) throws Exception {
            Observable<LifecycleEvent> observableForEvent = LifecycleAwareMvpRecyclerAdapter.this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.SHOW);
            return LifecycleAwareMvpRecyclerAdapter.this.mLifecycleCallbacks.isShowing() ? observableForEvent.startWith(LifecycleEvent.SHOW) : observableForEvent;
        }
    }
}
