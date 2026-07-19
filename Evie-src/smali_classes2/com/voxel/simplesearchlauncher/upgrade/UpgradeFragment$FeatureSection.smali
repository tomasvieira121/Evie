.class Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureSection"
.end annotation


# instance fields
.field mDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mView:Landroid/view/View;

    .line 144
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method setDescription(Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setVideo(IF)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setAspectRatio(F)V

    .line 165
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 166
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setVisibility(I)V

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 168
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    new-instance v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection$1;-><init>(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;)V

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setListener(Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;)V

    .line 179
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setLooping(Z)V

    .line 180
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 181
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->play()V

    return-void
.end method
