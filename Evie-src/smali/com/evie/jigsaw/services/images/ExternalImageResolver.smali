.class public Lcom/evie/jigsaw/services/images/ExternalImageResolver;
.super Ljava/lang/Object;
.source "ExternalImageResolver.java"

# interfaces
.implements Lcom/evie/jigsaw/services/images/ImageResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lcom/evie/jigsaw/services/images/models/Image;I)Landroid/net/Uri;
    .locals 0

    .line 14
    invoke-interface {p1, p2}, Lcom/evie/jigsaw/services/images/models/Image;->getUrl(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
