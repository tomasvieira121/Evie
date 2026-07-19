.class Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;
.super Ljava/lang/Object;
.source "DialogComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DialogComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogOnClickListener"
.end annotation


# instance fields
.field private final delegate:Landroid/view/View$OnClickListener;

.field private final viewToReturn:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;->viewToReturn:Landroid/view/View;

    iput-object p2, p0, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;->delegate:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;->delegate:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DialogComponent$DialogOnClickListener;->viewToReturn:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
