.class Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;
.super Ljava/lang/Object;
.source "ImportSlide.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->makeView(Landroid/content/Context;I)Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field preDrawTimes:I

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

.field final synthetic val$mockLauncher:Landroid/view/View;

.field final synthetic val$viewHolder:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;Landroid/view/View;Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->val$mockLauncher:Landroid/view/View;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->val$viewHolder:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 416
    iput p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->preDrawTimes:I

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->val$mockLauncher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 423
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->val$mockLauncher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 424
    iget v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->preDrawTimes:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->preDrawTimes:I

    .line 426
    iget v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->preDrawTimes:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 427
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$900(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->val$mockLauncher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    iget v3, v3, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mScale:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    iget v4, v4, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mScale:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 433
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 434
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->val$mockLauncher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 435
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$1000(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->val$mockLauncher:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 437
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;->val$viewHolder:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;->mockLauncher:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return v1
.end method
