.class public final synthetic Lcom/evie/sidescreen/weather/-$$Lambda$WeatherViewHolder$YYXXMoRYwKv_z_SgS0VFWqWb8iU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherViewHolder$YYXXMoRYwKv_z_SgS0VFWqWb8iU;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherViewHolder$YYXXMoRYwKv_z_SgS0VFWqWb8iU;->f$0:Landroid/view/View;

    invoke-static {v0}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->lambda$hideView$0(Landroid/view/View;)V

    return-void
.end method
