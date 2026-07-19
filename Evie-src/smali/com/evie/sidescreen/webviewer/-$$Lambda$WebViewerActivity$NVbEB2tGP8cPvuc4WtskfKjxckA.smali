.class public final synthetic Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$NVbEB2tGP8cPvuc4WtskfKjxckA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$NVbEB2tGP8cPvuc4WtskfKjxckA;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$NVbEB2tGP8cPvuc4WtskfKjxckA;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->lambda$clearCookies$1(Landroid/content/Context;)V

    return-void
.end method
