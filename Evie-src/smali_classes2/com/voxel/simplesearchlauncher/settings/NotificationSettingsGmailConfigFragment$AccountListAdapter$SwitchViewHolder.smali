.class Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotificationSettingsGmailConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchViewHolder"
.end annotation


# instance fields
.field mLabel:Landroid/widget/TextView;

.field mSubLabel:Landroid/widget/TextView;

.field mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;Landroid/view/View;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;->this$1:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;

    .line 106
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a017c

    .line 107
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const p1, 0x7f0a017d

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p1, 0x7f0a0170

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter$SwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method
