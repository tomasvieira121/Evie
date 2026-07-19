.class Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;
.super Landroid/os/AsyncTask;
.source "LiveWallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LiveWallpaperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveWallpaperEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Landroid/content/pm/ResolveInfo;",
        ">;",
        "Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWallpaperPosition:I

.field final synthetic this$0:Lcom/voxel/launcher3/LiveWallpaperListAdapter;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/LiveWallpaperListAdapter;Landroid/content/Context;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/voxel/launcher3/LiveWallpaperListAdapter;

    .line 137
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    aget-object p1, p1, v1

    .line 148
    new-instance v2, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator$1;

    invoke-direct {v2, p0, v0}, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator$1;-><init>(Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 164
    :try_start_0
    new-instance v4, Landroid/app/WallpaperInfo;

    iget-object v5, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-virtual {v4, v0}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 175
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.service.wallpaper.WallpaperService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    new-instance v6, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;

    invoke-direct {v6, v2, v4, v5}, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;-><init>(Landroid/graphics/drawable/Drawable;Landroid/app/WallpaperInfo;Landroid/content/Intent;)V

    .line 178
    new-array v2, v3, [Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;

    aput-object v6, v2, v1

    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "LiveWallpaperListAdapter"

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping wallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v4, "LiveWallpaperListAdapter"

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping wallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 181
    :cond_0
    new-array p1, v3, [Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;

    aput-object v2, p1, v1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->publishProgress([Ljava/lang/Object;)V

    return-object v0
.end method

.method protected varargs onProgressUpdate([Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;)V
    .locals 6

    .line 188
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    .line 190
    iget-object p1, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/voxel/launcher3/LiveWallpaperListAdapter;

    invoke-virtual {p1}, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 193
    :cond_0
    iget-object v3, v2, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->mThumbnail:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, v2, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->mThumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 196
    :cond_1
    iget v3, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    iget-object v5, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/voxel/launcher3/LiveWallpaperListAdapter;

    iget-object v5, v5, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 197
    iget-object v3, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/voxel/launcher3/LiveWallpaperListAdapter;

    iget-object v3, v3, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    iget v5, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    invoke-interface {v3, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 199
    :cond_2
    iget-object v3, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/voxel/launcher3/LiveWallpaperListAdapter;

    iget-object v3, v3, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_1
    iget v2, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p1, [Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->onProgressUpdate([Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;)V

    return-void
.end method
