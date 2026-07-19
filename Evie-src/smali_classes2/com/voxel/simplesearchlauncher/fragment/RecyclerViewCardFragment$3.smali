.class Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$3;
.super Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->showRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->markBackgroundDirty()V

    .line 155
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->recalculateBackgroundHeight()V

    return-void
.end method
