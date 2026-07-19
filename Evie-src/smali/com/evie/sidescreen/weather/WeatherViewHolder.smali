.class public Lcom/evie/sidescreen/weather/WeatherViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "WeatherViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/weather/WeatherViewHolder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/weather/WeatherPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mDateText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLocationText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field mRetryView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mStateViewsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/evie/sidescreen/weather/WeatherViewHolder$State;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field mTempText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mWeatherIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mWeatherStateView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_weather_item:I

    sput v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 51
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mStateViewsMap:Ljava/util/Map;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mResources:Landroid/content/res/Resources;

    .line 54
    check-cast p1, Landroid/view/ViewGroup;

    .line 55
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x2

    .line 56
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v2, 0x3

    .line 57
    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v2, 0x4

    .line 58
    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 61
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mStateViewsMap:Ljava/util/Map;

    sget-object v0, Lcom/evie/sidescreen/weather/WeatherViewHolder$State;->WEATHER:Lcom/evie/sidescreen/weather/WeatherViewHolder$State;

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mWeatherStateView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mLocationText:Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mStateViewsMap:Ljava/util/Map;

    sget-object v0, Lcom/evie/sidescreen/weather/WeatherViewHolder$State;->ERROR:Lcom/evie/sidescreen/weather/WeatherViewHolder$State;

    new-array v1, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mRetryView:Landroid/view/ViewGroup;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private hideView(Landroid/view/View;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherViewHolder$YYXXMoRYwKv_z_SgS0VFWqWb8iU;

    invoke-direct {v1, p1}, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherViewHolder$YYXXMoRYwKv_z_SgS0VFWqWb8iU;-><init>(Landroid/view/View;)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic lambda$hideView$0(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public hideWeatherView()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClickDate(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/weather/WeatherPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->onClickDate(Landroid/view/View;)V

    return-void
.end method

.method public onClickRetry()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/weather/WeatherPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/weather/WeatherPresenter;->onClickRetryWeather()V

    return-void
.end method

.method public onClickWeather(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/weather/WeatherPresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->onClickWeather(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mLocationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mLocationText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->hideView(Landroid/view/View;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mLocationText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->showView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setTemperature(IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 82
    iget-object p2, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mTempText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/evie/sidescreen/R$string;->ss_temp:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x20

    int-to-float p1, p1

    const p2, 0x3f0e38e4

    mul-float p1, p1, p2

    .line 85
    iget-object p2, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mTempText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/evie/sidescreen/R$string;->ss_temp_celsius:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setWeatherCondition(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mWeatherIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mStateViewsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 125
    invoke-direct {p0, v2}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->hideView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showState(Lcom/evie/sidescreen/weather/WeatherViewHolder$State;)V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mStateViewsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/weather/WeatherViewHolder$State;

    .line 140
    iget-object v2, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mStateViewsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 143
    invoke-virtual {v1, p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    invoke-direct {p0, v3}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->showView(Landroid/view/View;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-direct {p0, v3}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->hideView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showWeatherView()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
