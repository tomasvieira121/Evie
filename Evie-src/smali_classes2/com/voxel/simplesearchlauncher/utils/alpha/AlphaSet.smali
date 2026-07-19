.class public Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
.super Ljava/util/Observable;
.source "AlphaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$Modifier;,
        Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;
    }
.end annotation


# instance fields
.field private mAlphaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentValue:F

.field final mImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final mModifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$Modifier;",
            ">;"
        }
    .end annotation
.end field

.field final mNormalViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mAlphaMap:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mCurrentValue:F

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mImageViews:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mModifiers:Ljava/util/Map;

    return-void
.end method

.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mAlphaMap:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mCurrentValue:F

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mImageViews:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mModifiers:Ljava/util/Map;

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mImageViews:Ljava/util/ArrayList;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_1
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->initBaseObserver()V

    return-void
.end method

.method public varargs constructor <init>([Landroid/widget/ImageView;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mAlphaMap:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mCurrentValue:F

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mImageViews:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mModifiers:Ljava/util/Map;

    .line 52
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->initBaseObserver()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->updateVisibility(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/ImageView;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->updateVisibility(Landroid/widget/ImageView;)V

    return-void
.end method

.method private initBaseObserver()V
    .locals 1

    .line 89
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$1;-><init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;)V

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private recalculateValue()V
    .locals 4

    .line 165
    iget v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mCurrentValue:F

    .line 168
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mAlphaMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 169
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mCurrentValue:F

    .line 174
    iget v1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mCurrentValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setChanged()V

    .line 176
    iget v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mCurrentValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->notifyObservers(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static updateVisibility(Landroid/view/View;)V
    .locals 3

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 122
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static updateVisibility(Landroid/widget/ImageView;)V
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 135
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 137
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addToSet(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mImageViews:Ljava/util/ArrayList;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_0
    iget p1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mCurrentValue:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->notifyObservers(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public getValueForKey(Ljava/lang/Object;F)Ljava/lang/Float;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mAlphaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    return-object p1

    .line 159
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public putModifier(Landroid/view/View;Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$Modifier;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mModifiers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->recalculateValue()V

    return-void
.end method

.method public putValue(Ljava/lang/Object;F)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mAlphaMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->recalculateValue()V

    return-void
.end method

.method public removeFromSet(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 144
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method
