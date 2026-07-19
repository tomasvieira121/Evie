.class Lcom/evie/screen/TermsAndConditionsActivity$1;
.super Landroid/os/AsyncTask;
.source "TermsAndConditionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/screen/TermsAndConditionsActivity;->loadText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/screen/TermsAndConditionsActivity;


# direct methods
.method constructor <init>(Lcom/evie/screen/TermsAndConditionsActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/evie/screen/TermsAndConditionsActivity$1;->this$0:Lcom/evie/screen/TermsAndConditionsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/evie/screen/TermsAndConditionsActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    const/4 p1, 0x0

    .line 69
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "http://www.evie.com/appflash/tc.html"

    .line 70
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/evie/screen/TermsAndConditionsActivity$1;->this$0:Lcom/evie/screen/TermsAndConditionsActivity;

    iget-object v1, v1, Lcom/evie/screen/TermsAndConditionsActivity;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 79
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/evie/screen/TermsAndConditionsActivity$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/evie/screen/TermsAndConditionsActivity$1;->this$0:Lcom/evie/screen/TermsAndConditionsActivity;

    invoke-static {p1}, Lcom/evie/screen/TermsAndConditionsActivity;->access$000(Lcom/evie/screen/TermsAndConditionsActivity;)V

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity$1;->this$0:Lcom/evie/screen/TermsAndConditionsActivity;

    iget-object v0, v0, Lcom/evie/screen/TermsAndConditionsActivity;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity$1;->this$0:Lcom/evie/screen/TermsAndConditionsActivity;

    iget-object v0, v0, Lcom/evie/screen/TermsAndConditionsActivity;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lcom/evie/screen/TermsAndConditionsActivity$1;->this$0:Lcom/evie/screen/TermsAndConditionsActivity;

    iget-object p1, p1, Lcom/evie/screen/TermsAndConditionsActivity;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 97
    iget-object p1, p0, Lcom/evie/screen/TermsAndConditionsActivity$1;->this$0:Lcom/evie/screen/TermsAndConditionsActivity;

    iget-object p1, p1, Lcom/evie/screen/TermsAndConditionsActivity;->mDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 98
    iget-object p1, p0, Lcom/evie/screen/TermsAndConditionsActivity$1;->this$0:Lcom/evie/screen/TermsAndConditionsActivity;

    iget-object p1, p1, Lcom/evie/screen/TermsAndConditionsActivity;->mDialogLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/evie/screen/TermsAndConditionsActivity$1;->this$0:Lcom/evie/screen/TermsAndConditionsActivity;

    iget-object p1, p1, Lcom/evie/screen/TermsAndConditionsActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
