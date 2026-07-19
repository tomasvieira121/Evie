.class public final synthetic Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$VsuGW5i2dFE3xvZSzfJODAU3Q-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

.field private final synthetic f$1:Lcom/evie/sidescreen/analytics/data/ScreenInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$VsuGW5i2dFE3xvZSzfJODAU3Q-Q;->f$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    iput-object p2, p0, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$VsuGW5i2dFE3xvZSzfJODAU3Q-Q;->f$1:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$VsuGW5i2dFE3xvZSzfJODAU3Q-Q;->f$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    iget-object v1, p0, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$VsuGW5i2dFE3xvZSzfJODAU3Q-Q;->f$1:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->lambda$onOptionsItemSelected$2(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Ljava/lang/String;)V

    return-void
.end method
