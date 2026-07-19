.class final Lcom/voxel/launcher3/BubbleTextView$1;
.super Landroid/util/Property;
.source "BubbleTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/BubbleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/voxel/launcher3/BubbleTextView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/voxel/launcher3/BubbleTextView;)Ljava/lang/Float;
    .locals 0

    .line 99
    invoke-static {p1}, Lcom/voxel/launcher3/BubbleTextView;->access$000(Lcom/voxel/launcher3/BubbleTextView;)Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getAnimationScale()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/BubbleTextView$1;->get(Lcom/voxel/launcher3/BubbleTextView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/voxel/launcher3/BubbleTextView;Ljava/lang/Float;)V
    .locals 1

    .line 104
    invoke-static {p1}, Lcom/voxel/launcher3/BubbleTextView;->access$000(Lcom/voxel/launcher3/BubbleTextView;)Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setAnimationScale(F)V

    .line 105
    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->invalidate()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Lcom/voxel/launcher3/BubbleTextView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/BubbleTextView$1;->set(Lcom/voxel/launcher3/BubbleTextView;Ljava/lang/Float;)V

    return-void
.end method
