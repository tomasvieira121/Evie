.class public Lcom/voxel/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingInstallShortcutInfo"
.end annotation


# instance fields
.field data:Landroid/content/Intent;

.field icon:Landroid/graphics/Bitmap;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field launchIntent:Landroid/content/Intent;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/voxel/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 221
    iput-object p2, p0, Lcom/voxel/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->name:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lcom/voxel/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 224
    iget-object p1, p0, Lcom/voxel/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 225
    instance-of p2, p1, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 226
    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/voxel/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->icon:Landroid/graphics/Bitmap;

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 230
    instance-of p2, p1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz p2, :cond_1

    .line 231
    check-cast p1, Landroid/content/Intent$ShortcutIconResource;

    iput-object p1, p0, Lcom/voxel/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    :cond_1
    return-void
.end method
