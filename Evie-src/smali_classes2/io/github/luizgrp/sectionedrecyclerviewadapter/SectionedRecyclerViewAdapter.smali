.class public Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SectionedRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$EmptyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private sectionViewTypeNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sections:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;",
            ">;"
        }
    .end annotation
.end field

.field private viewTypeCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->viewTypeCount:I

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Ljava/util/LinkedHashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addSection(Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;
    .locals 1

    .line 123
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Ljava/lang/String;Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)V

    return-object v0
.end method

.method public addSection(Ljava/lang/String;Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p2, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/HashMap;

    iget v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->viewTypeCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->viewTypeCount:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->viewTypeCount:I

    return-void
.end method

.method public getItemCount()I
    .locals 4

    .line 201
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    .line 205
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 6

    .line 225
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    .line 229
    invoke-virtual {v3}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v3}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v4

    if-lt p1, v1, :cond_3

    add-int v5, v1, v4

    add-int/lit8 v5, v5, -0x1

    if-gt p1, v5, :cond_3

    .line 236
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 238
    invoke-virtual {v3}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_1

    return v0

    .line 244
    :cond_1
    invoke-virtual {v3}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasFooter()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p1, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 250
    :cond_2
    sget-object p1, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$1;->$SwitchMap$io$github$luizgrp$sectionedrecyclerviewadapter$Section$State:[I

    invoke-virtual {v3}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getState()Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    .line 258
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    add-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_1
    add-int/lit8 v0, v0, 0x3

    return v0

    :pswitch_2
    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_3
    add-int/2addr v1, v4

    goto :goto_0

    .line 266
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid position"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSectionForPosition(I)Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;
    .locals 5

    .line 295
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    .line 299
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v3

    if-lt p1, v1, :cond_1

    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    if-gt p1, v4, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 311
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid position"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public getSectionPosition(I)I
    .locals 5

    .line 322
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    .line 326
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v3

    if-lt p1, v1, :cond_1

    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    if-gt p1, v4, :cond_1

    sub-int/2addr p1, v1

    .line 332
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasHeader()Z

    move-result v0

    sub-int/2addr p1, v0

    return p1

    :cond_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 338
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid position"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 159
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    .line 163
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v3

    if-lt p2, v1, :cond_3

    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    if-gt p2, v4, :cond_3

    .line 170
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 173
    invoke-virtual {p0, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    .line 178
    :cond_1
    invoke-virtual {v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->hasFooter()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, v4, :cond_2

    .line 181
    invoke-virtual {p0, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->onBindFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    .line 187
    :cond_2
    invoke-virtual {p0, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    invoke-virtual {p0, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionPosition(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void

    :cond_3
    add-int/2addr v1, v3

    goto :goto_0

    .line 194
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Invalid position"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 42
    iget-object v0, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    if-ge p2, v3, :cond_0

    .line 45
    iget-object v1, p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid viewType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :pswitch_0
    invoke-virtual {v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getFailedResourceId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getFailedViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'failed state\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :pswitch_1
    invoke-virtual {v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getLoadingResourceId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getLoadingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto/16 :goto_0

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'loading state\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getItemResourceId()I

    move-result v4

    invoke-virtual {v2, v4, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto/16 :goto_0

    .line 61
    :pswitch_3
    invoke-virtual {v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getFooterResourceId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getFooterViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto/16 :goto_0

    .line 64
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'footer\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :pswitch_4
    invoke-virtual {v1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getHeaderResourceId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;->getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto/16 :goto_0

    .line 53
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'header\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
