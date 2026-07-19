.class public abstract Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;
.super Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewCardFragment.java"

# interfaces
.implements Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/voxel/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;


# direct methods
.method protected constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isItemInBackground(I)Z
.end method
