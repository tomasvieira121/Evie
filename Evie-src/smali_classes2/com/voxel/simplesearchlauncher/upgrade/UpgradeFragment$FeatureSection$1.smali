.class Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection$1;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->setVideo(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection$1;->this$0:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoEnd()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection$1;->this$0:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->play()V

    return-void
.end method

.method public onVideoPrepared()V
    .locals 0

    return-void
.end method
