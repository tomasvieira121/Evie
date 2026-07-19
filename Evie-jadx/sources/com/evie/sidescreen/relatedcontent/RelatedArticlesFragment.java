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
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.models.sidescreen.data.SideScreenRelatedContent;
import com.evie.models.sidescreen.data.TileType;
import com.evie.sidescreen.CustomPresenter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.MvpRecyclerAdapter;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleSeedPresenter;
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

/* JADX INFO: loaded from: classes.dex */
public class RelatedArticlesFragment extends Fragment {
    private static final String EXTRA_SCREEN_INFO = RelatedArticlesFragment.class.getName() + ".screenInfo";
    private MvpRecyclerAdapter mAdapter;
    private NewsArticle mArticle;
    private String mArticleId;
    private Handler mHandler;
    private List<ItemPresenter> mPresenters;
    private RecyclerView mRecyclerView;
    SideScreenRelatedContentModel mRelatedContentModel;
    private ScreenInfo mScreenInfo;
    TopLevelTilePresenterFactory mTopLevelTilePresenterFactory;
    private BehaviorSubject<Boolean> mActive = BehaviorSubject.create();
    CompositeDisposable mDisposables = new CompositeDisposable();

    public static RelatedArticlesFragment createInstance(NewsArticle newsArticle, String str, ScreenInfo screenInfo) {
        Bundle bundle = new Bundle();
        bundle.putSerializable(RelatedArticlesActivity.EXTRA_ARTICLE, newsArticle);
        bundle.putString("com.evie.sidescreen.article_id", str);
        bundle.putSerializable(EXTRA_SCREEN_INFO, screenInfo);
        RelatedArticlesFragment relatedArticlesFragment = new RelatedArticlesFragment();
        relatedArticlesFragment.setArguments(bundle);
        return relatedArticlesFragment;
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
        this.mRecyclerView = (RecyclerView) view.findViewById(R.id.recycler_view);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        this.mAdapter = new MvpRecyclerAdapter();
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.addItemDecoration(new TileRowDividerItemDecoration(getContext()));
        try {
            this.mScreenInfo = (ScreenInfo) getArguments().getSerializable(EXTRA_SCREEN_INFO);
        } catch (Exception unused) {
        }
        this.mArticle = (NewsArticle) getArguments().getSerializable(RelatedArticlesActivity.EXTRA_ARTICLE);
        if (this.mArticle != null) {
            populateArticle();
            getRelatedContent(this.mArticle.getId(), false, 1);
        } else {
            this.mArticleId = getArguments().getString("com.evie.sidescreen.article_id");
            getRelatedContent(this.mArticleId, true, 1);
        }
    }

    public void setArticle(NewsArticle newsArticle, ScreenInfo screenInfo) {
        this.mArticle = newsArticle;
        this.mScreenInfo = screenInfo;
        populateArticle();
        getRelatedContent(this.mArticle.getId(), false, 1);
    }

    private void populateArticle() {
        SideScreenContentTile sideScreenContentTile = new SideScreenContentTile(this.mArticle.getId(), TileType.ARTICLE_SEED, 0);
        this.mPresenters = new ArrayList();
        this.mPresenters.addAll(this.mTopLevelTilePresenterFactory.create(getContext(), sideScreenContentTile, this.mArticle, null, this.mScreenInfo));
        this.mAdapter.setItemPresenters(this.mPresenters, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getRelatedContent(final String str, final boolean z, final int i) {
        if (i == 1) {
            this.mHandler.removeCallbacksAndMessages(null);
        }
        this.mDisposables.add(this.mRelatedContentModel.getRelatedContent(str, z, null).subscribeOn(Schedulers.m548io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$RelatedArticlesFragment$eBk6zXY61Apc4rxxEyg_YI5jMtg
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                RelatedArticlesFragment.lambda$getRelatedContent$0(this.f$0, i, str, z, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$getRelatedContent$0(RelatedArticlesFragment relatedArticlesFragment, final int i, final String str, final boolean z, Lce lce) throws Exception {
        SideScreenRelatedContent sideScreenRelatedContent;
        if (lce.isError()) {
            if (!(lce.getErrorData() instanceof IOException) || i >= 4) {
                return;
            }
            relatedArticlesFragment.mHandler.postDelayed(new Runnable() { // from class: com.evie.sidescreen.relatedcontent.RelatedArticlesFragment.1
                @Override // java.lang.Runnable
                public void run() {
                    RelatedArticlesFragment.this.getRelatedContent(str, z, i + 1);
                }
            }, 1000 << i);
            return;
        }
        if (lce.isLoading() || (sideScreenRelatedContent = (SideScreenRelatedContent) lce.getData()) == null) {
            return;
        }
        relatedArticlesFragment.populateRelatedContent(sideScreenRelatedContent);
    }

    private void populateRelatedContent(SideScreenRelatedContent sideScreenRelatedContent) {
        if (sideScreenRelatedContent.getSeed() != null) {
            this.mArticle = sideScreenRelatedContent.getSeed();
            if (getActivity() instanceof RelatedArticlesActivity) {
                ((RelatedArticlesActivity) getActivity()).setArticle(this.mArticle, true);
            }
            populateArticle();
        } else if (this.mArticle == null) {
            if (getActivity() instanceof RelatedArticlesActivity) {
                ((RelatedArticlesActivity) getActivity()).setArticle(null, true);
                return;
            }
            return;
        }
        if (sideScreenRelatedContent.getArticleBody() != null) {
            ((ArticleSeedPresenter) this.mPresenters.get(0)).setArticleBody(sideScreenRelatedContent.getArticleBody());
        }
        if (sideScreenRelatedContent.getObjects() == null || sideScreenRelatedContent.getLayout() == null || sideScreenRelatedContent.getLayout().getTiles() == null || sideScreenRelatedContent.getLayout().getTiles().isEmpty()) {
            return;
        }
        this.mPresenters.add(new CustomPresenter(R.layout.ss_related_articles_header, false, true));
        this.mPresenters.addAll(this.mTopLevelTilePresenterFactory.processTiles(getContext(), sideScreenRelatedContent.getObjects(), sideScreenRelatedContent.getLayout().getTiles(), 1, TileType.RELATED_ARTICLE, this.mScreenInfo));
        this.mAdapter.setItemPresenters(this.mPresenters, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.mHandler.removeCallbacksAndMessages(null);
        this.mDisposables.dispose();
        super.onDestroy();
    }
}
