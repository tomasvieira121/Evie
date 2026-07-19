.class public Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView_ViewBinding;
.super Ljava/lang/Object;
.source "NotificationGroupView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    const-string v0, "field \'mHeaderCount\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01c0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mHeaderCount:Landroid/widget/TextView;

    const-string v0, "field \'mItemView\'"

    .line 27
    const-class v1, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    const v2, 0x7f0a0199

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    const-string v0, "field \'mFooter\'"

    .line 28
    const-class v1, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    const v2, 0x7f0a0127

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    const-string v0, "field \'mIconView\'"

    const v1, 0x7f0a0201

    .line 29
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mIconView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    .line 39
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mHeaderCount:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    .line 41
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    .line 42
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mIconView:Landroid/view/View;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
