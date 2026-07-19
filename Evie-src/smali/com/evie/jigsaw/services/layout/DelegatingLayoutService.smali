.class public final Lcom/evie/jigsaw/services/layout/DelegatingLayoutService;
.super Ljava/lang/Object;
.source "DelegatingLayoutService.java"

# interfaces
.implements Lcom/evie/jigsaw/services/layout/LayoutService;


# instance fields
.field private final services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/services/layout/LayoutService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/services/layout/LayoutService;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/services/layout/DelegatingLayoutService;->services:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public resolve(Landroid/net/Uri;)Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/evie/jigsaw/services/layout/DelegatingLayoutService;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/services/layout/LayoutService;

    .line 22
    invoke-interface {v1, p1}, Lcom/evie/jigsaw/services/layout/LayoutService;->resolve(Landroid/net/Uri;)Lretrofit2/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
