.class final Lcom/evie/jigsaw/internal/Library$7;
.super Lcom/evie/jigsaw/internal/Library$ViewHolderFactory;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/internal/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/evie/jigsaw/internal/Library$ViewHolderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 124
    new-instance v0, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;

    invoke-direct {v0, p1}, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
