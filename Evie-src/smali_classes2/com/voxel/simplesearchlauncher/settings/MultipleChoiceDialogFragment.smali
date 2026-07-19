.class public Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MultipleChoiceDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;,
        Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;
    }
.end annotation


# instance fields
.field private mSelectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->mSelectedIndex:I

    return p0
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 106
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "ID"

    .line 107
    invoke-virtual {p1, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->dismiss()V

    .line 109
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getTargetRequestCode()I

    move-result p3

    const/4 p4, -0x1

    invoke-virtual {p2, p3, p4, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 115
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static newInstance(IILjava/util/List;)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;"
        }
    .end annotation

    const v0, 0x7f0d0049

    .line 47
    invoke-static {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->newInstance(IILjava/util/List;I)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(IILjava/util/List;I)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;",
            ">;I)",
            "Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    .line 62
    iget v7, v6, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget v7, v6, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->iconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget v7, v6, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->labelResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget v6, v6, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->subLabelResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "TITLE"

    .line 68
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "SELECTED"

    .line 69
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "IDS"

    .line 70
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "ICONS"

    .line 71
    invoke-virtual {v1, p0, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "LABELS"

    .line 72
    invoke-virtual {v1, p0, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "SUB_LABELS"

    .line 73
    invoke-virtual {v1, p0, v5}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "ITEM_RES_ID"

    .line 74
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    .line 83
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SELECTED"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->mSelectedIndex:I

    .line 87
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ITEM_RES_ID"

    const v3, 0x7f0d0049

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 88
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "IDS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ICONS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 90
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "LABELS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 91
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "SUB_LABELS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 92
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    const/4 v7, 0x0

    .line 95
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 96
    new-instance v8, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance v2, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1, v6}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;-><init>(Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x7f0a0180

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 104
    new-instance v3, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$MultipleChoiceDialogFragment$1oeXaKwqxmwLwA-lDxGSOdtQI9Y;

    invoke-direct {v3, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$MultipleChoiceDialogFragment$1oeXaKwqxmwLwA-lDxGSOdtQI9Y;-><init>(Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "TITLE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1200de

    sget-object v2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$MultipleChoiceDialogFragment$tYpgJErBCVO1DQhlyNFjxSZadys;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$MultipleChoiceDialogFragment$tYpgJErBCVO1DQhlyNFjxSZadys;

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
