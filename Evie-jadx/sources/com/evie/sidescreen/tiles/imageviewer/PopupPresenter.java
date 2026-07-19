package com.evie.sidescreen.tiles.imageviewer;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LayerStack;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.StackLayer;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.imageviewer.PopupViewHolder;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import com.evie.sidescreen.webviewer.WebViewerActivity;
import java.util.ArrayList;
import java.util.HashMap;
import org.schema.MediaObject;
import org.schema.NewsArticle;
import org.schema.Organization;

/* JADX INFO: loaded from: classes.dex */
public abstract class PopupPresenter<VH extends PopupViewHolder> extends ItemPresenter<VH> implements StackLayer {
    private final ActivityStarter mActivityStarter;
    private final NewsArticle mArticle;
    private final String mExternalUrl;
    private boolean mIsDismissed = false;
    private final LayerStack mLayerStack;
    private final MediaObject mMedia;
    private final String mMediaUrl;
    private final Rect mOriginalLocation;
    private final SideScreenDependencies.PopupListener mPopupListener;
    private final ViewGroup mPopupView;
    private final ScreenInfo mScreenInfo;
    private final TopLevelTilePresenterFactory mTopLevelTilePresenterFactory;

    abstract VH createNewViewHolderInstance(View view, ViewGroup viewGroup);

    public abstract int getPopupType();

    @Override // com.evie.sidescreen.StackLayer
    public boolean isRootLayer() {
        return false;
    }

    public PopupPresenter(String str, String str2, NewsArticle newsArticle, MediaObject mediaObject, View view, LayerStack layerStack, PopupViewProvider popupViewProvider, TopLevelTilePresenterFactory topLevelTilePresenterFactory, ActivityStarter activityStarter, SideScreenDependencies.PopupListener popupListener) {
        this.mMediaUrl = str;
        this.mExternalUrl = str2;
        this.mArticle = newsArticle;
        this.mMedia = mediaObject;
        this.mLayerStack = layerStack;
        this.mPopupView = popupViewProvider.get();
        this.mTopLevelTilePresenterFactory = topLevelTilePresenterFactory;
        this.mActivityStarter = activityStarter;
        this.mPopupListener = popupListener;
        this.mScreenInfo = new ScreenInfo("popup_image_viewer", this.mArticle.getId(), null);
        if (view != null) {
            this.mOriginalLocation = new Rect();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            this.mOriginalLocation.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
            this.mOriginalLocation.left += view.getPaddingLeft();
            this.mOriginalLocation.top += view.getPaddingTop();
            this.mOriginalLocation.right -= view.getPaddingRight();
            this.mOriginalLocation.bottom -= view.getPaddingBottom();
            this.mPopupView.getLocationOnScreen(iArr);
            this.mOriginalLocation.top -= iArr[1];
            this.mOriginalLocation.bottom -= iArr[1];
            return;
        }
        this.mOriginalLocation = null;
    }

    public void showPopup() {
        ((PopupViewHolder) this.mViewHolder).showPopup();
        if (this.mOriginalLocation != null) {
            ((PopupViewHolder) this.mViewHolder).animateFullScreen(this.mOriginalLocation);
        } else {
            ((PopupViewHolder) this.mViewHolder).setImageFullScreen();
            ((PopupViewHolder) this.mViewHolder).setContentAlpha(0.0f, null, false);
            ((PopupViewHolder) this.mViewHolder).setContentAlpha(1.0f, null, true);
        }
        ((PopupViewHolder) this.mViewHolder).setWashAndOverlayAlpha(1.0f, true);
        this.mLayerStack.push(this);
    }

    public void dismissPopup(boolean z) {
        if (this.mIsDismissed) {
            return;
        }
        this.mIsDismissed = true;
        this.mLayerStack.remove(this);
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: com.evie.sidescreen.tiles.imageviewer.PopupPresenter.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ((PopupViewHolder) PopupPresenter.this.mViewHolder).dismissPopup();
                PopupPresenter.this.dispose();
            }
        };
        ((PopupViewHolder) this.mViewHolder).setWashAndOverlayAlpha(0.0f, z);
        ((PopupViewHolder) this.mViewHolder).setCardShown(false);
        if (z) {
            if (this.mOriginalLocation != null) {
                ((PopupViewHolder) this.mViewHolder).animateToRect(this.mOriginalLocation, animatorListener);
                return;
            } else {
                ((PopupViewHolder) this.mViewHolder).setContentAlpha(0.0f, animatorListener, true);
                return;
            }
        }
        animatorListener.onAnimationEnd(null);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public VH onCreateViewHolder(Context context, ViewGroup viewGroup) {
        return (VH) super.onCreateViewHolder((Context) new ContextThemeWrapper(context, R.style.SideScreenThemeDark), viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public VH createViewHolderInstance(View view) {
        return (VH) createNewViewHolderInstance(view, this.mPopupView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(PopupViewHolder popupViewHolder) {
        popupViewHolder.showContent(this.mMediaUrl);
        try {
            popupViewHolder.showAttribution(Uri.parse(this.mExternalUrl).getAuthority());
        } catch (Exception unused) {
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ImageCaptionPresenter(this.mArticle, null, null));
        popupViewHolder.setPresenters(arrayList, 0);
    }

    public void onContentTapped() {
        ((PopupViewHolder) this.mViewHolder).toggleCardShown();
    }

    public void onAttributionClicked() {
        Organization publisherOrganization = this.mArticle.getPublisherOrganization();
        String name = publisherOrganization != null ? publisherOrganization.getName() : null;
        String faviconUrl = publisherOrganization != null ? publisherOrganization.getFaviconUrl() : null;
        String androidPackageId = publisherOrganization != null ? publisherOrganization.getAndroidPackageId() : null;
        String str = this.mExternalUrl;
        if (TextUtils.isEmpty(str)) {
            str = this.mMediaUrl;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        HashMap map = new HashMap();
        String str2 = (String) this.mArticle.getAnalytics().get("analytics_proto");
        map.put(WebViewerActivity.EXTRA_FAVICON_KEY, faviconUrl);
        map.put(WebViewerActivity.EXTRA_ANALYTICS_PROTO_KEY, str2);
        this.mActivityStarter.startUrl(null, this.mMediaUrl, name, this.mArticle.getHeadline(), this.mArticle.getId(), map, androidPackageId, this.mArticle.getAndroidUrl(), this.mArticle.getAmpUrl());
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return getPopupType();
    }

    public void onBackButtonClicked() {
        onBackPressed();
    }

    @Override // com.evie.sidescreen.StackLayer
    public boolean onBackPressed() {
        pop(true);
        return true;
    }

    @Override // com.evie.sidescreen.StackLayer
    public void pop(boolean z) {
        dismissPopup(z);
    }

    public void onImagePopped(float f) {
        this.mPopupListener.onPopup(f);
    }

    public MediaObject getMedia() {
        return this.mMedia;
    }

    public static int getScreenWidthPixels(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }
}
