.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection$1;
.super Ljava/lang/Object;
.source "NotificationSettingsFragment.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

.field final synthetic val$configHolder:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection$1;->this$1:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection$1;->val$configHolder:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0

    .line 527
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection$1;->val$configHolder:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;

    iget-object p3, p3, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mSizeSeek:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object p3, p3, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    if-ne p1, p3, :cond_0

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 529
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection$1;->this$1:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setBadgeScale(F)V

    .line 530
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setScaleFactor(F)V

    .line 533
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection$1;->val$configHolder:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    .line 534
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->requestLayout()V

    .line 535
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->invalidate()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method
