.class Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;
.super Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;
.source "HideAppsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppListSection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;,
        Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$HeaderViewHolder;
    }
.end annotation


# instance fields
.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)V
    .locals 1

    .line 235
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    const p1, 0x7f0d00ad

    const v0, 0x7f0d005b

    .line 236
    invoke-direct {p0, p1, v0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;-><init>(II)V

    .line 303
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$HideAppsSettingsFragment$AppListSection$13MXngTTj5OD6SobU6OKxF-lcUU;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$HideAppsSettingsFragment$AppListSection$13MXngTTj5OD6SobU6OKxF-lcUU;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;Landroid/view/View;)V
    .locals 3

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 309
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->access$200(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;

    if-eqz v1, :cond_1

    .line 312
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p1, :cond_2

    .line 318
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getContentItemsTotal()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 241
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$HeaderViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$HeaderViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 259
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;Landroid/view/View;)V

    .line 260
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-object v0
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 246
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$HeaderViewHolder;

    .line 247
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$HeaderViewHolder;->mName:Landroid/widget/TextView;

    const v1, 0x7f120057

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$HeaderViewHolder;->mSubtext:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$HeaderViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    return-void
.end method

.method public onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 268
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 269
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;

    .line 272
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;->mLabel:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;->mApplicationIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 276
    iget-object v0, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    iget p2, p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    invoke-static {v0, v1, p2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p2

    .line 277
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$AppListSection$ItemViewHolder;->mApplicationIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method
