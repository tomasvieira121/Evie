.class Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectGestureActionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;)V
    .locals 1

    .line 123
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->mActions:Ljava/util/List;

    .line 124
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->mActions:Ljava/util/List;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->values()[Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->mActions:Ljava/util/List;

    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_WRITE_SETTINGS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;Landroid/view/View;)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;)Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->newInstance(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 149
    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 150
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "lock_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;Landroid/view/View;)V
    .locals 3

    .line 158
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;-><init>()V

    .line 164
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 165
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010015

    const v2, 0x7f010012

    .line 166
    invoke-virtual {v0, v2, v1, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x7f0a00ae

    .line 167
    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 168
    iget p1, p1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->titleResId:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 169
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 170
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$2(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;)Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;)Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    .line 178
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;)Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;)Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setIntentForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Landroid/content/Intent;)V

    .line 179
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 120
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->onBindViewHolder(Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;I)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 143
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$1;->$SwitchMap$com$voxel$simplesearchlauncher$gestures$action$CustomGestureAction:[I

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 174
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    iget v1, p2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->titleResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectGestureActionFragment$ActionsAdapter$IVJeR97ETQM27crPJLxQmYEXPRY;

    invoke-direct {v0, p0, p2}, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectGestureActionFragment$ActionsAdapter$IVJeR97ETQM27crPJLxQmYEXPRY;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    iget v1, p2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->titleResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectGestureActionFragment$ActionsAdapter$LBO6X-F-dE7PdixPv0RS3zTEnzM;

    invoke-direct {v0, p0, p2}, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectGestureActionFragment$ActionsAdapter$LBO6X-F-dE7PdixPv0RS3zTEnzM;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f120159

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectGestureActionFragment$ActionsAdapter$a1UCyzx60wOLGQr992RpSSUonME;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectGestureActionFragment$ActionsAdapter$a1UCyzx60wOLGQr992RpSSUonME;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$ActionsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;
    .locals 2

    .line 131
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    .line 134
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2
.end method
