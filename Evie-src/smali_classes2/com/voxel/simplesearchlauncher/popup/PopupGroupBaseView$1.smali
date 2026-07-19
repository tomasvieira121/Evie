.class Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopupGroupBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->createZoomCloseAnimation(Landroid/view/View;ZZJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    const/4 v0, 0x0

    iput v0, p1, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mOpenAnimationProgress:F

    return-void
.end method
