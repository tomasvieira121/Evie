.class public Lcom/aol/mobile/sdk/controls/b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/controls/b$a;,
        Lcom/aol/mobile/sdk/controls/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/controls/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aol/mobile/sdk/controls/b$a;

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/b$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    sget-object v1, Lcom/aol/mobile/sdk/controls/b$a$a;->b:Lcom/aol/mobile/sdk/controls/b$a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/b$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    sget-object v1, Lcom/aol/mobile/sdk/controls/b$a$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/controls/b$a;

    iget-object v2, v1, Lcom/aol/mobile/sdk/controls/b$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    iget-object v3, p1, Lcom/aol/mobile/sdk/controls/b$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    if-ne v2, v3, :cond_1

    if-ne v1, p1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    iput v2, v1, Lcom/aol/mobile/sdk/controls/b$a;->d:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/b;->notifyDataSetInvalidated()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/aol/mobile/sdk/controls/R$color;->tracks_header_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Lcom/aol/mobile/sdk/controls/R$color;->track_title_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Lcom/aol/mobile/sdk/controls/R$drawable;->ic_track_selected:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sget v4, Lcom/aol/mobile/sdk/controls/R$drawable;->ic_tracks_close:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v4, v0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    new-instance v5, Lcom/aol/mobile/sdk/controls/b$a;

    sget v6, Lcom/aol/mobile/sdk/controls/R$string;->audio_tracks_title:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/aol/mobile/sdk/controls/b$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;

    iget-object v13, v0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    new-instance v14, Lcom/aol/mobile/sdk/controls/b$a;

    sget-object v8, Lcom/aol/mobile/sdk/controls/b$a$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    move-object/from16 v15, p2

    invoke-virtual {v15, v6}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move-object v4, v14

    move v5, v3

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/aol/mobile/sdk/controls/b$a;-><init>(ILcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;Landroid/graphics/drawable/Drawable;Lcom/aol/mobile/sdk/controls/b$a$a;I)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    new-instance v5, Lcom/aol/mobile/sdk/controls/b$a;

    sget v6, Lcom/aol/mobile/sdk/controls/R$string;->text_tracks_title:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/aol/mobile/sdk/controls/b$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;

    iget-object v12, v0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    new-instance v13, Lcom/aol/mobile/sdk/controls/b$a;

    sget-object v8, Lcom/aol/mobile/sdk/controls/b$a$a;->b:Lcom/aol/mobile/sdk/controls/b$a$a;

    move-object/from16 v14, p3

    invoke-virtual {v14, v6}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move-object v4, v13

    move v5, v3

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/aol/mobile/sdk/controls/b$a;-><init>(ILcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;Landroid/graphics/drawable/Drawable;Lcom/aol/mobile/sdk/controls/b$a$a;I)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    new-instance v4, Lcom/aol/mobile/sdk/controls/b$a;

    sget v5, Lcom/aol/mobile/sdk/controls/R$string;->track_close_title:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v3, v1, v11}, Lcom/aol/mobile/sdk/controls/b$a;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/aol/mobile/sdk/controls/b;->notifyDataSetInvalidated()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Lcom/aol/mobile/sdk/controls/b$a;
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aol/mobile/sdk/controls/b$a;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/controls/b;->b(I)Lcom/aol/mobile/sdk/controls/b$a;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/aol/mobile/sdk/controls/R$layout;->track_item_view:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/aol/mobile/sdk/controls/R$id;->track_title:I

    invoke-static {p2, p3}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget v1, Lcom/aol/mobile/sdk/controls/R$id;->track_check_image:I

    invoke-static {p2, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/aol/mobile/sdk/controls/R$id;->track_divider:I

    invoke-static {p2, v2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aol/mobile/sdk/controls/b$b;

    invoke-direct {v3, p3, v1, v2, v0}, Lcom/aol/mobile/sdk/controls/b$b;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Lcom/aol/mobile/sdk/controls/b$1;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/aol/mobile/sdk/controls/b$b;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/controls/b;->b(I)Lcom/aol/mobile/sdk/controls/b$a;

    move-result-object p1

    iget-object v0, p3, Lcom/aol/mobile/sdk/controls/b$b;->b:Landroid/widget/ImageView;

    iget v1, p1, Lcom/aol/mobile/sdk/controls/b$a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p3, Lcom/aol/mobile/sdk/controls/b$b;->b:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/aol/mobile/sdk/controls/b$a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p3, Lcom/aol/mobile/sdk/controls/b$b;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/aol/mobile/sdk/controls/b$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/aol/mobile/sdk/controls/b$b;->a:Landroid/widget/TextView;

    iget v1, p1, Lcom/aol/mobile/sdk/controls/b$a;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p3, Lcom/aol/mobile/sdk/controls/b$b;->c:Landroid/view/View;

    iget-boolean p1, p1, Lcom/aol/mobile/sdk/controls/b$a;->g:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/controls/b;->b(I)Lcom/aol/mobile/sdk/controls/b$a;

    move-result-object p1

    iget p1, p1, Lcom/aol/mobile/sdk/controls/b$a;->d:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
