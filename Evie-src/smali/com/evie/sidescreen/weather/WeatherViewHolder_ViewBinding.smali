.class public Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "WeatherViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/weather/WeatherViewHolder;

.field private view7f0b009c:Landroid/view/View;

.field private view7f0b0181:Landroid/view/View;

.field private view7f0b020a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/weather/WeatherViewHolder;Landroid/view/View;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/weather/WeatherViewHolder;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->date_text:I

    const-string v1, "field \'mDateText\' and method \'onClickDate\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    sget v1, Lcom/evie/sidescreen/R$id;->date_text:I

    const-string v2, "field \'mDateText\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mDateText:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->view7f0b009c:Landroid/view/View;

    .line 34
    new-instance v1, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;Lcom/evie/sidescreen/weather/WeatherViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget v0, Lcom/evie/sidescreen/R$id;->weather_state:I

    const-string v1, "field \'mWeatherStateView\' and method \'onClickWeather\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    sget v1, Lcom/evie/sidescreen/R$id;->weather_state:I

    const-string v2, "field \'mWeatherStateView\'"

    const-class v3, Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mWeatherStateView:Landroid/view/ViewGroup;

    .line 42
    iput-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->view7f0b020a:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;Lcom/evie/sidescreen/weather/WeatherViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v0, Lcom/evie/sidescreen/R$id;->temperature_text:I

    const-string v1, "field \'mTempText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mTempText:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/evie/sidescreen/R$id;->weather_icon:I

    const-string v1, "field \'mWeatherIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mWeatherIcon:Landroid/widget/ImageView;

    .line 51
    sget v0, Lcom/evie/sidescreen/R$id;->location_text:I

    const-string v1, "field \'mLocationText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mLocationText:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/evie/sidescreen/R$id;->retry_state:I

    const-string v1, "field \'mRetryView\' and method \'onClickRetry\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 53
    sget v0, Lcom/evie/sidescreen/R$id;->retry_state:I

    const-string v1, "field \'mRetryView\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mRetryView:Landroid/view/ViewGroup;

    .line 54
    iput-object p2, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->view7f0b0181:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding$3;-><init>(Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;Lcom/evie/sidescreen/weather/WeatherViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/weather/WeatherViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/weather/WeatherViewHolder;

    .line 70
    iput-object v1, v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mDateText:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mWeatherStateView:Landroid/view/ViewGroup;

    .line 72
    iput-object v1, v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mTempText:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mWeatherIcon:Landroid/widget/ImageView;

    .line 74
    iput-object v1, v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mLocationText:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->mRetryView:Landroid/view/ViewGroup;

    .line 77
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->view7f0b009c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->view7f0b009c:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->view7f0b020a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->view7f0b020a:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->view7f0b0181:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/evie/sidescreen/weather/WeatherViewHolder_ViewBinding;->view7f0b0181:Landroid/view/View;

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
