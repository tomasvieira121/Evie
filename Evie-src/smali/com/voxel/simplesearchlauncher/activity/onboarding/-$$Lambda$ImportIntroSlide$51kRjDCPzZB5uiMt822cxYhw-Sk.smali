.class public final synthetic Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/Button;

.field private final synthetic f$1:Landroid/widget/Button;

.field private final synthetic f$2:Lcom/voxel/simplesearchlauncher/importer/ImportData;

.field private final synthetic f$3:Landroid/app/Activity;

.field private final synthetic f$4:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Landroid/widget/Button;Lcom/voxel/simplesearchlauncher/importer/ImportData;Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$0:Landroid/widget/Button;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$2:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$3:Landroid/app/Activity;

    iput-object p5, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$4:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$2:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$3:Landroid/app/Activity;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;->f$4:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;->lambda$new$1(Landroid/widget/Button;Landroid/widget/Button;Lcom/voxel/simplesearchlauncher/importer/ImportData;Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;Landroid/view/View;)V

    return-void
.end method
