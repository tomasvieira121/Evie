.class public abstract Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;
.super Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;
.source "StatelessSection.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;-><init>()V

    .line 19
    iput p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;->itemResourceId:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 28
    invoke-direct {p0, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;-><init>(I)V

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;->headerResourceId:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/StatelessSection;->hasHeader:Z

    return-void
.end method


# virtual methods
.method public final getFailedViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getFailedViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final getLoadingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getLoadingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
