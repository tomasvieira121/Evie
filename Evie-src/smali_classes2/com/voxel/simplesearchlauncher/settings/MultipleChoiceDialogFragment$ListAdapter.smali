.class Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MultipleChoiceDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final mResourceId:I

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    .line 126
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 127
    iput p3, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 166
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 137
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 138
    iget v1, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;->mResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    .line 143
    iget v1, p3, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->labelResId:I

    const v2, 0x7f0a017c

    .line 144
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 146
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget v1, p3, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->iconResId:I

    if-eqz v1, :cond_1

    const v1, 0x7f0a0158

    .line 149
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 150
    iget v2, p3, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->iconResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :cond_1
    iget v1, p3, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->subLabelResId:I

    if-eqz v1, :cond_2

    const v1, 0x7f0a017d

    .line 154
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    iget p3, p3, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->subLabelResId:I

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const p3, 0x7f0a0213

    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 160
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;)I

    move-result v1

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object p2
.end method
