.class public Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;
.source "ResetLauncherPromptFragment.java"


# static fields
.field public static final DID_IMPORT_KEY:Ljava/lang/String;

.field public static final PREFIX:Ljava/lang/String;


# instance fields
.field mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private mDidImport:Z

.field private mResetHomeActivity:Landroid/app/Activity;

.field private mResetHomeOnClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->PREFIX:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "did_import"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->DID_IMPORT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->mDidImport:Z

    .line 29
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->mResetHomeOnClose:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->mResetHomeActivity:Landroid/app/Activity;

    return-void
.end method

.method public static getInstance(Z)Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;
    .locals 3

    .line 40
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    sget-object v2, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->DID_IMPORT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic lambda$getNegativeClickListener$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$getPositiveClickListener$1(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->mResetHomeOnClose:Z

    .line 89
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->mResetHomeActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected getHeaderImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getMainText()Ljava/lang/CharSequence;
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->mDidImport:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201f6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201f8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getNegativeClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 76
    sget-object v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$ResetLauncherPromptFragment$T0t-2SQsPC5V6SXdHvYsnZP7l2o;->INSTANCE:Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$ResetLauncherPromptFragment$T0t-2SQsPC5V6SXdHvYsnZP7l2o;

    return-object v0
.end method

.method protected getNegativeText()Ljava/lang/CharSequence;
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 87
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$ResetLauncherPromptFragment$3zAOX_l-idVrXvEhBrWeqvuumMY;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$ResetLauncherPromptFragment$3zAOX_l-idVrXvEhBrWeqvuumMY;-><init>(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;)V

    return-object v0
.end method

.method protected getPositiveText()Ljava/lang/CharSequence;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 51
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->DID_IMPORT_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->mDidImport:Z

    :cond_0
    return-void
.end method

.method protected onFragmentDidClose()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->onFragmentDidClose()V

    .line 101
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->mResetHomeOnClose:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->mResetHomeActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->resetHome(Landroid/app/Activity;ZZ)V

    :cond_0
    return-void
.end method

.method public shouldCloseOnBackgroundClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
