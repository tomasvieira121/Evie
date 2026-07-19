package com.evie.sidescreen.relatedcontent;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.common.data.Lce;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.models.sidescreen.data.RelatedContentPublisher;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.models.sidescreen.data.SideScreenRelatedContent;
import com.evie.models.sidescreen.data.TileType;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.MvpRecyclerAdapter;
import com.evie.sidescreen.personalize.FollowState;
import com.evie.sidescreen.personalize.TopicItemPresenter;
import com.evie.sidescreen.personalize.TopicItemPresenterFactory;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.videos.AutoplayPresenter;
import com.evie.sidescreen.tiles.videos.PlaylistItemPresenter;
import dagger.android.support.AndroidSupportInjection;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.schema.NewsArticle;
import org.schema.evie.topics.Topic;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class RelatedVideosFragment extends Fragment {
    private static final String EXTRA_SCREEN_INFO = RelatedVideosFragment.class.getName() + ".screenInfo";
    private MvpRecyclerAdapter mAdapter;
    private NewsArticle mArticle;
    private String mArticleId;
    private Handler mHandler;
    List<ItemPresenter> mPresenters;
    private RecyclerView mRecyclerView;
    SideScreenRelatedContentModel mRelatedContentModel;
    private ScreenInfo mScreenInfo;
    SideScreenSharedPreferencesModel mSideScreenSharedPreferencesModel;
    TopLevelTilePresenterFactory mTopLevelTilePresenterFactory;
    TopicItemPresenterFactory mTopicItemPresenterFactory;
    private BehaviorSubject<Boolean> mActive = BehaviorSubject.create();
    CompositeDisposable mDisposables = new CompositeDisposable();

    public static RelatedVideosFragment createInstance(NewsArticle newsArticle, String str, ScreenInfo screenInfo) {
        Bundle bundle = new Bundle();
        bundle.putSerializable(RelatedVideosActivity.EXTRA_ARTICLE, newsArticle);
        bundle.putString("com.evie.sidescreen.article_id", str);
        bundle.putSerializable(EXTRA_SCREEN_INFO, screenInfo);
        RelatedVideosFragment relatedVideosFragment = new RelatedVideosFragment();
        relatedVideosFragment.setArguments(bundle);
        return relatedVideosFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        AndroidSupportInjection.inject(this);
        super.onAttach(context);
        this.mHandler = new Handler();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.ss_topics_list_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ScreenInfo screenInfo;
        this.mRecyclerView = (RecyclerView) view.findViewById(R.id.recycler_view);
        this.mRecyclerView.setBackgroundColor(getResources().getColor(R.color.dark_theme_bg));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        this.mAdapter = new MvpRecyclerAdapter();
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.addItemDecoration(new TileRowDividerItemDecoration(getContext(), true));
        try {
            screenInfo = (ScreenInfo) getArguments().getSerializable(EXTRA_SCREEN_INFO);
        } catch (Exception unused) {
            screenInfo = null;
        }
        NewsArticle newsArticle = (NewsArticle) getArguments().getSerializable(RelatedVideosActivity.EXTRA_ARTICLE);
        if (newsArticle != null) {
            setArticle(newsArticle, screenInfo);
            return;
        }
        this.mArticleId = getArguments().getString("com.evie.sidescreen.article_id");
        this.mScreenInfo = screenInfo;
        getRelatedContent(this.mArticleId, true, 1);
    }

    public void setArticle(NewsArticle newsArticle, ScreenInfo screenInfo) {
        this.mArticle = newsArticle;
        this.mScreenInfo = screenInfo;
        populateArticle();
        getRelatedContent(this.mArticle.getId(), false, 1);
    }

    private void populateArticle() {
        this.mPresenters = new ArrayList();
        this.mPresenters.addAll(this.mTopLevelTilePresenterFactory.create(getContext(), new SideScreenContentTile(this.mArticle.getId(), TileType.VIDEO_SEED, 0), this.mArticle, null, this.mScreenInfo));
        this.mAdapter.setItemPresenters(this.mPresenters, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getRelatedContent(final String str, final boolean z, final int i) {
        if (i == 1) {
            this.mHandler.removeCallbacksAndMessages(null);
        }
        this.mDisposables.add(this.mRelatedContentModel.getRelatedContent(str, z, null).subscribeOn(Schedulers.m548io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                RelatedVideosFragment.lambda$getRelatedContent$0(this.f$0, i, str, z, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$getRelatedContent$0(RelatedVideosFragment relatedVideosFragment, final int i, final String str, final boolean z, Lce lce) throws Exception {
        SideScreenRelatedContent sideScreenRelatedContent;
        if (lce.isError()) {
            if (!(lce.getErrorData() instanceof IOException) || i >= 5) {
                return;
            }
            relatedVideosFragment.mHandler.postDelayed(new Runnable() { // from class: com.evie.sidescreen.relatedcontent.RelatedVideosFragment.1
                @Override // java.lang.Runnable
                public void run() {
                    RelatedVideosFragment.this.getRelatedContent(str, z, i + 1);
                }
            }, 1000 << i);
            return;
        }
        if (lce.isLoading() || (sideScreenRelatedContent = (SideScreenRelatedContent) lce.getData()) == null) {
            return;
        }
        relatedVideosFragment.populateRelatedContent(sideScreenRelatedContent);
    }

    private void populateRelatedContent(SideScreenRelatedContent sideScreenRelatedContent) {
        if (sideScreenRelatedContent.getSeed() != null) {
            this.mArticle = sideScreenRelatedContent.getSeed();
            if (getActivity() instanceof RelatedVideosActivity) {
                ((RelatedVideosActivity) getActivity()).setArticle(this.mArticle, 2);
            } else if (this.mArticle == null) {
                if (getActivity() instanceof RelatedVideosActivity) {
                    ((RelatedVideosActivity) getActivity()).setArticle(null, 2);
                    return;
                }
                return;
            }
            populateArticle();
        }
        if (sideScreenRelatedContent.getPublisher() != null) {
            RelatedContentPublisher publisher = sideScreenRelatedContent.getPublisher();
            if (publisher.getTopics() != null && publisher.getTopics().size() > 0) {
                Topic topic = publisher.getTopics().get(0);
                boolean z = sideScreenRelatedContent.getPublisher().getFollows().size() > 0;
                if (topic != null) {
                    TopicItemPresenter topicItemPresenterCreate = this.mTopicItemPresenterFactory.create(topic, z ? FollowState.FOLLOWING : FollowState.FOLLOW, this.mScreenInfo);
                    topicItemPresenterCreate.setDarkTheme();
                    topicItemPresenterCreate.setShouldShowTileRowDividers(true);
                    this.mPresenters.add(topicItemPresenterCreate);
                } else {
                    Timber.m551d("null topic", new Object[0]);
                }
            }
        }
        if (sideScreenRelatedContent.getObjects() != null && sideScreenRelatedContent.getLayout() != null && sideScreenRelatedContent.getLayout().getTiles() != null && !sideScreenRelatedContent.getLayout().getTiles().isEmpty()) {
            this.mPresenters.add(new AutoplayPresenter(this.mScreenInfo, null, this.mSideScreenSharedPreferencesModel.getPlaylistAutoplayEnabled()));
            this.mPresenters.addAll(this.mTopLevelTilePresenterFactory.processTiles(getContext(), sideScreenRelatedContent.getObjects(), sideScreenRelatedContent.getLayout().getTiles(), 1, TileType.PLAYLIST_ITEM, this.mScreenInfo));
        }
        this.mAdapter.setItemPresenters(this.mPresenters, false);
    }

    public NewsArticle getNextArticle() {
        for (ItemPresenter itemPresenter : this.mPresenters) {
            if (itemPresenter instanceof PlaylistItemPresenter) {
                return ((PlaylistItemPresenter) itemPresenter).getArticle();
            }
        }
        return null;
    }

    public void updateFollowingStatus(boolean z) {
        FollowState followStateDetermineFollowState = FollowState.determineFollowState(z, false);
        if (this.mPresenters.size() < 2 || !(this.mPresenters.get(1) instanceof TopicItemPresenter)) {
            return;
        }
        ((TopicItemPresenter) this.mPresenters.get(1)).setFollowState(followStateDetermineFollowState);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.mHandler.removeCallbacksAndMessages(null);
        this.mDisposables.dispose();
        super.onDestroy();
    }
}
