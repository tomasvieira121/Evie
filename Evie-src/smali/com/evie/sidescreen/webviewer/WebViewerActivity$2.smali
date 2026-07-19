.class Lcom/evie/sidescreen/webviewer/WebViewerActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/webviewer/WebViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/webviewer/WebViewerActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$2;->this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$2;->this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    iget-object p1, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$2;->this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    iget-object p1, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$2;->this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    iget-object p1, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
