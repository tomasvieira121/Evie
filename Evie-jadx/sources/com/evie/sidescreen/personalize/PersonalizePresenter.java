package com.evie.sidescreen.personalize;

import android.view.View;
import com.crashlytics.android.Crashlytics;
import com.evie.common.data.Lce;
import com.evie.models.topics.TopicsModel;
import com.evie.models.topics.data.PersonalizePage;
import com.evie.models.topics.data.PersonalizeResult;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class PersonalizePresenter extends ItemPresenter<PersonalizeViewHolder> {
    private final PersonalizePagePresenterFactory mPersonalizePagePresenterFactory;
    private final ScreenInfo mScreenInfo;
    private final TopicsModel mTopicsModel;

    public PersonalizePresenter(ScreenInfo screenInfo, @Provided TopicsModel topicsModel, @Provided PersonalizePagePresenterFactory personalizePagePresenterFactory) {
        this.mScreenInfo = screenInfo;
        this.mTopicsModel = topicsModel;
        this.mPersonalizePagePresenterFactory = personalizePagePresenterFactory;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return PersonalizeViewHolder.f334ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public PersonalizeViewHolder createViewHolderInstance(View view) {
        return new PersonalizeViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(PersonalizeViewHolder personalizeViewHolder) {
        refresh(true);
    }

    public void refresh(final boolean z) {
        this.mDisposables.add(this.mTopicsModel.getPersonalize().observeOn(AndroidSchedulers.mainThread()).doOnError(new Consumer() { // from class: com.evie.sidescreen.personalize.-$$Lambda$Z1InX9Lkd7h7bLA70Rf4Q7XpFgE
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Crashlytics.logException((Throwable) obj);
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.personalize.-$$Lambda$PersonalizePresenter$5huMTIofhz-373QnLUxJQEqhBv4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                PersonalizePresenter.lambda$refresh$0(this.f$0, z, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$refresh$0(PersonalizePresenter personalizePresenter, boolean z, Lce lce) throws Exception {
        if (lce.isLoading()) {
            if (z) {
                ((PersonalizeViewHolder) personalizePresenter.mViewHolder).showLoading();
                return;
            }
            return;
        }
        if (lce.isError() || lce.getData() == null) {
            ((PersonalizeViewHolder) personalizePresenter.mViewHolder).showError();
            return;
        }
        PersonalizeResult personalizeResult = (PersonalizeResult) lce.getData();
        if (z) {
            ArrayList arrayList = new ArrayList();
            for (PersonalizePage personalizePage : personalizeResult.getPages()) {
                arrayList.add(personalizePresenter.mPersonalizePagePresenterFactory.create(new ScreenInfo(personalizePresenter.mScreenInfo.getType(), personalizePage.getLabel(), personalizePage.getLabel()), personalizePresenter, personalizePage.getLabel()));
            }
            ((PersonalizeViewHolder) personalizePresenter.mViewHolder).setTabs(arrayList);
        }
        ((PersonalizeViewHolder) personalizePresenter.mViewHolder).setFollows(personalizeResult.getFollowing());
        ((PersonalizeViewHolder) personalizePresenter.mViewHolder).setBlocks(personalizeResult.getBlocked());
        Iterator<PersonalizePage> it = personalizeResult.getPages().iterator();
        while (it.hasNext()) {
            ((PersonalizeViewHolder) personalizePresenter.mViewHolder).setPageData(it.next());
        }
        ((PersonalizeViewHolder) personalizePresenter.mViewHolder).dataSetChanged();
        ((PersonalizeViewHolder) personalizePresenter.mViewHolder).hideLoading();
    }

    public void onFollowStateChanged(PersonalizePagePresenter personalizePagePresenter) {
        ((PersonalizeViewHolder) this.mViewHolder).invalidateOtherPages(personalizePagePresenter);
    }
}
