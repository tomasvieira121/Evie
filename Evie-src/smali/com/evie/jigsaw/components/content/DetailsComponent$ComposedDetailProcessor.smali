.class final Lcom/evie/jigsaw/components/content/DetailsComponent$ComposedDetailProcessor;
.super Ljava/lang/Object;
.source "DetailsComponent.java"

# interfaces
.implements Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComposedDetailProcessor"
.end annotation


# instance fields
.field private final processors:[Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;


# direct methods
.method public varargs constructor <init>([Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$ComposedDetailProcessor;->processors:[Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    return-void
.end method


# virtual methods
.method public process(Landroid/content/Context;Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/jigsaw/components/content/DetailsComponent;)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$ComposedDetailProcessor;->processors:[Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 192
    invoke-interface {v3, p1, p2, p3}, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;->process(Landroid/content/Context;Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/jigsaw/components/content/DetailsComponent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
