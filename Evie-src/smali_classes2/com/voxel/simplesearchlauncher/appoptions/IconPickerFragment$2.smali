.class Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$2;
.super Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;
.source "IconPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/voxel/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 143
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
