.class final Lcom/evie/jigsaw/components/actions/AbstractActionComponent$1;
.super Ljava/lang/Object;
.source "AbstractActionComponent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)I
    .locals 0

    .line 82
    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->isInstalled()Z

    move-result p1

    .line 83
    invoke-virtual {p2}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->isInstalled()Z

    move-result p2

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    check-cast p2, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$1;->compare(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)I

    move-result p1

    return p1
.end method
