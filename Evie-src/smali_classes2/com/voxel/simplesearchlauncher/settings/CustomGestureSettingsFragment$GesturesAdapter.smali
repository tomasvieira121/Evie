.class Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomGestureSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;-><init>(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;Lcom/voxel/simplesearchlauncher/gestures/GestureType;Landroid/view/View;)V
    .locals 4

    .line 122
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 126
    :cond_0
    const-class p2, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;->newInstance(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f010015

    const v3, 0x7f010012

    .line 129
    invoke-virtual {v1, v3, v2, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    const v2, 0x7f0a00ae

    .line 130
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 131
    iget p1, p1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->titleResId:I

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;

    .line 132
    invoke-virtual {v1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 133
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 139
    invoke-static {}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->values()[Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 70
    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;->onBindViewHolder(Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;I)V
    .locals 6

    .line 84
    invoke-static {}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->values()[Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    move-result-object v0

    aget-object p2, v0, p2

    .line 85
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    iget v1, p2, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->titleResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    move-result-object v0

    .line 88
    iget v1, v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->titleResId:I

    .line 90
    sget-object v2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->LAUNCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {v2, v0}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getIntentForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->NONE:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 97
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setIntentForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Landroid/content/Intent;)V

    .line 98
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->NONE:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 104
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setIntentForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Landroid/content/Intent;)V

    .line 105
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120156

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :goto_0
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$CustomGestureSettingsFragment$GesturesAdapter$qDfv6Xs62KY2tdEZGNM_5tL5xIM;

    invoke-direct {v0, p0, p2}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$CustomGestureSettingsFragment$GesturesAdapter$qDfv6Xs62KY2tdEZGNM_5tL5xIM;-><init>(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;Lcom/voxel/simplesearchlauncher/gestures/GestureType;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment$GesturesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0d00b2

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2
.end method
