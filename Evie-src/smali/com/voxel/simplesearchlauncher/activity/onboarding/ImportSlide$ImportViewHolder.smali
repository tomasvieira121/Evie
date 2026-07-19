.class Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;
.super Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImportSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field mockLauncher:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/view/View;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    .line 296
    invoke-direct {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 297
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;->view:Landroid/view/View;

    const p1, 0x7f0a01cd

    .line 298
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;->mockLauncher:Landroid/widget/ImageView;

    const p1, 0x7f0a01ca

    .line 299
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method
