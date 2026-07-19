.class public Lcom/evie/sidescreen/webviewer/WebViewerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WebViewerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/webviewer/WebViewerActivity;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity_ViewBinding;->target:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    .line 32
    sget v0, Lcom/evie/sidescreen/R$id;->content:I

    const-string v1, "field \'mContentView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mContentView:Landroid/view/View;

    .line 33
    sget v0, Lcom/evie/sidescreen/R$id;->app_bar_layout:I

    const-string v1, "field \'mAppBarLayout\'"

    const-class v2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 34
    sget v0, Lcom/evie/sidescreen/R$id;->toolbar:I

    const-string v1, "field \'mToolbar\'"

    const-class v2, Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 35
    sget v0, Lcom/evie/sidescreen/R$id;->webview:I

    const-string v1, "field \'mWebView\'"

    const-class v2, Landroid/webkit/WebView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    .line 36
    sget v0, Lcom/evie/sidescreen/R$id;->toolbar_title:I

    const-string v1, "field \'mToolbarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mToolbarTitle:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/evie/sidescreen/R$id;->progress:I

    const-string v1, "field \'mProgressBar\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 38
    sget v0, Lcom/evie/sidescreen/R$id;->logo:I

    const-string v1, "field \'mLogo\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mLogo:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/evie/sidescreen/R$id;->footer:I

    const-string v1, "field \'mTopicsFooterBar\'"

    const-class v2, Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    iput-object p2, p1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopicsFooterBar:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity_ViewBinding;->target:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity_ViewBinding;->target:Lcom/evie/sidescreen/webviewer/WebViewerActivity;

    .line 49
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mContentView:Landroid/view/View;

    .line 50
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 51
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 52
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    .line 53
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mToolbarTitle:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 55
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mLogo:Landroid/widget/ImageView;

    .line 56
    iput-object v1, v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopicsFooterBar:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
