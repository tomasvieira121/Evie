.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$1;
.super Ljava/lang/Object;
.source "NotificationSettingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)V
    .locals 1

    .line 149
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$1;->mCollator:Ljava/text/Collator;

    .line 152
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$1;->mCollator:Ljava/text/Collator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$1;->mCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 149
    check-cast p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$1;->compare(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)I

    move-result p1

    return p1
.end method
