.class Lcom/voxel/launcher3/WallpaperPickerActivity$3;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 603
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$3;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    if-lez p4, :cond_1

    sub-int/2addr p5, p3

    if-lez p5, :cond_1

    .line 608
    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$3;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget p2, p2, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedIndex:I

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$3;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget p2, p2, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedIndex:I

    iget-object p3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$3;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object p3, p3, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 609
    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$3;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object p2, p2, Lcom/voxel/launcher3/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    iget-object p3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$3;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object p3, p3, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    iget-object p4, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$3;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget p4, p4, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedIndex:I

    .line 610
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 609
    invoke-interface {p2, p3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 611
    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$3;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setSystemWallpaperVisiblity(Z)V

    .line 613
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method
