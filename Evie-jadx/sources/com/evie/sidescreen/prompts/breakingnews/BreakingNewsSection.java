package com.evie.sidescreen.prompts.breakingnews;

import com.evie.models.PromptStoreModel;
import com.evie.models.breakingnews.data.BreakingNews;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.mvp.ItemPresenter;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.BehaviorSubject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BreakingNewsSection implements Disposable {
    private ActivationModel mActivationModel;
    private ActivityStarter mActivityStarter;
    private AnalyticsModel mAnalyticsModel;
    private BreakingNewsPresenter mHeader;
    private LifecycleCallbacks mLifecycleCallbacks;
    private PromptStoreModel mPromptStoreModel;
    private int ANNOUNCEMENT_CAPACITY = 1;
    private CompositeDisposable mDisposables = new CompositeDisposable();
    private BehaviorSubject<List<ItemPresenter>> mSubject = BehaviorSubject.create();
    private boolean mDisposed = false;
    private List<BreakingNews> mNews = Collections.emptyList();

    public BreakingNewsSection(ActivationModel activationModel, LifecycleCallbacks lifecycleCallbacks, PromptStoreModel promptStoreModel, AnalyticsModel analyticsModel, ActivityStarter activityStarter) {
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mActivationModel = activationModel;
        this.mPromptStoreModel = promptStoreModel;
        this.mAnalyticsModel = analyticsModel;
        this.mActivityStarter = activityStarter;
        this.mSubject.onNext(createPresenters());
        this.mDisposables.add(this.mActivationModel.getActivationObservable().subscribe(new Consumer() { // from class: com.evie.sidescreen.prompts.breakingnews.-$$Lambda$BreakingNewsSection$LNKAAODU5uVh5JQNL-8csdzMoLg
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                BreakingNewsSection.lambda$new$0(this.f$0, obj);
            }
        }));
        this.mDisposables.add(this.mPromptStoreModel.observePromptStoreChanges().filter(new Predicate() { // from class: com.evie.sidescreen.prompts.breakingnews.-$$Lambda$BreakingNewsSection$hhd1M6SgcbFHX_Z77XOjXmSd98Y
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((String) obj).equals("prompt_breaking_news");
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.prompts.breakingnews.-$$Lambda$BreakingNewsSection$L9XzOBvmr_U_31vib2lKSuRPOGY
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                BreakingNewsSection.lambda$new$2(this.f$0, (String) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$new$0(BreakingNewsSection breakingNewsSection, Object obj) throws Exception {
        breakingNewsSection.mNews = breakingNewsSection.mPromptStoreModel.getBreakingNewsList();
        breakingNewsSection.mSubject.onNext(breakingNewsSection.createPresenters());
    }

    public static /* synthetic */ void lambda$new$2(BreakingNewsSection breakingNewsSection, String str) throws Exception {
        breakingNewsSection.mNews = breakingNewsSection.mPromptStoreModel.getBreakingNewsList();
        breakingNewsSection.mSubject.onNext(breakingNewsSection.createPresenters());
    }

    public Observable<List<ItemPresenter>> getPresenters() {
        return this.mSubject;
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

    private List<ItemPresenter> createPresenters() {
        List<BreakingNews> list = this.mNews;
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.mHeader = new BreakingNewsPresenter(this.mPromptStoreModel, this.mAnalyticsModel);
        arrayList.add(this.mHeader);
        for (int i = 0; i < this.mNews.size(); i++) {
            arrayList.add(new BreakingNewsTilePresenter(this.mAnalyticsModel, this.mPromptStoreModel, this.mActivityStarter, this.mNews.get(i), i));
        }
        arrayList.add(new BreakingNewsFooterPresenter());
        return arrayList;
    }
}
