.class Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;
.super Landroid/webkit/WebViewClient;
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
.field clearHistoryTarget:Ljava/lang/String;

.field hasCommittedFirstLoad:Z

.field final synthetic this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

.field final synthetic val$fallbackUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    iput-object p2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->val$fallbackUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->hasCommittedFirstLoad:Z

    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->clearHistoryTarget:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clearHistory(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->clearHistoryTarget:Ljava/lang/String;

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->hasCommittedFirstLoad:Z

    .line 265
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    invoke-static {p1, p2}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->access$100(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->clearHistoryTarget:Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 224
    iput-object p2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->clearHistoryTarget:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 231
    iget-object p2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    invoke-static {p2}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->access$000(Lcom/evie/sidescreen/webviewer/WebViewerActivity;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->val$fallbackUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->val$fallbackUrl:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 232
    iget-object p2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->val$fallbackUrl:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->clearHistory(Ljava/lang/String;)V

    .line 233
    iget-object p2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->val$fallbackUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 240
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 256
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 247
    iget-boolean p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->hasCommittedFirstLoad:Z

    if-nez p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;->this$0:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    invoke-static {p1}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->access$000(Lcom/evie/sidescreen/webviewer/WebViewerActivity;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
