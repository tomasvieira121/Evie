package com.evie.sidescreen.exoplayer;

import androidx.collection.SparseArrayCompat;
import io.reactivex.Observable;
import io.reactivex.subjects.BehaviorSubject;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class VideoFocusHandler {
    private Object mSpecialRequester;
    private final Map<Object, BehaviorSubject<Boolean>> mSubjects = new HashMap();
    private final SparseArrayCompat<Object> mRequesters = new SparseArrayCompat<>();

    public Observable<Boolean> register(Object obj) {
        BehaviorSubject<Boolean> behaviorSubject;
        if (this.mSubjects.containsKey(obj)) {
            behaviorSubject = this.mSubjects.get(obj);
        } else {
            BehaviorSubject<Boolean> behaviorSubjectCreate = BehaviorSubject.create();
            this.mSubjects.put(obj, behaviorSubjectCreate);
            behaviorSubject = behaviorSubjectCreate;
        }
        return behaviorSubject.distinctUntilChanged();
    }

    public void unregister(Object obj) {
        this.mSubjects.remove(obj);
    }

    public void requestFocus(int i, Object obj) {
        this.mRequesters.put(i, obj);
        if (!this.mSubjects.containsKey(obj)) {
            register(obj);
        }
        handlePriorities();
    }

    public void unrequestFocus(int i, Object obj) {
        BehaviorSubject<Boolean> behaviorSubject = this.mSubjects.get(obj);
        if (behaviorSubject != null) {
            behaviorSubject.onNext(false);
        }
        Object obj2 = this.mRequesters.get(i);
        if (obj2 != null && obj2 != obj) {
            throw new IllegalStateException("unrequesting focus for a priority it doesn't own!");
        }
        this.mRequesters.remove(i);
        handlePriorities();
    }

    public void takeSpecialFocus(Object obj) {
        BehaviorSubject<Boolean> behaviorSubject;
        Object obj2 = this.mSpecialRequester;
        if (obj == obj2) {
            return;
        }
        if (obj2 != null && (behaviorSubject = this.mSubjects.get(obj2)) != null) {
            behaviorSubject.onNext(false);
        }
        this.mSpecialRequester = obj;
        if (!this.mSubjects.containsKey(obj)) {
            register(obj);
        }
        handlePriorities();
    }

    public void loseSpecialFocus(Object obj) {
        Object obj2 = this.mSpecialRequester;
        if (obj2 != obj) {
            Timber.m556i("attempting to lose special focus it doesn't own!", new Object[0]);
            return;
        }
        BehaviorSubject<Boolean> behaviorSubject = this.mSubjects.get(obj2);
        if (behaviorSubject != null) {
            behaviorSubject.onNext(false);
        }
        this.mSpecialRequester = null;
        handlePriorities();
    }

    private void handlePriorities() {
        BehaviorSubject<Boolean> behaviorSubject;
        if (this.mRequesters.size() == 0 && this.mSpecialRequester == null) {
            Iterator<BehaviorSubject<Boolean>> it = this.mSubjects.values().iterator();
            while (it.hasNext()) {
                it.next().onNext(false);
            }
            return;
        }
        Object obj = this.mSpecialRequester;
        if (obj != null) {
            behaviorSubject = this.mSubjects.get(obj);
        } else {
            behaviorSubject = this.mSubjects.get(this.mRequesters.valueAt(0));
        }
        if (behaviorSubject != null) {
            behaviorSubject.onNext(true);
        }
        for (int i = 0; i < this.mRequesters.size(); i++) {
            BehaviorSubject<Boolean> behaviorSubject2 = this.mSubjects.get(this.mRequesters.valueAt(i));
            if (behaviorSubject2 != behaviorSubject) {
                behaviorSubject2.onNext(false);
            }
        }
    }
}
