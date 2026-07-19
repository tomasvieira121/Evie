.class public Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;
.super Ljava/util/Observable;
.source "CombinedFactorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;,
        Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;
    }
.end annotation


# static fields
.field public static final ADD_COMBINER:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;

.field public static final MULTIPLY_COMBINER:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;


# instance fields
.field private mFactorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mModifierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$CombinedFactorHelper$6WjGuw15km6sO_6UUnaniAt2-5c;->INSTANCE:Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$CombinedFactorHelper$6WjGuw15km6sO_6UUnaniAt2-5c;

    sput-object v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->ADD_COMBINER:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;

    .line 29
    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$CombinedFactorHelper$SVGLyEZvI3FcYOTu0eislVhG248;->INSTANCE:Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$CombinedFactorHelper$SVGLyEZvI3FcYOTu0eislVhG248;

    sput-object v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->MULTIPLY_COMBINER:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->mFactorMap:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->mModifierMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$static$0(FF)F
    .locals 0

    add-float/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$static$1(FF)F
    .locals 0

    mul-float p0, p0, p1

    return p0
.end method


# virtual methods
.method public getCombinedFactor(Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;)F
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->mFactorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->mFactorMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;

    .line 76
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->mModifierMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;

    if-nez v1, :cond_1

    .line 78
    iget v1, v4, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;->factor:F

    if-eqz v3, :cond_0

    .line 80
    iget v2, v3, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;->factor:F

    mul-float v1, v1, v2

    :cond_0
    const/4 v2, 0x1

    move v2, v1

    const/4 v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    iget v4, v4, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;->factor:F

    if-eqz v3, :cond_2

    .line 86
    iget v3, v3, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;->factor:F

    mul-float v4, v4, v3

    .line 89
    :cond_2
    invoke-interface {p1, v2, v4}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;->combine(FF)F

    move-result v2

    goto :goto_0

    :cond_3
    return v2
.end method

.method public put(Ljava/lang/Object;F)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->mFactorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;-><init>(Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$1;)V

    .line 36
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->mFactorMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    iget p1, v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;->factor:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    .line 40
    iput p2, v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;->factor:F

    .line 41
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->setChanged()V

    .line 42
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->notifyObservers()V

    :cond_1
    return-void
.end method

.method public putModifier(Ljava/lang/Object;F)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->mModifierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;-><init>(Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$1;)V

    .line 57
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->mModifierMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    iget p1, v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;->factor:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    .line 61
    iput p2, v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$FactorHolder;->factor:F

    .line 62
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->setChanged()V

    .line 63
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->notifyObservers()V

    :cond_1
    return-void
.end method
