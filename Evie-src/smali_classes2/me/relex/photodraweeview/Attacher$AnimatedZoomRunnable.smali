.class Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "Attacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/photodraweeview/Attacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lme/relex/photodraweeview/Attacher;


# direct methods
.method public constructor <init>(Lme/relex/photodraweeview/Attacher;FFFF)V
    .locals 0

    .line 441
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput p4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mFocalX:F

    .line 443
    iput p5, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mFocalY:F

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mStartTime:J

    .line 445
    iput p2, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 446
    iput p3, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method

.method private interpolate()F
    .locals 4

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v2}, Lme/relex/photodraweeview/Attacher;->access$200(Lme/relex/photodraweeview/Attacher;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    .line 469
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 470
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v1}, Lme/relex/photodraweeview/Attacher;->access$300(Lme/relex/photodraweeview/Attacher;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 451
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->interpolate()F

    move-result v1

    .line 457
    iget v2, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mZoomStart:F

    iget v3, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mZoomEnd:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    .line 458
    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v3}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    .line 460
    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    iget v4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mFocalX:F

    iget v5, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v3, v2, v4, v5}, Lme/relex/photodraweeview/Attacher;->onScale(FFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 463
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v1, v0, p0}, Lme/relex/photodraweeview/Attacher;->access$100(Lme/relex/photodraweeview/Attacher;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
