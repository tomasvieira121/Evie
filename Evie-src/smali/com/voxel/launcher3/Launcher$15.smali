.class Lcom/voxel/launcher3/Launcher$15;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->setUpSearchHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 2867
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$15;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 2

    .line 2872
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$15;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$800(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$15;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$800(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->getAnimatedValue()F

    move-result v0

    mul-float v1, v1, v0

    :cond_0
    return v1
.end method

.method public getScaledView()Landroid/view/View;
    .locals 1

    .line 2881
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$15;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    return-object v0
.end method
