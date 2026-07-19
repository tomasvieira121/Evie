.class Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$1;
.super Ljava/lang/Object;
.source "ImportSlide.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;-><init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Ljava/util/List;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$importers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$1;->val$importers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$000(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$1;->val$importers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->label:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f120192

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
