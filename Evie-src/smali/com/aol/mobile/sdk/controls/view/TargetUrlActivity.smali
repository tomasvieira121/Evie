.class public final Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;
.super Landroid/app/Activity;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PrivateApi;
.end annotation


# static fields
.field public static final KEY_SHOW_CLOSE:Ljava/lang/String; = "KEY_SHOW_CLOSE"

.field public static final KEY_TARGET_URL:Ljava/lang/String; = "KEY_TARGET_URL"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/aol/mobile/sdk/controls/R$layout;->target_url_activity:I

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_TARGET_URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_SHOW_CLOSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget v1, Lcom/aol/mobile/sdk/controls/R$id;->clickthrough_close:I

    invoke-virtual {p0, v1}, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity$1;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity$1;-><init>(Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/aol/mobile/sdk/controls/R$id;->web_view:I

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
