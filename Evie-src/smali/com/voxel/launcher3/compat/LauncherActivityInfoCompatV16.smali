.class public Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;
.super Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
.source "LauncherActivityInfoCompatV16.java"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mComponentName:Landroid/content/ComponentName;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;-><init>()V

    .line 38
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 39
    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mComponentName:Landroid/content/ComponentName;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 5

    const-wide/16 v0, 0x0

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    :catch_0
    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 66
    :try_start_1
    iget-object v2, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    if-nez v1, :cond_1

    .line 73
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/voxel/launcher3/compat/UserHandleCompat;
    .locals 1

    .line 48
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method
