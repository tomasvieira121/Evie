.class Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;
.super Ljava/lang/Object;
.source "ImportSlide.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->onEnteringSlide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$100(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 252
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    new-instance v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$400(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$202(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;)Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$100(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$200(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$000(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$400(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->label:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f120192

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$100(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
