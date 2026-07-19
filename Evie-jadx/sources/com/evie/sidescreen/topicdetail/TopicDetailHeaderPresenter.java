package com.evie.sidescreen.topicdetail;

import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import androidx.palette.graphics.Palette;
import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.personalize.FollowState;
import com.evie.sidescreen.personalize.IFollowButtonHandler;
import com.evie.sidescreen.personalize.IFollowButtonHandlerFactory;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.DataSource;
import com.facebook.datasource.DataSources;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.image.CloseableBitmap;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import com.voxel.simplesearchlauncher.utils.MaterialColorMapUtils;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.concurrent.Callable;
import lombok.NonNull;
import org.schema.MediaSelector;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class TopicDetailHeaderPresenter extends ItemPresenter<TopicDetailHeaderViewHolder> {
    private final IFollowButtonHandler mFollowButtonHandler;
    private final OnBackListener mOnBackListener;
    private final TopicDetailFollowPopupMenuHelper mPopupMenuHelper;
    private final ScreenInfo mScreenInfo;
    private final Topic mTopic;
    private final TopicPersonalizationStore mTopicPersonalizationStore;

    interface OnBackListener {
        void onBack();
    }

    public TopicDetailHeaderPresenter(@NonNull Topic topic, FollowState followState, OnBackListener onBackListener, @Provided IFollowButtonHandlerFactory iFollowButtonHandlerFactory, @Provided TopicPersonalizationStore topicPersonalizationStore, @Provided TopicDetailFollowPopupMenuHelper topicDetailFollowPopupMenuHelper, ScreenInfo screenInfo) {
        if (topic == null) {
            throw new NullPointerException("topic is marked @NonNull but is null");
        }
        this.mTopic = topic;
        this.mFollowButtonHandler = iFollowButtonHandlerFactory.create(followState, this.mDisposables);
        this.mOnBackListener = onBackListener;
        this.mTopicPersonalizationStore = topicPersonalizationStore;
        this.mPopupMenuHelper = topicDetailFollowPopupMenuHelper;
        this.mScreenInfo = screenInfo;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TopicDetailHeaderViewHolder.f374ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopicDetailHeaderViewHolder createViewHolderInstance(View view) {
        return new TopicDetailHeaderViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopicDetailHeaderViewHolder topicDetailHeaderViewHolder) {
        String strSelectMediaUrl;
        topicDetailHeaderViewHolder.setTitle(this.mTopic.getName());
        topicDetailHeaderViewHolder.setDescription(this.mTopic.getDescription());
        this.mFollowButtonHandler.bindFollowButtonViewHolder(topicDetailHeaderViewHolder.getFollowButtonViewHolder(), this.mTopic, this.mScreenInfo);
        String strSelectMediaUrl2 = null;
        try {
            strSelectMediaUrl = MediaSelector.selectMediaUrl(this.mTopic.getImages(), topicDetailHeaderViewHolder.getLogoWidth(), topicDetailHeaderViewHolder.getLogoAspectRatio());
        } catch (Exception unused) {
            strSelectMediaUrl = null;
        }
        try {
            strSelectMediaUrl2 = MediaSelector.selectMediaUrl(this.mTopic.getImages(), topicDetailHeaderViewHolder.getBackdropWidth(), topicDetailHeaderViewHolder.getBackdropAspectRatio(), false);
        } catch (Exception unused2) {
        }
        topicDetailHeaderViewHolder.setLogoUri(strSelectMediaUrl);
        if (strSelectMediaUrl2 != null) {
            topicDetailHeaderViewHolder.setBackdropUri(strSelectMediaUrl2);
        } else if (strSelectMediaUrl != null) {
            handleNoBackDrop(strSelectMediaUrl);
        } else {
            handleNoLogoOrBackDrop(topicDetailHeaderViewHolder);
        }
        this.mDisposables.add(this.mTopicPersonalizationStore.listenToChanges().subscribe(new Consumer() { // from class: com.evie.sidescreen.topicdetail.-$$Lambda$TopicDetailHeaderPresenter$yFk6AkY4bR0oHI1nGFJCuuN0Mdo
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TopicDetailHeaderPresenter.lambda$onBindViewHolder$0(this.f$0, obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onBindViewHolder$0(TopicDetailHeaderPresenter topicDetailHeaderPresenter, Object obj) throws Exception {
        FollowState followStateDetermineFollowState = FollowState.determineFollowState(topicDetailHeaderPresenter.mTopic, topicDetailHeaderPresenter.mTopicPersonalizationStore.getTopicFollows(), topicDetailHeaderPresenter.mTopicPersonalizationStore.getTopicBlocks());
        ((TopicDetailHeaderViewHolder) topicDetailHeaderPresenter.mViewHolder).getFollowButtonViewHolder().setState(followStateDetermineFollowState);
        topicDetailHeaderPresenter.mFollowButtonHandler.setState(followStateDetermineFollowState);
    }

    private void handleNoLogoOrBackDrop(TopicDetailHeaderViewHolder topicDetailHeaderViewHolder) {
        int iHashCode = (this.mTopic.getId() != null ? this.mTopic.getId() : "hashcode").hashCode();
        topicDetailHeaderViewHolder.setLogo(new ColorDrawable(MaterialColorMapUtils.getPrimaryColor(iHashCode)));
        topicDetailHeaderViewHolder.setBackdrop(new ColorDrawable(MaterialColorMapUtils.getSecondaryColor(iHashCode)));
    }

    private void handleNoBackDrop(String str) {
        final DataSource<CloseableReference<CloseableImage>> dataSourceFetchDecodedImage = Fresco.getImagePipeline().fetchDecodedImage(ImageRequest.fromUri(str), null);
        this.mDisposables.add(Observable.fromCallable(new Callable() { // from class: com.evie.sidescreen.topicdetail.-$$Lambda$TopicDetailHeaderPresenter$2JDsFUm_JqkYywBiwLiArpAT7JM
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return TopicDetailHeaderPresenter.lambda$handleNoBackDrop$1(this.f$0, dataSourceFetchDecodedImage);
            }
        }).subscribeOn(Schedulers.m548io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.topicdetail.-$$Lambda$TopicDetailHeaderPresenter$21iexpv4AWrEUEiMuwFN5pE9Vrs
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ((TopicDetailHeaderViewHolder) this.f$0.mViewHolder).setBackdrop((ColorDrawable) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.facebook.datasource.DataSource] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.facebook.datasource.DataSource] */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.graphics.drawable.ColorDrawable] */
    public static /* synthetic */ ColorDrawable lambda$handleNoBackDrop$1(TopicDetailHeaderPresenter topicDetailHeaderPresenter, DataSource dataSource) throws Exception {
        int headerColor = -3355444;
        try {
            try {
                CloseableReference closeableReference = (CloseableReference) DataSources.waitForFinalResult(dataSource);
                if (closeableReference != null) {
                    CloseableImage closeableImage = (CloseableImage) closeableReference.get();
                    if (closeableImage instanceof CloseableBitmap) {
                        headerColor = topicDetailHeaderPresenter.getHeaderColor(((CloseableBitmap) closeableImage).getUnderlyingBitmap());
                    }
                }
            } catch (Throwable th) {
                topicDetailHeaderPresenter.handleUnanticipatedException(th);
            }
            dataSource = new ColorDrawable(headerColor);
            return dataSource;
        } finally {
            dataSource.close();
        }
    }

    private int getHeaderColor(Bitmap bitmap) {
        try {
            Palette.Builder builder = new Palette.Builder(bitmap);
            builder.maximumColorCount(4);
            Palette paletteGenerate = builder.generate();
            Palette.Swatch vibrantSwatch = paletteGenerate.getVibrantSwatch();
            if (vibrantSwatch == null) {
                vibrantSwatch = paletteGenerate.getDominantSwatch();
            }
            if (vibrantSwatch == null) {
                return -3355444;
            }
            return MaterialColorMapUtils.calculatePrimaryAndSecondaryColor(vibrantSwatch.getRgb(), false).mPrimaryColor;
        } catch (IllegalArgumentException unused) {
            return -3355444;
        }
    }

    public IFollowButtonHandler getFollowButtonHandler() {
        return this.mFollowButtonHandler;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected void onUnbindViewHolder() {
        super.onUnbindViewHolder();
    }

    public void onBack() {
        this.mOnBackListener.onBack();
    }

    public void onClickFollowContextButton(View view) {
        this.mPopupMenuHelper.showMenuAtView(this.mTopic, view.getContext(), view, this.mScreenInfo);
    }
}
