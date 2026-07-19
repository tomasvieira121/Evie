.class Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;
.super Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsSection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;,
        Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;
    }
.end annotation


# instance fields
.field mHeaderResId:I

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;",
            ">;)V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    const/4 p1, 0x0

    const v0, 0x7f0d00b4

    const v1, 0x7f0d00b5

    .line 200
    invoke-direct {p0, v0, v1, p1, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;-><init>(IIII)V

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->mItems:Ljava/util/List;

    .line 201
    iput p2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->mHeaderResId:I

    .line 202
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->mItems:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$0(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Landroid/view/View;)V
    .locals 2

    .line 254
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "permission"

    const/4 v1, 0x1

    .line 255
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$1(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 266
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    const-class v0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$10(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 321
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;-><init>()V

    .line 322
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {v0, p2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$11(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 328
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;-><init>()V

    .line 329
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {v0, p2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$12(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Landroid/view/View;)V
    .locals 2

    .line 335
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 336
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "https://www.evie.com/privacy.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$13(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Landroid/view/View;)V
    .locals 2

    .line 343
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->resetHome(Landroid/app/Activity;ZZ)V

    .line 345
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string v0, "ev_settings_switch_launcher"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$2(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 272
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    const-class v0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$3(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 278
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    const-class v0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$4(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 284
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    const-class v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$5(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 289
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;-><init>()V

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$6(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 295
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    const-class v0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$7(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 301
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    const-class v0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$8(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 307
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;-><init>()V

    .line 308
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {v0, p2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public static synthetic lambda$onBindItemViewHolder$9(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V
    .locals 1

    .line 314
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;-><init>()V

    .line 315
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->this$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-static {v0, p2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method


# virtual methods
.method public getContentItemsTotal()I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 212
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Landroid/view/View;)V

    return-object v0
.end method

.method public getItem(I)Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    return-object p1
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 229
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Landroid/view/View;)V

    return-object v0
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 217
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;

    .line 218
    iget v0, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->mHeaderResId:I

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->mHeaderResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 235
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;

    .line 236
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->getItem(I)Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    move-result-object v0

    .line 238
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget v2, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget v1, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->iconResId:I

    if-lez v1, :cond_0

    .line 240
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget v2, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->iconResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->getContentItemsTotal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_1

    .line 246
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->mDivider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 248
    :cond_1
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->mDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_1
    sget-object p2, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$1;->$SwitchMap$com$voxel$simplesearchlauncher$settings$SettingsFragment$SettingsItemType:[I

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->ordinal()I

    move-result v1

    aget p2, p2, v1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 342
    :pswitch_0
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$k-9H2UD87oR4UIGIJQKd57OhZ7c;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$k-9H2UD87oR4UIGIJQKd57OhZ7c;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 334
    :pswitch_1
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$YdhQNetwkwc3mpjcdtZgWU1yTG0;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$YdhQNetwkwc3mpjcdtZgWU1yTG0;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 327
    :pswitch_2
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$WJcLw86tMAXB1BZl9ajR8mpjafA;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$WJcLw86tMAXB1BZl9ajR8mpjafA;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 320
    :pswitch_3
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$m3KlLzLJb9bw4SFO_bBtVXOvvI4;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$m3KlLzLJb9bw4SFO_bBtVXOvvI4;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 313
    :pswitch_4
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$KQHW7tSY03w9eAsvgWxbFymzPe0;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$KQHW7tSY03w9eAsvgWxbFymzPe0;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 306
    :pswitch_5
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$lCP24Pp9bETkrwHQUczYkEIce2w;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$lCP24Pp9bETkrwHQUczYkEIce2w;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 300
    :pswitch_6
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$mNEXaEQieKgzf53DlKk9iUVr-vc;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$mNEXaEQieKgzf53DlKk9iUVr-vc;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 294
    :pswitch_7
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$PAat3OgY92nls-0psSdb2vbUovs;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$PAat3OgY92nls-0psSdb2vbUovs;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 288
    :pswitch_8
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$XiY0c2qgxnIeXRUgc4gIFmKaWxk;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$XiY0c2qgxnIeXRUgc4gIFmKaWxk;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 283
    :pswitch_9
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$HB2N1472itB_aixG3mY8xZ4Buj0;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$HB2N1472itB_aixG3mY8xZ4Buj0;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 277
    :pswitch_a
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$Tz3JwSpT8T_laLzwxkoM78ksvdg;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$Tz3JwSpT8T_laLzwxkoM78ksvdg;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 271
    :pswitch_b
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$xDAD9EIT78CGYaLq3Yw09EpGd-Y;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$xDAD9EIT78CGYaLq3Yw09EpGd-Y;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 265
    :pswitch_c
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$N5XCNzS4DQ4VGtEraeN2AbJ3x8k;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$N5XCNzS4DQ4VGtEraeN2AbJ3x8k;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 253
    :pswitch_d
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$vgsm0_gXVl74WzXgW2F-AeqpYm4;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$vgsm0_gXVl74WzXgW2F-AeqpYm4;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
