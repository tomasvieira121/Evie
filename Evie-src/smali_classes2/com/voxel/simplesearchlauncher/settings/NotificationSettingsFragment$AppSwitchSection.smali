.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;
.super Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;
.source "NotificationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppSwitchSection"
.end annotation


# instance fields
.field mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSectionDescription:I

.field mSectionTitle:I

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    const p1, 0x7f0d00ad

    const v0, 0x7f0d00a8

    .line 596
    invoke-direct {p0, p1, v0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;-><init>(II)V

    .line 598
    iput p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->mSectionTitle:I

    .line 599
    iput p3, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->mSectionDescription:I

    .line 600
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->mAppInfos:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$0(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 644
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p1

    .line 645
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p2, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->setEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$1(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 648
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-virtual {p2, p1, p3}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->setEnabled(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getContentItemsTotal()I
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->mAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 610
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 623
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 615
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;

    .line 616
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mName:Landroid/widget/TextView;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->mSectionTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 617
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mSubtext:Landroid/widget/TextView;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->mSectionDescription:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 618
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    return-void
.end method

.method public onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 629
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;

    .line 630
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->mAppInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 631
    iget-object v0, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    .line 632
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isAppWorking(Ljava/lang/String;)Z

    move-result v1

    .line 634
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 635
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 638
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mLabel:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 640
    iget-object v1, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    iget p2, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    invoke-static {v1, v2, p2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p2

    .line 641
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 643
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$AppSwitchSection$coJ0OUtkFmW7p4r0vs54hDRwKBU;

    invoke-direct {p2, p0, p1, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$AppSwitchSection$coJ0OUtkFmW7p4r0vs54hDRwKBU;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;Ljava/lang/String;)V

    .line 647
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$AppSwitchSection$Ov6KTOM4OE5MSJx8MtUSJDgH6qU;

    invoke-direct {v1, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$AppSwitchSection$Ov6KTOM4OE5MSJx8MtUSJDgH6qU;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 649
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    return-void
.end method
