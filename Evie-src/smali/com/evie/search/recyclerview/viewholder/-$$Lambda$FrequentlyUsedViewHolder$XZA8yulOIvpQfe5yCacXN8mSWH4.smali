.class public final synthetic Lcom/evie/search/recyclerview/viewholder/-$$Lambda$FrequentlyUsedViewHolder$XZA8yulOIvpQfe5yCacXN8mSWH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$FrequentlyUsedViewHolder$XZA8yulOIvpQfe5yCacXN8mSWH4;->f$0:Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    iput p2, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$FrequentlyUsedViewHolder$XZA8yulOIvpQfe5yCacXN8mSWH4;->f$1:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$FrequentlyUsedViewHolder$XZA8yulOIvpQfe5yCacXN8mSWH4;->f$0:Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    iget v1, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$FrequentlyUsedViewHolder$XZA8yulOIvpQfe5yCacXN8mSWH4;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->lambda$bindItems$1(Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
