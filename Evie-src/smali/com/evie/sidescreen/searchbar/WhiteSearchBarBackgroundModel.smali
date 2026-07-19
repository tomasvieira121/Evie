.class public Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;
.super Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;
.source "WhiteSearchBarBackgroundModel.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation


# instance fields
.field private mOutputObservable:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetRectObservable:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;-><init>()V

    .line 30
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;->mTargetRectObservable:Lio/reactivex/subjects/PublishSubject;

    .line 32
    new-instance v0, Lcom/evie/sidescreen/searchbar/-$$Lambda$WhiteSearchBarBackgroundModel$kTTJusc_-KADcWDsoeaid0btJ_M;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/searchbar/-$$Lambda$WhiteSearchBarBackgroundModel$kTTJusc_-KADcWDsoeaid0btJ_M;-><init>(Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 44
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;->mOutputObservable:Lio/reactivex/subjects/BehaviorSubject;

    .line 47
    iget-object p1, p0, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;->mTargetRectObservable:Lio/reactivex/subjects/PublishSubject;

    .line 48
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/searchbar/-$$Lambda$WhiteSearchBarBackgroundModel$OwJDyDV1CUds7uV2u0RuMruh_iI;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/searchbar/-$$Lambda$WhiteSearchBarBackgroundModel$OwJDyDV1CUds7uV2u0RuMruh_iI;-><init>(Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;)V

    .line 49
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;->ERROR:Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;

    .line 50
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;->mOutputObservable:Lio/reactivex/subjects/BehaviorSubject;

    .line 52
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private createBlurredSearchBar(Landroid/util/Pair;)Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;"
        }
    .end annotation

    .line 56
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 57
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 60
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x1e

    .line 61
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 63
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, -0x1

    .line 64
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v4, 0x2

    .line 66
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v2

    const/4 v1, 0x1

    aput-object v3, v4, v1

    .line 70
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v0, v0, v3

    .line 71
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 72
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 76
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;

    invoke-direct {p1, v1, v2}, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    return-object p1
.end method

.method public static synthetic lambda$OwJDyDV1CUds7uV2u0RuMruh_iI(Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;Landroid/util/Pair;)Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;
    .locals 0

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;->createBlurredSearchBar(Landroid/util/Pair;)Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;Landroid/view/View;IIIIIIII)V
    .locals 1

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;->mTargetRectObservable:Lio/reactivex/subjects/PublishSubject;

    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;->mOutputObservable:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method
