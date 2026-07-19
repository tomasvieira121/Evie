.class Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;
.super Ljava/lang/Object;
.source "AppDrawerSettingsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->setupMock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockTarget:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 214
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockTarget:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 216
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 217
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 218
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 219
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 221
    new-array v1, v4, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 224
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockTarget:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-static {v4}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    move-result-object v4

    invoke-interface {v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v0, v4, v1, v2}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 226
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    aget v1, v1, v3

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->access$202(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;F)F

    .line 227
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->access$200(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
