.class Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AppOptionsFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;

.field final synthetic val$target:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding$1;->val$target:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding$1;->val$target:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->onCloseClick()V

    return-void
.end method
