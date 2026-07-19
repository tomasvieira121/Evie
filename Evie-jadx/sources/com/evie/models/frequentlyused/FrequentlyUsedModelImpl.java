package com.evie.models.frequentlyused;

import android.content.Context;
import com.evie.models.frequentlyused.data.FrequentlyUsedApp;
import com.evie.models.frequentlyused.room.AppLaunchEntry;
import com.evie.models.frequentlyused.submodels.FrequentlyUsedDefaultsModel;
import com.evie.models.frequentlyused.submodels.FrequentlyUsedLocalModel;
import com.evie.models.frequentlyused.submodels.FrequentlyUsedRemoteModel;
import com.google.gson.Gson;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function3;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.Subject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes.dex */
public class FrequentlyUsedModelImpl implements FrequentlyUsedModel {
    private List<FrequentlyUsedApp> mCachedResults;
    private final FrequentlyUsedDefaultsModel mDefaultsModel;
    private final FrequentlyUsedLocalModel mFrequentlyUsedLocalModel;
    private final FrequentlyUsedRemoteModel mRemotePredictionsModel;
    private final Subject<List<FrequentlyUsedApp>> mSubject = BehaviorSubject.createDefault(Collections.emptyList());
    private CompositeDisposable mDisposables = new CompositeDisposable();

    public FrequentlyUsedModelImpl(Context context, OkHttpClient okHttpClient, String str, Retrofit retrofit, FrequentlyUsedLocalModel frequentlyUsedLocalModel) {
        FrequentlyUsedAPI frequentlyUsedAPI = (FrequentlyUsedAPI) retrofit.newBuilder().client(okHttpClient).addConverterFactory(GsonConverterFactory.create(new Gson())).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build().create(FrequentlyUsedAPI.class);
        this.mDefaultsModel = new FrequentlyUsedDefaultsModel(context);
        this.mRemotePredictionsModel = new FrequentlyUsedRemoteModel(frequentlyUsedAPI, str);
        this.mFrequentlyUsedLocalModel = frequentlyUsedLocalModel;
        this.mCachedResults = new ArrayList();
        CompositeDisposable compositeDisposable = this.mDisposables;
        Observable observableCombineLatest = Observable.combineLatest(this.mRemotePredictionsModel.observeFrequentlyUsedApps(), this.mFrequentlyUsedLocalModel.observeFrequentlyUsedApps(), this.mDefaultsModel.getDefaultFrequentlyUsedApps(), new Function3() { // from class: com.evie.models.frequentlyused.-$$Lambda$FrequentlyUsedModelImpl$ma3SG6_L7-EqGfM3QS5fwKqM1lo
            @Override // io.reactivex.functions.Function3
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return FrequentlyUsedModelImpl.lambda$new$0(this.f$0, (List) obj, (List) obj2, (List) obj3);
            }
        });
        final Subject<List<FrequentlyUsedApp>> subject = this.mSubject;
        subject.getClass();
        compositeDisposable.add(observableCombineLatest.subscribe(new Consumer() { // from class: com.evie.models.frequentlyused.-$$Lambda$PNvbEWVB-1y8Aj6vOgtqg4Sa4oI
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                subject.onNext((List) obj);
            }
        }));
    }

    public static /* synthetic */ List lambda$new$0(FrequentlyUsedModelImpl frequentlyUsedModelImpl, List list, List list2, List list3) throws Exception {
        if (frequentlyUsedModelImpl.mFrequentlyUsedLocalModel.getTotalAppLaunches() >= 50 || list.isEmpty()) {
            list = list2;
        }
        if (list.isEmpty() && !frequentlyUsedModelImpl.mCachedResults.isEmpty()) {
            list = frequentlyUsedModelImpl.mCachedResults;
        }
        ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList(list3);
        ArrayList arrayList3 = new ArrayList(arrayList.size() + arrayList2.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.remove((FrequentlyUsedApp) it.next());
        }
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                it2.remove();
            }
        }
        frequentlyUsedModelImpl.mCachedResults = arrayList3;
        return arrayList3;
    }

    @Override // com.evie.models.frequentlyused.FrequentlyUsedModel
    public Observable<List<FrequentlyUsedApp>> getFrequentlyUsedApps() {
        return this.mSubject;
    }

    @Override // com.evie.models.frequentlyused.FrequentlyUsedModel
    public void refresh() {
        if (this.mFrequentlyUsedLocalModel.getTotalAppLaunches() < 50) {
            this.mDisposables.add(this.mRemotePredictionsModel.refresh());
        }
    }

    @Override // com.evie.models.frequentlyused.FrequentlyUsedModel
    public void addAppLaunchEntry(AppLaunchEntry appLaunchEntry) {
        this.mFrequentlyUsedLocalModel.addAppLaunchEntry(appLaunchEntry);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.mDisposables.dispose();
        this.mSubject.onComplete();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.mDisposables.isDisposed();
    }
}
