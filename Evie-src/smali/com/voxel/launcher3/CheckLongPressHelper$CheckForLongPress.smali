.class Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/CheckLongPressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/CheckLongPressHelper;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/CheckLongPressHelper;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-static {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->access$000(Lcom/voxel/launcher3/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-static {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->access$000(Lcom/voxel/launcher3/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/voxel/launcher3/CheckLongPressHelper;

    .line 29
    invoke-static {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->access$100(Lcom/voxel/launcher3/CheckLongPressHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-static {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->access$000(Lcom/voxel/launcher3/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-static {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->access$000(Lcom/voxel/launcher3/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 32
    iget-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/voxel/launcher3/CheckLongPressHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/voxel/launcher3/CheckLongPressHelper;->access$102(Lcom/voxel/launcher3/CheckLongPressHelper;Z)Z

    :cond_0
    return-void
.end method
