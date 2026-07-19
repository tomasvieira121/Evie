.class public Lcom/evie/jigsaw/components/content/DialogComponent;
.super Lcom/evie/jigsaw/components/base/AbstractComponent;
.source "DialogComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;,
        Lcom/evie/jigsaw/components/content/DialogComponent$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/base/AbstractComponent<",
        "Lcom/evie/jigsaw/components/content/DialogComponent$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private transient background:Landroid/graphics/drawable/Drawable;

.field private transient backgroundResource:I

.field private transient dismissListener:Landroid/view/View$OnClickListener;

.field private transient image:I

.field private transient negativeButtonListener:Landroid/view/View$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private transient negativeButtonTextResource:I

.field private transient positiveButtonListener:Landroid/view/View$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private transient positiveButtonTextResource:I

.field private subtext:Ljava/lang/String;

.field private transient subtextResource:I

.field private text:Ljava/lang/String;

.field private transient textResource:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/content/DialogComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/content/DialogComponent$Holder;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/evie/jigsaw/components/content/DialogComponent$Holder;)V
    .locals 5

    .line 60
    iget p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->image:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 61
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->image:Landroid/widget/ImageView;

    iget v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->image:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_0
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->text:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 71
    :cond_1
    iget p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->textResource:I

    if-lez p1, :cond_2

    .line 72
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->text:Landroid/widget/TextView;

    iget v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->textResource:I

    invoke-virtual {p0, p1, v2, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->bind(Landroid/widget/TextView;II)Z

    .line 75
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->subtext:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 76
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->subtext:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->subtext:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z

    goto :goto_2

    .line 78
    :cond_3
    iget p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->subtextResource:I

    if-lez p1, :cond_4

    .line 79
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->subtext:Landroid/widget/TextView;

    iget v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->subtextResource:I

    invoke-virtual {p0, p1, v2, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->bind(Landroid/widget/TextView;II)Z

    .line 82
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->positiveButtonText:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 83
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->positiveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/evie/jigsaw/components/content/DialogComponent;->bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z

    goto :goto_3

    .line 85
    :cond_5
    iget p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->positiveButtonTextResource:I

    if-lez p1, :cond_6

    .line 86
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->positiveButton:Landroid/widget/Button;

    iget v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->positiveButtonTextResource:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/evie/jigsaw/components/content/DialogComponent;->bind(Landroid/widget/TextView;II)Z

    .line 89
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->positiveButtonListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_7

    .line 90
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->positiveButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->positiveButton:Landroid/widget/Button;

    new-instance v2, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;

    iget-object v3, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->itemView:Landroid/view/View;

    iget-object v4, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->positiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v3, v4}, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_7
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->negativeButtonText:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 96
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->negativeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/evie/jigsaw/components/content/DialogComponent;->bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z

    goto :goto_4

    .line 98
    :cond_8
    iget p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->negativeButtonTextResource:I

    if-lez p1, :cond_9

    .line 99
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->negativeButton:Landroid/widget/Button;

    iget v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->negativeButtonTextResource:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/evie/jigsaw/components/content/DialogComponent;->bind(Landroid/widget/TextView;II)Z

    .line 102
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->negativeButtonListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_a

    .line 103
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->negativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->negativeButton:Landroid/widget/Button;

    new-instance v0, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;

    iget-object v2, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->negativeButtonListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v2, v3}, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_a
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->dismissListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_b

    .line 109
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->dismiss:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->dismiss:Landroid/widget/ImageView;

    new-instance v0, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;

    iget-object v1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->dismissListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_b
    iget p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->backgroundResource:I

    if-lez p1, :cond_c

    .line 115
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->content:Landroid/view/View;

    iget p2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->backgroundResource:I

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/content/DialogComponent;->bindBackground(Landroid/view/View;I)V

    goto :goto_5

    .line 117
    :cond_c
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->background:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_d

    .line 118
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->content:Landroid/view/View;

    iget-object p2, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/content/DialogComponent;->bindBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public setBackgroundResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;
    .locals 0

    .line 22
    iput p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->backgroundResource:I

    return-object p0
.end method

.method public setImage(I)Lcom/evie/jigsaw/components/content/DialogComponent;
    .locals 0

    .line 22
    iput p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->image:I

    return-object p0
.end method

.method public setPositiveButtonListener(Landroid/view/View$OnClickListener;)Lcom/evie/jigsaw/components/content/DialogComponent;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->positiveButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setPositiveButtonTextResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;
    .locals 0

    .line 22
    iput p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->positiveButtonTextResource:I

    return-object p0
.end method

.method public setSubtextResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;
    .locals 0

    .line 22
    iput p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->subtextResource:I

    return-object p0
.end method

.method public setTextResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;
    .locals 0

    .line 22
    iput p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent;->textResource:I

    return-object p0
.end method
