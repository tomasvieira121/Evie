.class Lcom/voxel/launcher3/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/voxel/launcher3/IconCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/IconCache;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/voxel/launcher3/AllAppsList;->mIconCache:Lcom/voxel/launcher3/IconCache;

    return-void
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")Z"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 202
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/AppInfo;

    .line 203
    iget-object v4, v3, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 177
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    .line 178
    invoke-virtual {v0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)Lcom/voxel/launcher3/AppInfo;
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/AppInfo;

    .line 216
    iget-object v2, v1, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 217
    iget-object v3, v1, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p2, v3}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public add(Lcom/voxel/launcher3/AppInfo;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 7

    .line 90
    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p2, p3}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object p2

    .line 94
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    .line 96
    new-instance v0, Lcom/voxel/launcher3/AppInfo;

    iget-object v5, p0, Lcom/voxel/launcher3/AllAppsList;->mIconCache:Lcom/voxel/launcher3/IconCache;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/AppInfo;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Lcom/voxel/launcher3/compat/UserHandleCompat;Lcom/voxel/launcher3/IconCache;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/AllAppsList;->add(Lcom/voxel/launcher3/AppInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removePackage(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/AppInfo;

    .line 108
    iget-object v3, v2, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 109
    iget-object v4, v2, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/voxel/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/IconCache;->remove(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 9

    .line 121
    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p2, p3}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 128
    iget-object v2, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/AppInfo;

    .line 129
    iget-object v3, v2, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 130
    iget-object v4, v2, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p3, v4}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-static {v0, v3}, Lcom/voxel/launcher3/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/voxel/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lcom/voxel/launcher3/AllAppsList;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v2, v3, p3}, Lcom/voxel/launcher3/IconCache;->remove(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 135
    iget-object v2, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_5

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    .line 146
    invoke-virtual {v5}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v5}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-direct {p0, v2, p3, v3}, Lcom/voxel/launcher3/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)Lcom/voxel/launcher3/AppInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 149
    new-instance v2, Lcom/voxel/launcher3/AppInfo;

    iget-object v7, p0, Lcom/voxel/launcher3/AllAppsList;->mIconCache:Lcom/voxel/launcher3/IconCache;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/voxel/launcher3/AppInfo;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Lcom/voxel/launcher3/compat/UserHandleCompat;Lcom/voxel/launcher3/IconCache;Ljava/util/HashMap;)V

    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/AllAppsList;->add(Lcom/voxel/launcher3/AppInfo;)V

    goto :goto_2

    .line 151
    :cond_2
    iget-object v3, p0, Lcom/voxel/launcher3/AllAppsList;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iget-object v4, v2, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, p3}, Lcom/voxel/launcher3/IconCache;->remove(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 152
    iget-object v3, p0, Lcom/voxel/launcher3/AllAppsList;->mIconCache:Lcom/voxel/launcher3/IconCache;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lcom/voxel/launcher3/IconCache;->getTitleAndIcon(Lcom/voxel/launcher3/AppInfo;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;)V

    .line 153
    iget-object v3, p0, Lcom/voxel/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_5

    .line 159
    iget-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/AppInfo;

    .line 160
    iget-object v1, v0, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 161
    iget-object v2, v0, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p3, v2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    iget-object v2, p0, Lcom/voxel/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v0, v1, p3}, Lcom/voxel/launcher3/IconCache;->remove(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 165
    iget-object v0, p0, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_5
    return-void
.end method
