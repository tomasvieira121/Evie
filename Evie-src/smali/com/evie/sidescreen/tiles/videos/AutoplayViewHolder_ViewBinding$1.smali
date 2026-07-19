.class Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding$1;
.super Ljava/lang/Object;
.source "AutoplayViewHolder_ViewBinding.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
