.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NotificationSettingsGmailConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->mAccounts:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 137
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mEnabledAccounts:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mEnabledAccounts:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mEnabledAccounts:Ljava/util/Set;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->setEnabledAccounts([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 97
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->onBindViewHolder(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;I)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mEnabledAccounts:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 133
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 135
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsGmailConfigFragment$AccountListAdapter$-2eqs2KTEYyGdqr4zPDaSgOMelY;

    invoke-direct {v0, p0, p2}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsGmailConfigFragment$AccountListAdapter$-2eqs2KTEYyGdqr4zPDaSgOMelY;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;
    .locals 2

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 125
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;Landroid/view/View;)V

    return-object p2
.end method
