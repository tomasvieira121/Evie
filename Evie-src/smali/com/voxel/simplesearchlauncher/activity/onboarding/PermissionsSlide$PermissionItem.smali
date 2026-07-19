.class Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;
.super Ljava/lang/Object;
.source "PermissionsSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionItem"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field hasFailedGrant:Z

.field itemView:Landroid/view/ViewGroup;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;

.field tipText:Landroid/widget/TextView;

.field tipView:Landroid/view/View;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;Landroid/view/View;III)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->hasFailedGrant:Z

    .line 64
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->itemView:Landroid/view/ViewGroup;

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->itemView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01e0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->title:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->itemView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->text:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->itemView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->checkBox:Landroid/widget/CheckBox;

    .line 69
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->itemView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01dd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->tipView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->tipView:Landroid/view/View;

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->tipText:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->text:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 76
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    .line 77
    new-array p4, p4, [Ljava/lang/Object;

    aput-object p3, p4, p1

    const p1, 0x7f1201c8

    invoke-virtual {p2, p1, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->tipText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->checkBox:Landroid/widget/CheckBox;

    new-instance p2, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$PermissionsSlide$PermissionItem$D9h-NQ5hjr5ryGqmynXGuPLgkB0;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$PermissionsSlide$PermissionItem$D9h-NQ5hjr5ryGqmynXGuPLgkB0;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->updateTipText(Z)V

    .line 82
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->access$000(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;)V

    return-void
.end method

.method private updateTipText(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->hasFailedGrant:Z

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->tipView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->tipView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
