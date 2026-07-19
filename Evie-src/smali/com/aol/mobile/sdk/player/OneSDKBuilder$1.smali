.class Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;
.super Landroid/os/AsyncTask;
.source "OneSDKBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/OneSDKBuilder;->createUsingGoogleAdvertId(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V
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
        "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/OneSDKBuilder;

.field final synthetic val$callback:Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/OneSDKBuilder;Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->this$0:Lcom/aol/mobile/sdk/player/OneSDKBuilder;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->val$callback:Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 0

    .line 179
    :try_start_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->this$0:Lcom/aol/mobile/sdk/player/OneSDKBuilder;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->access$000(Lcom/aol/mobile/sdk/player/OneSDKBuilder;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->doInBackground([Ljava/lang/Void;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->this$0:Lcom/aol/mobile/sdk/player/OneSDKBuilder;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->val$callback:Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->access$100(Lcom/aol/mobile/sdk/player/OneSDKBuilder;Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->this$0:Lcom/aol/mobile/sdk/player/OneSDKBuilder;

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->val$callback:Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->access$200(Lcom/aol/mobile/sdk/player/OneSDKBuilder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->this$0:Lcom/aol/mobile/sdk/player/OneSDKBuilder;

    invoke-static {v2}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->access$300(Lcom/aol/mobile/sdk/player/OneSDKBuilder;)Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->access$100(Lcom/aol/mobile/sdk/player/OneSDKBuilder;Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 174
    check-cast p1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder$1;->onPostExecute(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    return-void
.end method
