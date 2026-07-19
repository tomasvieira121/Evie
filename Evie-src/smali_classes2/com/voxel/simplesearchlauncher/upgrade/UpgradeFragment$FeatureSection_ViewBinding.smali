.class public Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection_ViewBinding;
.super Ljava/lang/Object;
.source "UpgradeFragment$FeatureSection_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const-string v0, "field \'mTitle\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a02b9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mTitle:Landroid/widget/TextView;

    const-string v0, "field \'mDescription\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00c5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mDescription:Landroid/widget/TextView;

    const-string v0, "field \'mImage\'"

    .line 26
    const-class v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f0a0164

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v0, "field \'mVideo\'"

    .line 27
    const-class v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    const v2, 0x7f0a02db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    .line 37
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mTitle:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mDescription:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
