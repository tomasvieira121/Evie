.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;
.super Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;
.source "NotificationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfigSection"
.end annotation


# instance fields
.field mConfigViewHolder:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)V
    .locals 1

    .line 497
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    const p1, 0x7f0d00aa

    const v0, 0x7f0d00a8

    .line 499
    invoke-direct {p0, p1, v0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;-><init>(II)V

    return-void
.end method

.method public static synthetic lambda$onBindHeaderViewHolder$0(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;Landroid/view/View;)V
    .locals 8

    .line 561
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 562
    invoke-static {}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->values()[Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 563
    new-instance v5, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->hashCode()I

    move-result v6

    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->getIcon()I

    move-result v7

    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->getLabel()I

    move-result v4

    invoke-direct {v5, v6, v7, v4, v2}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    :cond_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->COUNT:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const v0, 0x7f120046

    const v1, 0x7f0d0045

    .line 568
    invoke-static {v0, p1, p2, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->newInstance(IILjava/util/List;I)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    move-result-object p1

    const/16 p2, 0x67

    const/4 v0, 0x0

    .line 569
    invoke-virtual {p1, v0, p2}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 570
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentItemsTotal()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 503
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->mConfigViewHolder:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;

    .line 504
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->mConfigViewHolder:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;

    return-object p1
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 581
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 508
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 511
    :goto_0
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 512
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    if-nez v2, :cond_0

    goto :goto_2

    .line 516
    :cond_0
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 517
    invoke-virtual {v2, v3}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setAppInfo(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)V

    .line 518
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    .line 519
    invoke-virtual {v2, v3}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setBadgeCount(I)V

    goto :goto_1

    .line 521
    :cond_1
    invoke-virtual {v2, v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setBadgeCount(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_2
    :goto_2
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection$1;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;)V

    .line 550
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mSizeSeek:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->setEnabled(Z)V

    .line 551
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mSizeSeek:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f1200d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 552
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mSizeSeek:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMin(I)V

    .line 553
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mSizeSeek:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 554
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mSizeSeek:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getBadgeScale()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 555
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mSizeSeek:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 557
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mBadgeStyle:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f120046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 558
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getBadgeStyle()Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    move-result-object v0

    .line 559
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mBadgeStyle:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->getLabel()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 560
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$ConfigSection$7VloPtA93QS55dJWLT18Y1DQIwM;

    invoke-direct {v1, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$ConfigSection$7VloPtA93QS55dJWLT18Y1DQIwM;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
