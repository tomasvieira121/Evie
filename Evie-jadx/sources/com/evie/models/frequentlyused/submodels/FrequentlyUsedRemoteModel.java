package com.evie.models.frequentlyused.submodels;

import com.evie.models.frequentlyused.FrequentlyUsedAPI;
import com.evie.models.frequentlyused.data.FrequentlyUsedApp;
import com.evie.models.frequentlyused.data.FrequentlyUsedResponse;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.Subject;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FrequentlyUsedRemoteModel {
    private final FrequentlyUsedAPI mAPI;
    private final String mID;
    private final Subject<List<FrequentlyUsedApp>> mSubject = BehaviorSubject.createDefault(Collections.emptyList());

    public FrequentlyUsedRemoteModel(FrequentlyUsedAPI frequentlyUsedAPI, String str) {
        this.mAPI = frequentlyUsedAPI;
        this.mID = str;
    }

    public Observable<List<FrequentlyUsedApp>> observeFrequentlyUsedApps() {
        return this.mSubject;
    }

    public Disposable refresh() {
        Observable<R> map = this.mAPI.predict(this.mID).onErrorReturn(new Function() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$FrequentlyUsedRemoteModel$esu7BvnFmHNyabHjWidYkgF52-M
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return FrequentlyUsedRemoteModel.lambda$refresh$0((Throwable) obj);
            }
        }).map(new Function() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$FKFVlGUhZ3z3yggCiKgyO-dtC94
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return ((FrequentlyUsedResponse) obj).getPredictions();
            }
        });
        final Subject<List<FrequentlyUsedApp>> subject = this.mSubject;
        subject.getClass();
        return map.subscribe((Consumer<? super R>) new Consumer() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$PNvbEWVB-1y8Aj6vOgtqg4Sa4oI
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                subject.onNext((List) obj);
            }
        });
    }

    static /* synthetic */ FrequentlyUsedResponse lambda$refresh$0(Throwable th) throws Exception {
        return new FrequentlyUsedResponse();
    }
}
