.class public abstract Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;
.super Ljava/lang/Object;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;
    }
.end annotation


# instance fields
.field private failedResourceId:Ljava/lang/Integer;

.field footerResourceId:Ljava/lang/Integer;

.field hasFooter:Z

.field hasHeader:Z

.field headerResourceId:Ljava/lang/Integer;

.field itemResourceId:I

.field private loadingResourceId:Ljava/lang/Integer;

.field private state:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

.field visible:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->LOADED:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    iput-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->state:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->visible:Z

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    .line 20
    iput-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasFooter:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->LOADED:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    iput-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->state:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->visible:Z

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    .line 20
    iput-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasFooter:Z

    .line 44
    iput p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->itemResourceId:I

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->loadingResourceId:Ljava/lang/Integer;

    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->failedResourceId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 57
    invoke-direct {p0, p2, p3, p4}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;-><init>(III)V

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->headerResourceId:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    return-void
.end method


# virtual methods
.method public abstract getContentItemsTotal()I
.end method

.method public final getFailedResourceId()Ljava/lang/Integer;
    .locals 1

    .line 177
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->failedResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFailedViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 302
    new-instance v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$EmptyViewHolder;

    invoke-direct {v0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final getFooterResourceId()Ljava/lang/Integer;
    .locals 1

    .line 153
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->footerResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFooterViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 256
    new-instance v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$EmptyViewHolder;

    invoke-direct {v0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final getHeaderResourceId()Ljava/lang/Integer;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->headerResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 239
    new-instance v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$EmptyViewHolder;

    invoke-direct {v0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final getItemResourceId()I
    .locals 1

    .line 161
    iget v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->itemResourceId:I

    return v0
.end method

.method public abstract getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public final getLoadingResourceId()Ljava/lang/Integer;
    .locals 1

    .line 169
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->loadingResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLoadingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 286
    new-instance v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$EmptyViewHolder;

    invoke-direct {v0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final getSectionItemsTotal()I
    .locals 2

    .line 210
    sget-object v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$1;->$SwitchMap$io$github$luizgrp$sectionedrecyclerviewadapter$Section$State:[I

    iget-object v1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->state:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :pswitch_0
    invoke-virtual {p0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getContentItemsTotal()I

    move-result v1

    .line 224
    :pswitch_1
    iget-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasFooter:Z

    add-int/2addr v1, v0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getState()Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->state:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    return-object v0
.end method

.method public final hasFooter()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasFooter:Z

    return v0
.end method

.method public final hasHeader()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->visible:Z

    return v0
.end method

.method public final onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 187
    sget-object v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$1;->$SwitchMap$io$github$luizgrp$sectionedrecyclerviewadapter$Section$State:[I

    iget-object v1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->state:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :pswitch_0
    invoke-virtual {p0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-virtual {p0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onBindFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public abstract onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method

.method public onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final setHasHeader(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->visible:Z

    return-void
.end method
