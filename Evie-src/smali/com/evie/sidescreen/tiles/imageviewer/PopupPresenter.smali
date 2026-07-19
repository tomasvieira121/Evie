.class public abstract Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "PopupPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/StackLayer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;",
        ">",
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "TVH;>;",
        "Lcom/evie/sidescreen/StackLayer;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mArticle:Lorg/schema/NewsArticle;

.field private final mExternalUrl:Ljava/lang/String;

.field private mIsDismissed:Z

.field private final mLayerStack:Lcom/evie/sidescreen/LayerStack;

.field private final mMedia:Lorg/schema/MediaObject;

.field private final mMediaUrl:Ljava/lang/String;

.field private final mOriginalLocation:Landroid/graphics/Rect;

.field private final mPopupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

.field private final mPopupView:Landroid/view/ViewGroup;

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private final mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Lorg/schema/MediaObject;Landroid/view/View;Lcom/evie/sidescreen/LayerStack;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mIsDismissed:Z

    .line 71
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mMediaUrl:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mExternalUrl:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 74
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mMedia:Lorg/schema/MediaObject;

    .line 75
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mLayerStack:Lcom/evie/sidescreen/LayerStack;

    .line 76
    invoke-virtual {p7}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;->get()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mPopupView:Landroid/view/ViewGroup;

    .line 77
    iput-object p8, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    .line 78
    iput-object p9, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 79
    iput-object p10, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mPopupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    .line 81
    new-instance p1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string p2, "popup_image_viewer"

    iget-object p3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p3}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    if-eqz p5, :cond_0

    .line 84
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 86
    new-array p1, p1, [I

    .line 87
    invoke-virtual {p5, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 88
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    aget p3, p1, v0

    const/4 p4, 0x1

    aget p6, p1, p4

    aget p7, p1, v0

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p8

    add-int/2addr p7, p8

    aget p8, p1, p4

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p9

    add-int/2addr p8, p9

    invoke-virtual {p2, p3, p6, p7, p8}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p5}, Landroid/view/View;->getPaddingLeft()I

    move-result p6

    add-int/2addr p3, p6

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 90
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5}, Landroid/view/View;->getPaddingTop()I

    move-result p6

    add-int/2addr p3, p6

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 91
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p5}, Landroid/view/View;->getPaddingRight()I

    move-result p6

    sub-int/2addr p3, p6

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 92
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p3, p5

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 95
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mPopupView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 96
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    aget p5, p1, p4

    sub-int/2addr p3, p5

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 97
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    aget p1, p1, p4

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 100
    :cond_0
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    return-object p0
.end method

.method public static getScreenWidthPixels(Landroid/content/Context;)I
    .locals 2

    .line 291
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 292
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 293
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 294
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method


# virtual methods
.method abstract createNewViewHolderInstance(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mPopupView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->createNewViewHolderInstance(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public dismissPopup(Z)V
    .locals 5

    .line 119
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mIsDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mIsDismissed:Z

    .line 123
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mLayerStack:Lcom/evie/sidescreen/LayerStack;

    invoke-virtual {v1, p0}, Lcom/evie/sidescreen/LayerStack;->remove(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter$1;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter$1;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;)V

    .line 147
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v2, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setWashAndOverlayAlpha(FZ)V

    .line 148
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v2, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setCardShown(Z)V

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->animateToRect(Landroid/graphics/Rect;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-virtual {p1, v3, v1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setContentAlpha(FLandroid/animation/Animator$AnimatorListener;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 156
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_0
    return-void
.end method

.method public getMedia()Lorg/schema/MediaObject;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mMedia:Lorg/schema/MediaObject;

    return-object v0
.end method

.method public abstract getPopupType()I
.end method

.method protected getType()I
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->getPopupType()I

    move-result v0

    return v0
.end method

.method public isRootLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttributionClicked()V
    .locals 13

    .line 230
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lorg/schema/Organization;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Lorg/schema/Organization;->getFaviconUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Lorg/schema/Organization;->getAndroidPackageId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v10, v1

    .line 235
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mExternalUrl:Ljava/lang/String;

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mMediaUrl:Ljava/lang/String;

    .line 240
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 242
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getAnalytics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "analytics_proto"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_FAVICON_KEY:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_ANALYTICS_PROTO_KEY:Ljava/lang/String;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mMediaUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getAndroidUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getAmpUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v3 .. v12}, Lcom/evie/sidescreen/ActivityStarter;->startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onBackButtonClicked()V
    .locals 0

    .line 262
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->onBackPressed()Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->pop(Z)V

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mMediaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->showContent(Ljava/lang/String;)V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mExternalUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->showAttribution(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mArticle:Lorg/schema/NewsArticle;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;-><init>(Lorg/schema/NewsArticle;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setPresenters(Ljava/util/List;I)V

    return-void
.end method

.method public onContentTapped()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->toggleCardShown()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation

    .line 161
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/evie/sidescreen/R$style;->SideScreenThemeDark:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 162
    invoke-super {p0, v0, p2}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/mvp/MvpViewHolder;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    return-object p1
.end method

.method public onImagePopped(F)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mPopupListener:Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    invoke-interface {v0, p1}, Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;->onPopup(F)Z

    return-void
.end method

.method public pop(Z)V
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->dismissPopup(Z)V

    return-void
.end method

.method public showPopup()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->showPopup()V

    .line 106
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mOriginalLocation:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->animateFullScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setImageFullScreen()V

    .line 110
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setContentAlpha(FLandroid/animation/Animator$AnimatorListener;Z)V

    .line 111
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-virtual {v0, v2, v5, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setContentAlpha(FLandroid/animation/Animator$AnimatorListener;Z)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-virtual {v0, v2, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setWashAndOverlayAlpha(FZ)V

    .line 115
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->mLayerStack:Lcom/evie/sidescreen/LayerStack;

    invoke-virtual {v0, p0}, Lcom/evie/sidescreen/LayerStack;->push(Lcom/evie/sidescreen/StackLayer;)V

    return-void
.end method
