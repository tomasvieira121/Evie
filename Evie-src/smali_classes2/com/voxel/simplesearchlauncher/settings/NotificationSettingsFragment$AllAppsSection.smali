.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;
.super Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;
.source "NotificationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllAppsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    .line 656
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;IILjava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$onBindHeaderViewHolder$0(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 668
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setAppDefaultEnabled(Z)V

    .line 669
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;->mAppInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 670
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v0

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->clearAppEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$200(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 661
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;->onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 663
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;

    .line 664
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 665
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    .line 666
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isAppDefaultEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 667
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$AllAppsSection$LJ4hKZKg4FNHJe_fXQASjmeKWJk;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$AllAppsSection$LJ4hKZKg4FNHJe_fXQASjmeKWJk;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
