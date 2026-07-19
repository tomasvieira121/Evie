.class Lcom/voxel/simplesearchlauncher/notification/Notifier$1;
.super Landroid/content/BroadcastReceiver;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/notification/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/notification/Notifier;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/notification/Notifier;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier$1;->this$0:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.intent.extra.REPLACING"

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier$1;->this$0:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->clearCount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
