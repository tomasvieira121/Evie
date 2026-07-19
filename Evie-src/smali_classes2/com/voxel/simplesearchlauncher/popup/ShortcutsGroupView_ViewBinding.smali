.class public Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView_ViewBinding;
.super Ljava/lang/Object;
.source "ShortcutsGroupView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    const-string v0, "field \'mShortcutsLayout\'"

    .line 26
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a00c1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    .line 36
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
