package com.evie.sidescreen.personalize;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import dagger.android.support.AndroidSupportInjection;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.BehaviorSubject;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TopicsListFragment extends Fragment implements TopicItemPresenter.FollowStateChangedListener {
    private BehaviorSubject<Boolean> mActive = BehaviorSubject.create();
    CompositeDisposable mDisposable = new CompositeDisposable();
    TopicsListPresenter mTopicsListPresenter;
    TopicsListPresenterFactory mTopicsListPresenterFactory;
    TopicsListViewHolder mTopicsListViewHolder;
    private static final String EXTRA_TOPICS_OPTIONS = TopicsListFragment.class.getName() + ".options";
    private static final String EXTRA_EXTERNAL_CONTROL = TopicsListFragment.class.getName() + ".external_control";
    private static final String EXTRA_USE_SECTIONS = TopicsListFragment.class.getName() + ".useSections";
    private static final String EXTRA_SCREEN_INFO = TopicsListFragment.class.getName() + ".screenInfo";

    @Override // com.evie.sidescreen.personalize.TopicItemPresenter.FollowStateChangedListener
    public void onFollowStateChanged(TopicItemPresenter topicItemPresenter) {
    }

    public static TopicsListFragment createInstance(ListTopicsRequestOptions listTopicsRequestOptions, boolean z, boolean z2, ScreenInfo screenInfo) {
        Bundle bundle = new Bundle();
        bundle.putSerializable(EXTRA_TOPICS_OPTIONS, listTopicsRequestOptions.getOptions());
        bundle.putBoolean(EXTRA_EXTERNAL_CONTROL, z);
        bundle.putBoolean(EXTRA_USE_SECTIONS, z2);
        bundle.putSerializable(EXTRA_SCREEN_INFO, screenInfo);
        TopicsListFragment topicsListFragment = new TopicsListFragment();
        topicsListFragment.setArguments(bundle);
        return topicsListFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        AndroidSupportInjection.inject(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.ss_topics_list_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Map map;
        ScreenInfo screenInfo = null;
        try {
            map = (Map) getArguments().getSerializable(EXTRA_TOPICS_OPTIONS);
        } catch (Exception unused) {
            map = null;
        }
        try {
            screenInfo = (ScreenInfo) getArguments().getSerializable(EXTRA_SCREEN_INFO);
        } catch (Exception unused2) {
        }
        this.mTopicsListPresenter = this.mTopicsListPresenterFactory.create(new ListTopicsRequestOptions(map), getArguments().getBoolean(EXTRA_USE_SECTIONS, false), screenInfo, this);
        this.mTopicsListViewHolder = new TopicsListViewHolder(view);
        this.mTopicsListViewHolder.bindPresenter(this.mTopicsListPresenter);
        this.mTopicsListPresenter.bindViewHolder(this.mTopicsListViewHolder);
        this.mDisposable.add(this.mActive.distinctUntilChanged().subscribe(new Consumer() { // from class: com.evie.sidescreen.personalize.-$$Lambda$TopicsListFragment$V4_dd1MskyPHGXNSO-xts0KMLC8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TopicsListFragment.lambda$onViewCreated$0(this.f$0, (Boolean) obj);
            }
        }));
        if (getArguments().getBoolean(EXTRA_EXTERNAL_CONTROL)) {
            return;
        }
        setActive(true);
    }

    public static /* synthetic */ void lambda$onViewCreated$0(TopicsListFragment topicsListFragment, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            topicsListFragment.mTopicsListPresenter.load();
        } else {
            topicsListFragment.mTopicsListPresenter.clear();
        }
    }

    public void setActive(boolean z) {
        this.mActive.onNext(Boolean.valueOf(z));
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Boolean value = this.mActive.getValue();
        if (value == null || !value.booleanValue()) {
            return;
        }
        this.mTopicsListPresenter.load();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        setActive(false);
        this.mTopicsListPresenter.dispose();
        this.mTopicsListPresenter = null;
        this.mTopicsListViewHolder = null;
        this.mDisposable.dispose();
    }
}
