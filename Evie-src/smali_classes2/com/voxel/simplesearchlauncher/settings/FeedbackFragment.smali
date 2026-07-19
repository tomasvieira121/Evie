.class public Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;
.super Landroidx/fragment/app/Fragment;
.source "FeedbackFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;Landroid/view/View;)V
    .locals 2

    .line 36
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "https://www.reddit.com/r/EvieLauncher/"

    .line 40
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 41
    instance-of v1, v0, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;Landroid/view/View;)V
    .locals 3

    .line 55
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    instance-of v1, v0, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 66
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    instance-of v1, v0, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    if-eqz v1, :cond_1

    .line 69
    check-cast v0, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 75
    :goto_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string v0, "ev_settings_play_store_review"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00a2

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 32
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v0, 0x7f0a0173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v1, 0x7f0a0214

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FeedbackFragment$dwIKanqFyyVyYIGLqQ4GG7kr-1Y;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FeedbackFragment$dwIKanqFyyVyYIGLqQ4GG7kr-1Y;-><init>(Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f120096

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f120095

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FeedbackFragment$T5VUPyxHa85fV7klGic0rE6u2dk;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FeedbackFragment$T5VUPyxHa85fV7klGic0rE6u2dk;-><init>(Lcom/voxel/simplesearchlauncher/settings/FeedbackFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const p2, 0x7f1200bb

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f1200bc

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
