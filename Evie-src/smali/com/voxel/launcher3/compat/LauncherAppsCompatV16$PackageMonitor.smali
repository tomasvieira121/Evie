.class Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "LauncherAppsCompatV16.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;


# direct methods
.method private constructor <init>(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$1;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;-><init>(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 163
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 196
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x13

    if-eqz v1, :cond_2

    const-string p1, "android.intent.extra.REPLACING"

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "android.intent.extra.changed_package_list"

    .line 202
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 203
    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;

    invoke-static {v1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->access$100(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 204
    invoke-interface {v2, p2, v0, p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "android.intent.extra.REPLACING"

    .line 207
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "android.intent.extra.changed_package_list"

    .line 209
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 210
    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;

    invoke-static {v1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->access$100(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 211
    invoke-interface {v2, p2, v0, p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V

    goto :goto_1

    .line 166
    :cond_4
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.extra.REPLACING"

    .line 167
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz v1, :cond_a

    .line 169
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_7

    :cond_5
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 174
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;

    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->access$100(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 175
    invoke-interface {p2, v1, v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    goto :goto_3

    :cond_6
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 177
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_9

    .line 179
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;

    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->access$100(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 180
    invoke-interface {p2, v1, v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    goto :goto_4

    :cond_7
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 185
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez p2, :cond_8

    .line 187
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;

    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->access$100(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 188
    invoke-interface {p2, v1, v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    goto :goto_5

    .line 191
    :cond_8
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;

    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->access$100(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 192
    invoke-interface {p2, v1, v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    goto :goto_6

    :cond_9
    return-void

    :cond_a
    :goto_7
    return-void
.end method
