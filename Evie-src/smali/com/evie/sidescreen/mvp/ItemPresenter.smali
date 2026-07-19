.class public abstract Lcom/evie/sidescreen/mvp/ItemPresenter;
.super Ljava/lang/Object;
.source "ItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/evie/sidescreen/mvp/MvpViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field protected mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/mvp/ItemPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;->unbindViewHolder()V

    .line 63
    iput-object p1, p0, Lcom/evie/sidescreen/mvp/ItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    .line 64
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/ItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected abstract createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TV;"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;->unbindViewHolder()V

    return-void
.end method

.method public getLayoutResId()I
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;->getType()I

    move-result v0

    return v0
.end method

.method protected abstract getType()I
.end method

.method public getViewHolder()Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/ItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    return-object v0
.end method

.method public getVisibilityThreshold(Landroid/content/Context;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method protected final handleUnanticipatedException(Ljava/lang/Throwable;)V
    .locals 0

    .line 152
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 153
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isSameContents(Lcom/evie/sidescreen/mvp/ItemPresenter;)Z
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->isSameItem(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSameItem(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            ")TV;"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;->getLayoutResId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    sget p2, Lcom/evie/sidescreen/mvp/R$id;->layoutResId:I

    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;->getLayoutResId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onUnbindViewHolder()V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onVisibilityWillChange()V
    .locals 0

    return-void
.end method

.method public final unbindViewHolder()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/ItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onUnbindViewHolder()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/ItemPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/evie/sidescreen/mvp/ItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    return-void
.end method
