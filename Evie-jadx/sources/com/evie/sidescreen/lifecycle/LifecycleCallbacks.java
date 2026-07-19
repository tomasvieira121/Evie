package com.evie.sidescreen.lifecycle;

import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.PublishSubject;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleCallbacks {
    private Map<LifecycleEvent, PublishSubject<LifecycleEvent>> mEventSubjectMap = new HashMap();
    private boolean mIsShowing = false;
    private boolean mIsResumed = true;

    public LifecycleCallbacks() {
        for (LifecycleEvent lifecycleEvent : LifecycleEvent.values()) {
            this.mEventSubjectMap.put(lifecycleEvent, PublishSubject.create());
        }
        getObservableForEvent(LifecycleEvent.SHOW).subscribe(new Consumer() { // from class: com.evie.sidescreen.lifecycle.-$$Lambda$LifecycleCallbacks$_r3CLjfkQva7fepv87piJynEh4o
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mIsShowing = true;
            }
        });
        getObservableForEvent(LifecycleEvent.HIDE).subscribe(new Consumer() { // from class: com.evie.sidescreen.lifecycle.-$$Lambda$LifecycleCallbacks$APkuwKR5DG7HjfrwXpCWka7ysy0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mIsShowing = false;
            }
        });
        getObservableForEvent(LifecycleEvent.RESUME).subscribe(new Consumer() { // from class: com.evie.sidescreen.lifecycle.-$$Lambda$LifecycleCallbacks$zNKPMLTUbFacjNYKIIToF0Brl2A
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mIsResumed = true;
            }
        });
        getObservableForEvent(LifecycleEvent.PAUSE).subscribe(new Consumer() { // from class: com.evie.sidescreen.lifecycle.-$$Lambda$LifecycleCallbacks$Ch0aHGu5sQ1W0bOlov5Fac_Tpxc
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mIsResumed = false;
            }
        });
        getObservableForEvent(LifecycleEvent.DETACH).subscribe(new Consumer() { // from class: com.evie.sidescreen.lifecycle.-$$Lambda$LifecycleCallbacks$zg5DPBRePXBVxf8BIc_WgAS0DMk
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                LifecycleCallbacks.lambda$new$4(this.f$0, (LifecycleEvent) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$new$4(LifecycleCallbacks lifecycleCallbacks, LifecycleEvent lifecycleEvent) throws Exception {
        lifecycleCallbacks.mIsResumed = false;
        lifecycleCallbacks.mIsShowing = false;
    }

    public void onLifecycleEvent(LifecycleEvent lifecycleEvent) {
        this.mEventSubjectMap.get(lifecycleEvent).onNext(lifecycleEvent);
    }

    public Observable<LifecycleEvent> getObservableForEvent(LifecycleEvent lifecycleEvent) {
        return this.mEventSubjectMap.get(lifecycleEvent);
    }

    public boolean isShowing() {
        return this.mIsShowing;
    }

    public boolean isResumed() {
        return this.mIsResumed;
    }
}
