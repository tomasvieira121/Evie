.class public Lcom/evie/sidescreen/footer/FooterPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "FooterPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/footer/FooterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/evie/sidescreen/footer/FooterPresenter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/evie/sidescreen/footer/FooterPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-void
.end method


# virtual methods
.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/footer/FooterViewHolder;
    .locals 1

    .line 40
    new-instance v0, Lcom/evie/sidescreen/footer/FooterViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/footer/FooterViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/footer/FooterPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/footer/FooterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected getType()I
    .locals 1

    .line 35
    sget v0, Lcom/evie/sidescreen/footer/FooterViewHolder;->ID:I

    return v0
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/footer/FooterViewHolder;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/evie/sidescreen/footer/FooterViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/footer/FooterPresenter;->onBindViewHolder(Lcom/evie/sidescreen/footer/FooterViewHolder;)V

    return-void
.end method

.method onPoweredByClick(Landroid/view/View;)V
    .locals 8

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "item_type"

    const-string v1, "powered_by_evie"

    .line 50
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_type"

    const-string v1, "side_screen"

    .line 51
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/footer/FooterPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string v6, "http://evie.com/"

    .line 55
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/evie/sidescreen/footer/FooterPresenter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 59
    iget-object v2, p0, Lcom/evie/sidescreen/footer/FooterPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v3, "web"

    const-string v4, "powered-by-evie"

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
