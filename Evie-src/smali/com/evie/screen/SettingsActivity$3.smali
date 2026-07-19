.class Lcom/evie/screen/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/screen/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/screen/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/evie/screen/SettingsActivity;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0(Lcom/evie/common/data/Lce;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$null$1(Lcom/evie/screen/SettingsActivity$3;Ljava/lang/String;Lcom/evie/common/data/Lce;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Error reporting token, %s"

    const/4 v0, 0x1

    .line 308
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getErrorData()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "Success"

    .line 310
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object p2, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    iget-object p2, p2, Lcom/evie/screen/SettingsActivity;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setFirebaseCloudMessagingRegistrationToken(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onClick$2(Lcom/evie/screen/SettingsActivity$3;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 291
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 293
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 296
    :cond_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->saveDistinctUserId(Ljava/lang/String;)V

    .line 297
    iget-object p2, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User ID = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 298
    iget-object p2, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    const-string p3, "userID"

    invoke-static {p2, p3, p1}, Lcom/evie/screen/SettingsActivity;->access$400(Lcom/evie/screen/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setFirebaseCloudMessagingRegistrationToken(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 303
    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 304
    iget-object p2, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    iget-object p3, p2, Lcom/evie/screen/SettingsActivity;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    invoke-virtual {p3, p1}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->registerFirebaseToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p3

    sget-object v0, Lcom/evie/screen/-$$Lambda$SettingsActivity$3$izAMiXN72VoF2TdYoZrpzDZ26j0;->INSTANCE:Lcom/evie/screen/-$$Lambda$SettingsActivity$3$izAMiXN72VoF2TdYoZrpzDZ26j0;

    .line 305
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/evie/screen/-$$Lambda$SettingsActivity$3$xgDbB863i2ujSec6tNoY9aAWdDE;

    invoke-direct {v0, p0, p1}, Lcom/evie/screen/-$$Lambda$SettingsActivity$3$xgDbB863i2ujSec6tNoY9aAWdDE;-><init>(Lcom/evie/screen/SettingsActivity$3;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 304
    invoke-static {p2, p1}, Lcom/evie/screen/SettingsActivity;->access$502(Lcom/evie/screen/SettingsActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 279
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object p1

    .line 280
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 281
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    const-string v2, "userID"

    invoke-static {v1, v2, p1}, Lcom/evie/screen/SettingsActivity;->access$400(Lcom/evie/screen/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/evie/screen/SettingsActivity$3;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Override user ID"

    .line 287
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 288
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "Cancel"

    const/4 v2, 0x0

    .line 289
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "Set"

    new-instance v2, Lcom/evie/screen/-$$Lambda$SettingsActivity$3$FfwbmfqI6b9KtWppbKdgwxFjUOE;

    invoke-direct {v2, p0, v0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$3$FfwbmfqI6b9KtWppbKdgwxFjUOE;-><init>(Lcom/evie/screen/SettingsActivity$3;Landroid/widget/EditText;)V

    .line 290
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
