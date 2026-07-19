.class Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;
.super Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;
.source "AppWidgetManagerCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "user"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 81
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 80
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public findProvider(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 156
    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    .line 155
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 157
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 67
    iget-object v3, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllProvidersMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/voxel/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 168
    invoke-static {v2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v3

    .line 170
    iget-object v4, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 171
    new-instance v5, Lcom/voxel/launcher3/util/ComponentKey;

    iget-object v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v5, v6, v3}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBadgeBitmap(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 115
    iget-boolean v0, p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ce

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0701cf

    .line 126
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v3, p4, v1

    .line 127
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 126
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 128
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int/2addr p4, p3

    .line 130
    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 132
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 133
    invoke-virtual {v2, v3, p4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {v2, v1, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 138
    :goto_0
    iget-object p3, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p4, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 139
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    .line 138
    invoke-virtual {p3, p4, p1, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 141
    instance-of p3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p3, :cond_2

    .line 142
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 145
    :cond_2
    invoke-virtual {p2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 146
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v3, v3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 149
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_3
    :goto_1
    return-object p2
.end method

.method public getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;
    .locals 1

    .line 86
    iget-boolean v0, p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    return-object p1
.end method

.method public loadIcon(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Lcom/voxel/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->getIcon(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public loadLabel(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p3

    move v2, p2

    move v4, p5

    .line 96
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f12002c

    const/4 p2, 0x0

    .line 98
    invoke-static {p3, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
