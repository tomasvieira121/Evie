.class Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseLockMethodDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockMethodDialogAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;",
            ">;)V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;

    const/4 p1, 0x0

    .line 218
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 246
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;

    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 228
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0047

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;

    if-eqz p1, :cond_1

    const p3, 0x7f0a00da

    .line 235
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a00d9

    .line 236
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 238
    iget v1, p1, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;->methodName:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget p1, p1, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;->methodDescription:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-object p2
.end method
