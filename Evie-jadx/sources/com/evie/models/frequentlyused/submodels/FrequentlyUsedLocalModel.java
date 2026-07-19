package com.evie.models.frequentlyused.submodels;

import androidx.core.util.Pair;
import com.crashlytics.android.Crashlytics;
import com.evie.models.frequentlyused.data.FrequentlyUsedApp;
import com.evie.models.frequentlyused.room.AppLaunchDAO;
import com.evie.models.frequentlyused.room.AppLaunchEntry;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class FrequentlyUsedLocalModel implements Disposable {
    private final AppLaunchDAO mAppLaunchDAO;
    private int mTotalAppLaunches;
    private final BehaviorSubject<List<FrequentlyUsedApp>> mSubject = BehaviorSubject.createDefault(Collections.emptyList());
    final Map<AppLaunchEntry, Float> mProbExpanding = new HashMap();
    final Map<AppLaunchEntry, Float> mProbEWA = new HashMap();
    private CompositeDisposable mDisposables = new CompositeDisposable();

    public FrequentlyUsedLocalModel(AppLaunchDAO appLaunchDAO) {
        this.mAppLaunchDAO = appLaunchDAO;
        this.mDisposables.add(this.mAppLaunchDAO.getMostRecentEntry().subscribeOn(Schedulers.m548io()).map(new Function() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$FrequentlyUsedLocalModel$wpiGjjya7trryMk_Cogov8HTZhs
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(this.f$0.mAppLaunchDAO.deleteAllOlderThanLimit(((AppLaunchEntry) obj).getId() - 2000));
            }
        }).doOnComplete(new Action() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$gr3_IfxV4lqmZ89hGSHnxlOOOpQ
            @Override // io.reactivex.functions.Action
            public final void run() {
                this.f$0.calculateProbabilitiesFromDB();
            }
        }).subscribe(new Consumer() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$FrequentlyUsedLocalModel$5HFU3TobpXAlSEuP3BovSG1VtfA
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                FrequentlyUsedLocalModel.lambda$new$1(this.f$0, (Integer) obj);
            }
        }, new Consumer() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$Z1InX9Lkd7h7bLA70Rf4Q7XpFgE
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Crashlytics.logException((Throwable) obj);
            }
        }, new Action() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$gr3_IfxV4lqmZ89hGSHnxlOOOpQ
            @Override // io.reactivex.functions.Action
            public final void run() {
                this.f$0.calculateProbabilitiesFromDB();
            }
        }));
    }

    public static /* synthetic */ void lambda$new$1(FrequentlyUsedLocalModel frequentlyUsedLocalModel, Integer num) throws Exception {
        Timber.m556i("pruned " + num + " rows", new Object[0]);
        frequentlyUsedLocalModel.calculateProbabilitiesFromDB();
    }

    public Observable<List<FrequentlyUsedApp>> observeFrequentlyUsedApps() {
        return this.mSubject;
    }

    public void addAppLaunchEntry(final AppLaunchEntry appLaunchEntry) {
        this.mDisposables.add(Completable.fromAction(new Action() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$FrequentlyUsedLocalModel$5anxZoWE18A6QtbjhOf0L66_NY0
            @Override // io.reactivex.functions.Action
            public final void run() {
                this.f$0.mAppLaunchDAO.insertAppLaunchEntry(appLaunchEntry);
            }
        }).subscribeOn(Schedulers.m548io()).subscribe());
        updateExpanding(appLaunchEntry);
        updateEWA(appLaunchEntry);
        calculateRankings();
    }

    public void calculateProbabilitiesFromDB() {
        List<AppLaunchEntry> allEntries = this.mAppLaunchDAO.getAllEntries();
        this.mProbExpanding.clear();
        this.mProbEWA.clear();
        this.mTotalAppLaunches = 0;
        for (AppLaunchEntry appLaunchEntry : allEntries) {
            updateExpanding(appLaunchEntry);
            updateEWA(appLaunchEntry);
        }
        calculateRankings();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void calculateRankings() {
        ArrayList arrayList = new ArrayList(this.mProbExpanding.size());
        for (AppLaunchEntry appLaunchEntry : this.mProbExpanding.keySet()) {
            arrayList.add(new Pair(appLaunchEntry, Float.valueOf((this.mProbExpanding.get(appLaunchEntry).floatValue() * 0.5f) + (this.mProbEWA.get(appLaunchEntry).floatValue() * 0.5f))));
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.evie.models.frequentlyused.submodels.-$$Lambda$FrequentlyUsedLocalModel$XestJD1GdaeZ6bfilAZ_DVZCDVQ
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((Float) ((Pair) obj2).second).compareTo((Float) ((Pair) obj).second);
            }
        });
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < 20 && i < arrayList.size(); i++) {
            AppLaunchEntry appLaunchEntry2 = (AppLaunchEntry) ((Pair) arrayList.get(i)).first;
            arrayList2.add(new FrequentlyUsedApp(appLaunchEntry2.getPackageName(), appLaunchEntry2.getClassName()));
        }
        this.mSubject.onNext(arrayList2);
    }

    private void updateExpanding(AppLaunchEntry appLaunchEntry) {
        this.mTotalAppLaunches++;
        for (Map.Entry<AppLaunchEntry, Float> entry : this.mProbExpanding.entrySet()) {
            float fFloatValue = entry.getValue().floatValue();
            int i = this.mTotalAppLaunches;
            entry.setValue(Float.valueOf(fFloatValue * ((i - 1.0f) / i)));
        }
        this.mProbExpanding.put(appLaunchEntry, Float.valueOf((this.mProbExpanding.containsKey(appLaunchEntry) ? this.mProbExpanding.get(appLaunchEntry).floatValue() : 0.0f) + (1.0f / this.mTotalAppLaunches)));
    }

    private void updateEWA(AppLaunchEntry appLaunchEntry) {
        if (this.mProbEWA.size() == 0) {
            this.mProbEWA.put(appLaunchEntry, Float.valueOf(1.0f));
            return;
        }
        for (Map.Entry<AppLaunchEntry, Float> entry : this.mProbEWA.entrySet()) {
            entry.setValue(Float.valueOf(entry.getValue().floatValue() * 0.9354839f));
        }
        this.mProbEWA.put(appLaunchEntry, Float.valueOf((this.mProbEWA.containsKey(appLaunchEntry) ? this.mProbEWA.get(appLaunchEntry).floatValue() : 0.0f) + 0.06451613f));
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.mDisposables.dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.mDisposables.isDisposed();
    }

    public int getTotalAppLaunches() {
        return this.mTotalAppLaunches;
    }
}
