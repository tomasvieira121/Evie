.class public Lcom/evie/jigsaw/components/navigation/BackComponent;
.super Lcom/evie/jigsaw/components/base/AbstractComponent;
.source "BackComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/navigation/BackComponent$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/base/AbstractComponent<",
        "Lcom/evie/jigsaw/components/navigation/BackComponent$Holder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LISTENER:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/evie/jigsaw/listeners/FinishingOnClickListener;

    invoke-direct {v0}, Lcom/evie/jigsaw/listeners/FinishingOnClickListener;-><init>()V

    sput-object v0, Lcom/evie/jigsaw/components/navigation/BackComponent;->LISTENER:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/evie/jigsaw/components/navigation/BackComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/navigation/BackComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/navigation/BackComponent$Holder;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/evie/jigsaw/components/navigation/BackComponent$Holder;)V
    .locals 0

    .line 16
    iget-object p1, p2, Lcom/evie/jigsaw/components/navigation/BackComponent$Holder;->itemView:Landroid/view/View;

    sget-object p2, Lcom/evie/jigsaw/components/navigation/BackComponent;->LISTENER:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
