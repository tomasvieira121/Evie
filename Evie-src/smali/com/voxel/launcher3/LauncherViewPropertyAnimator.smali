.class public Lcom/voxel/launcher3/LauncherViewPropertyAnimator;
.super Landroid/animation/Animator;
.source "LauncherViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;
    }
.end annotation


# instance fields
.field mAlpha:F

.field mDuration:J

.field mFirstFrameHelper:Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPropertiesToSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;",
            ">;"
        }
    .end annotation
.end field

.field mRotationY:F

.field mRunning:Z

.field mScaleX:F

.field mScaleY:F

.field mStartDelay:J

.field mTarget:Landroid/view/View;

.field mTranslationX:F

.field mTranslationY:F

.field mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 43
    const-class v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    .line 61
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public alpha(F)Lcom/voxel/launcher3/LauncherViewPropertyAnimator;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 264
    iput p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mAlpha:F

    return-object p0
.end method

.method public cancel()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mDuration:J

    return-wide v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 101
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 110
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 119
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mFirstFrameHelper:Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 131
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mRunning:Z

    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scaleX(F)Lcom/voxel/launcher3/LauncherViewPropertyAnimator;
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 246
    iput p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mScaleX:F

    return-object p0
.end method

.method public scaleY(F)Lcom/voxel/launcher3/LauncherViewPropertyAnimator;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 252
    iput p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mScaleY:F

    return-object p0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 159
    iput-wide p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 166
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setStartDelay(J)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 172
    iput-wide p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mStartDelay:J

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 1

    .line 177
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setupEndValues()V
    .locals 0

    return-void
.end method

.method public setupStartValues()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    .line 195
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mFirstFrameHelper:Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;

    .line 197
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mScaleX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mRotationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mScaleY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 227
    :cond_9
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 228
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 229
    invoke-static {p0}, Lcom/voxel/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    return-void
.end method

.method public translationY(F)Lcom/voxel/launcher3/LauncherViewPropertyAnimator;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 240
    iput p1, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mTranslationY:F

    return-object p0
.end method

.method public withLayer()Lcom/voxel/launcher3/LauncherViewPropertyAnimator;
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
