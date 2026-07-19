.class Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$1;
.super Ljava/lang/Object;
.source "AlphaSet.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->initBaseObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 92
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 94
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mModifiers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$Modifier;

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$Modifier;->modify(F)F

    move-result v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v1

    goto :goto_1

    :cond_0
    move v1, p1

    .line 100
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 101
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->access$000(Landroid/view/View;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mModifiers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$Modifier;

    if-eqz v1, :cond_2

    .line 107
    invoke-interface {v1, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$Modifier;->modify(F)F

    move-result v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v1

    goto :goto_3

    :cond_2
    move v1, p1

    .line 109
    :goto_3
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 110
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->access$100(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_3
    return-void
.end method
