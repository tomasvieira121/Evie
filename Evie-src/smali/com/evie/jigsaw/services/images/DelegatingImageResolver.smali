.class public Lcom/evie/jigsaw/services/images/DelegatingImageResolver;
.super Ljava/lang/Object;
.source "DelegatingImageResolver.java"

# interfaces
.implements Lcom/evie/jigsaw/services/images/ImageResolver;


# instance fields
.field private final mResolvers:[Lcom/evie/jigsaw/services/images/ImageResolver;


# direct methods
.method public varargs constructor <init>([Lcom/evie/jigsaw/services/images/ImageResolver;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/evie/jigsaw/services/images/DelegatingImageResolver;->mResolvers:[Lcom/evie/jigsaw/services/images/ImageResolver;

    return-void
.end method


# virtual methods
.method public resolve(Lcom/evie/jigsaw/services/images/models/Image;I)Landroid/net/Uri;
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/evie/jigsaw/services/images/DelegatingImageResolver;->mResolvers:[Lcom/evie/jigsaw/services/images/ImageResolver;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 21
    invoke-interface {v3, p1, p2}, Lcom/evie/jigsaw/services/images/ImageResolver;->resolve(Lcom/evie/jigsaw/services/images/models/Image;I)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
