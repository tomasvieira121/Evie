.class public Lcom/voxel/launcher3/anim/PropertyListBuilder;
.super Ljava/lang/Object;
.source "PropertyListBuilder.java"


# instance fields
.field private final mProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public build()[Landroid/animation/PropertyValuesHolder;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/voxel/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method public scale(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;
    .locals 1

    .line 39
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->scaleX(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->scaleY(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;

    move-result-object p1

    return-object p1
.end method

.method public scaleX(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/voxel/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public scaleY(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/voxel/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public translationY(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/voxel/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
