.class public Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;
.super Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
.source "DeferredLauncherActivityInfo.java"


# instance fields
.field private mActualInfo:Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

.field private final mComponent:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mComponent:Landroid/content/ComponentName;

    .line 39
    iput-object p2, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 40
    iput-object p3, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized getActualInfo()Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
    .locals 3

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mActualInfo:Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mComponent:Landroid/content/ComponentName;

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1, v0, v2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mActualInfo:Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mActualInfo:Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/voxel/launcher3/compat/UserHandleCompat;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-object v0
.end method
