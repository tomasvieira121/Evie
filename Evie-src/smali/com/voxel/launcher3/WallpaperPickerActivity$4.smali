.class Lcom/voxel/launcher3/WallpaperPickerActivity$4;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


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


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private numCheckedItems()I
    .locals 4

    .line 664
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v0, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 667
    iget-object v3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v3, v3, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CheckableFrameLayout;

    .line 668
    invoke-virtual {v3}, Lcom/voxel/launcher3/CheckableFrameLayout;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7

    .line 693
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x0

    const v1, 0x7f0a01a1

    if-ne p2, v1, :cond_4

    .line 695
    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object p2, p2, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    .line 696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p2, :cond_1

    .line 699
    iget-object v4, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v4, v4, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    .line 700
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/CheckableFrameLayout;

    .line 701
    invoke-virtual {v4}, Lcom/voxel/launcher3/CheckableFrameLayout;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 702
    invoke-virtual {v4}, Lcom/voxel/launcher3/CheckableFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;

    .line 703
    iget-object v6, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-virtual {v5, v6}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->onDelete(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    .line 704
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v4, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget v4, v4, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedIndex:I

    if-ne v0, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 711
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v1, v1, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 714
    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    const/4 v0, -0x1

    iput v0, p2, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedIndex:I

    const/4 v0, 0x0

    .line 715
    iput-object v0, p2, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedTile:Landroid/view/View;

    .line 716
    invoke-virtual {p2, v3}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setSystemWallpaperVisiblity(Z)V

    .line 718
    :cond_3
    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-virtual {p2}, Lcom/voxel/launcher3/WallpaperPickerActivity;->updateTileIndices()V

    .line 719
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v3

    :cond_4
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 658
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const/high16 v0, 0x7f0e0000

    .line 659
    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    .line 729
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object p1, p1, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 731
    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v2, v2, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CheckableFrameLayout;

    .line 732
    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/CheckableFrameLayout;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object p1, p1, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedTile:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 735
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object p1, p1, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedTile:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 737
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/voxel/launcher3/WallpaperPickerActivity;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    .line 679
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->numCheckedItems()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 681
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v0

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-virtual {v1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f100000

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 685
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 684
    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return v0
.end method
