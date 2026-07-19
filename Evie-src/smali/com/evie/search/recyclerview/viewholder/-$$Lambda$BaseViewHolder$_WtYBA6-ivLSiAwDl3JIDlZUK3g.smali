.class public final synthetic Lcom/evie/search/recyclerview/viewholder/-$$Lambda$BaseViewHolder$_WtYBA6-ivLSiAwDl3JIDlZUK3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$BaseViewHolder$_WtYBA6-ivLSiAwDl3JIDlZUK3g;->f$0:Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$BaseViewHolder$_WtYBA6-ivLSiAwDl3JIDlZUK3g;->f$0:Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;

    invoke-static {v0, p1}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->lambda$setOnLongClickListener$1(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
