.class public Lcom/voxel/recyclerview/widget/SpringOverScroller;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# static fields
.field private static final COASTING_CONFIG:Lcom/facebook/rebound/SpringConfig;

.field private static final RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field private isCoastingX:Z

.field private isCoastingY:Z

.field private final mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field private final mSpringX:Lcom/facebook/rebound/Spring;

.field private final mSpringY:Lcom/facebook/rebound/Spring;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 30
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->COASTING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    .line 31
    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    const-wide v1, 0x4072c00000000000L    # 300.0

    const-wide v3, 0x4046800000000000L    # 45.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    sput-object v0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->isCoastingX:Z

    .line 27
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->isCoastingY:Z

    .line 35
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 36
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 37
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    .line 39
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 40
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    const-wide v3, 0x4065e00000000000L    # 175.0

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 42
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 43
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    .line 45
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 46
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 144
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public fling(IIFF)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/voxel/recyclerview/widget/SpringOverScroller;->COASTING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    .line 125
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    int-to-double v1, p1

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    move-result-object p1

    float-to-double v0, p3

    .line 127
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->isCoastingX:Z

    .line 129
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    sget-object v0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->COASTING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    .line 130
    invoke-virtual {p3, v0}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object p3

    int-to-double v0, p2

    .line 131
    invoke-virtual {p3, v0, v1}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    move-result-object p2

    float-to-double p3, p4

    .line 132
    invoke-virtual {p2, p3, p4}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    .line 133
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->isCoastingY:Z

    return-void
.end method

.method public final getCurrX()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final getCurrY()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isCoastingY()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->isCoastingY:Z

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    int-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(DZ)Lcom/facebook/rebound/Spring;

    .line 99
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    int-to-double v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(DZ)Lcom/facebook/rebound/Spring;

    const/4 v0, 0x1

    if-gt p1, p4, :cond_5

    if-ge p1, p3, :cond_0

    goto :goto_2

    :cond_0
    if-gt p2, p6, :cond_2

    if-ge p2, p5, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    if-le p2, p6, :cond_3

    .line 112
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    int-to-double p2, p6

    invoke-virtual {p1, p2, p3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_1

    :cond_3
    if-ge p2, p5, :cond_4

    .line 114
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    int-to-double p2, p5

    invoke-virtual {p1, p2, p3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 116
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    sget-object p2, Lcom/voxel/recyclerview/widget/SpringOverScroller;->RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 117
    iput-boolean v3, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->isCoastingY:Z

    return v0

    :cond_5
    :goto_2
    if-le p1, p4, :cond_6

    .line 102
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    int-to-double p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_3

    :cond_6
    if-ge p1, p3, :cond_7

    .line 104
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    int-to-double p2, p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 106
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    sget-object p2, Lcom/voxel/recyclerview/widget/SpringOverScroller;->RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 107
    iput-boolean v3, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->isCoastingX:Z

    return v0
.end method

.method public startScroll(IIII)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/voxel/recyclerview/widget/SpringOverScroller;->RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 92
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/voxel/recyclerview/widget/SpringOverScroller;->RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 93
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringX:Lcom/facebook/rebound/Spring;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    move-result-object p1

    int-to-double v0, p3

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 94
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/SpringOverScroller;->mSpringY:Lcom/facebook/rebound/Spring;

    int-to-double p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    move-result-object p1

    int-to-double p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method
