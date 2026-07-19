.class Lcom/voxel/launcher3/WallpaperPickerActivity$5;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;->initializeScrollForRtl()V
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

    .line 769
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$5;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$5;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    const v1, 0x7f0a019b

    .line 772
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 773
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$5;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v1, v1, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperScrollContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 774
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$5;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v0, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperScrollContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
