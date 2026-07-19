.class public Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderRingAnimator"
.end annotation


# static fields
.field public static sPreviewPadding:I = -0x1

.field public static sPreviewSize:I = -0x1

.field public static sPreviewVerticalOffset:I = -0x1

.field public static sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

.field public static sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAcceptAnimator:Landroid/animation/ValueAnimator;

.field private mCellLayout:Lcom/voxel/launcher3/CellLayout;

.field public mCellX:I

.field public mCellY:I

.field public mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

.field public mInnerRingSize:F

.field private mNeutralAnimator:Landroid/animation/ValueAnimator;

.field public mOuterRingSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voxel/launcher3/FolderIcon;)V
    .locals 1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    .line 275
    iput-object p2, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 280
    invoke-static {}, Lcom/voxel/launcher3/FolderIcon;->access$000()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 281
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 286
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    .line 287
    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p2

    .line 288
    iget p2, p2, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    sput p2, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    const p2, 0x7f07013e

    .line 289
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    const p2, 0x7f07013f

    .line 290
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sPreviewVerticalOffset:I

    const p2, 0x7f08014f

    .line 291
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sput-object p2, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08014e

    .line 292
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sput-object p2, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080150

    .line 293
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lcom/voxel/launcher3/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 294
    invoke-static {p1}, Lcom/voxel/launcher3/FolderIcon;->access$002(Z)Z

    goto :goto_0

    .line 282
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FolderRingAnimator loading drawables on non-UI thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$200(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)Lcom/voxel/launcher3/CellLayout;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    return-object p0
.end method

.method public static synthetic lambda$animateToAcceptState$0(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;ILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 307
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const v0, 0x3e99999a    # 0.3f

    mul-float v0, v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    int-to-float p1, p1

    mul-float v0, v0, p1

    .line 308
    iput v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    const v0, 0x3e19999a    # 0.15f

    mul-float p2, p2, v0

    add-float/2addr p2, v1

    mul-float p2, p2, p1

    .line 309
    iput p2, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    .line 310
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$animateToNaturalState$1(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;ILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 334
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    const v1, 0x3e99999a    # 0.3f

    mul-float v1, v1, p2

    add-float/2addr v1, v0

    int-to-float p1, p1

    mul-float v1, v1, p1

    .line 335
    iput v1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    const v1, 0x3e19999a    # 0.15f

    mul-float p2, p2, v1

    add-float/2addr p2, v0

    mul-float p2, p2, p1

    .line 336
    iput p2, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    .line 337
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateToAcceptState()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    .line 303
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 305
    sget v0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 306
    iget-object v1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$FolderRingAnimator$4JpntFUusrs9h6agbJAvC5ihOw4;

    invoke-direct {v2, p0, v0}, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$FolderRingAnimator$4JpntFUusrs9h6agbJAvC5ihOw4;-><init>(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$1;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$1;-><init>(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 322
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateToNaturalState()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    .line 330
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 332
    sget v0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 333
    iget-object v1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$FolderRingAnimator$qaQHcGH_Hg-yj0QWAAUWFowLmRs;

    invoke-direct {v2, p0, v0}, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$FolderRingAnimator$qaQHcGH_Hg-yj0QWAAUWFowLmRs;-><init>(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 341
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$2;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator$2;-><init>(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 352
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getInnerRingSize()F
    .locals 1

    .line 376
    iget v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    return v0
.end method

.method public getOuterRingSize()F
    .locals 1

    .line 372
    iget v0, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    return v0
.end method

.method public setCell(II)V
    .locals 0

    .line 363
    iput p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellX:I

    .line 364
    iput p2, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellY:I

    return-void
.end method

.method public setCellLayout(Lcom/voxel/launcher3/CellLayout;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    return-void
.end method
