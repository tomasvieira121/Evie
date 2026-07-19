.class public Lcom/voxel/launcher3/LiveWallpaperListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LiveWallpaperListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;,
        Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mWallpapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    iget-object v0, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    .line 69
    new-instance v1, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;

    invoke-direct {v1, p0, p1}, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;-><init>(Lcom/voxel/launcher3/LiveWallpaperListAdapter;Landroid/content/Context;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->getItem(I)Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 91
    iget-object p2, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0137

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    :cond_0
    iget-object p3, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;

    .line 97
    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->setView(Landroid/view/View;)V

    const p3, 0x7f0a02ea

    .line 98
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v1, 0x7f0a02e9

    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 100
    iget-object v2, p1, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->mThumbnail:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 101
    iget-object v0, p1, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->mThumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p3, 0x8

    .line 102
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p3, p1, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->mInfo:Landroid/app/WallpaperInfo;

    iget-object v2, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v2}, Landroid/app/WallpaperInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const p3, 0x7f0a02eb

    .line 108
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 109
    iget-object p1, p1, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->mInfo:Landroid/app/WallpaperInfo;

    iget-object v0, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
