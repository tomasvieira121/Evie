package com.evie.sidescreen.prompts.announcement;

import com.evie.models.PromptStoreModel;
import com.evie.models.announcement.data.Announcement;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.mvp.ItemPresenter;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.BehaviorSubject;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementSection implements Disposable {
    private static BehaviorSubject<List<ItemPresenter>> mSubject = BehaviorSubject.create();
    private ActivationModel mActivationModel;
    private AnalyticsModel mAnalyticsModel;
    private CompositeDisposable mDisposables = new CompositeDisposable();
    private boolean mDisposed = false;
    private LifecycleCallbacks mLifecycleCallbacks;
    private PromptStoreModel mPromptStoreModel;

    public AnnouncementSection(ActivationModel activationModel, LifecycleCallbacks lifecycleCallbacks, PromptStoreModel promptStoreModel, AnalyticsModel analyticsModel) {
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mActivationModel = activationModel;
        this.mPromptStoreModel = promptStoreModel;
        this.mAnalyticsModel = analyticsModel;
        mSubject.onNext(createPresenters(this.mPromptStoreModel.getNewAnnouncement()));
        this.mDisposables.add(this.mPromptStoreModel.observePromptStoreChanges().filter(new Predicate() { // from class: com.evie.sidescreen.prompts.announcement.-$$Lambda$AnnouncementSection$VoETPYrWU9PYDh6cZsbyKOP3Mc8
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((String) obj).equals("prompt_announcement_new");
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.prompts.announcement.-$$Lambda$AnnouncementSection$CZeRkl2uyeQNw0g7Mtl7DvVK2kw
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AnnouncementSection announcementSection = this.f$0;
                AnnouncementSection.mSubject.onNext(announcementSection.createPresenters(announcementSection.mPromptStoreModel.getNewAnnouncement()));
            }
        }));
        this.mDisposables.add(this.mActivationModel.getActivationObservable().subscribe(new Consumer() { // from class: com.evie.sidescreen.prompts.announcement.-$$Lambda$AnnouncementSection$2rG4qYms-dyktUNALCOeAHSoPpI
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AnnouncementSection announcementSection = this.f$0;
                AnnouncementSection.mSubject.onNext(announcementSection.createPresenters(announcementSection.mPromptStoreModel.getNewAnnouncement()));
            }
        }));
    }

    public Observable<List<ItemPresenter>> getPresenters() {
        return mSubject;
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

    private List<ItemPresenter> createPresenters(Announcement announcement) {
        return announcement != null ? Arrays.asList(new AnnouncementPresenter(this.mAnalyticsModel, this.mPromptStoreModel, announcement)) : Collections.emptyList();
    }
}
