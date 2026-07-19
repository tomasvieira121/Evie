.class Lcom/voxel/launcher3/WallpaperPickerActivity$2;
.super Landroid/database/DataSetObserver;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

.field final synthetic val$a:Lcom/voxel/launcher3/LiveWallpaperListAdapter;

.field final synthetic val$liveWallpapersView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/WallpaperPickerActivity;Landroid/widget/LinearLayout;Lcom/voxel/launcher3/LiveWallpaperListAdapter;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$2;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iput-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$2;->val$liveWallpapersView:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$2;->val$a:Lcom/voxel/launcher3/LiveWallpaperListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$2;->val$liveWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 567
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$2;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$2;->val$liveWallpapersView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$2;->val$a:Lcom/voxel/launcher3/LiveWallpaperListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/WallpaperPickerActivity;->populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V

    .line 568
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$2;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-virtual {v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->initializeScrollForRtl()V

    .line 569
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$2;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-virtual {v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->updateTileIndices()V

    return-void
.end method
