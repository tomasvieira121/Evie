.class public Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;
.super Ljava/lang/Object;
.source "WidgetsAndShortcutNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/voxel/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandle:Lcom/voxel/launcher3/compat/UserHandleCompat;

.field private final mManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    .line 29
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    .line 30
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method

.method private getComponentKey(Ljava/lang/Object;)Lcom/voxel/launcher3/util/ComponentKey;
    .locals 3

    .line 74
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 76
    new-instance v0, Lcom/voxel/launcher3/util/ComponentKey;

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v2, p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-object v0

    .line 78
    :cond_0
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 79
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance p1, Lcom/voxel/launcher3/util/ComponentKey;

    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-object p1
.end method

.method private getLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 90
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 92
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->loadLabel(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "ShortcutNameComparator"

    const-string v1, "Failed to extract app display name from fetch info"

    .line 98
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 42
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->getComponentKey(Ljava/lang/Object;)Lcom/voxel/launcher3/util/ComponentKey;

    move-result-object v0

    .line 43
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->getComponentKey(Ljava/lang/Object;)Lcom/voxel/launcher3/util/ComponentKey;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v3, v0, Lcom/voxel/launcher3/util/ComponentKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 48
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v5, v1, Lcom/voxel/launcher3/util/ComponentKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v5}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    return v3

    :cond_0
    if-nez v2, :cond_1

    if-eqz v4, :cond_1

    const/4 p1, -0x1

    return p1

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 60
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->getLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 61
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v3, :cond_3

    .line 64
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->getLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 65
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
