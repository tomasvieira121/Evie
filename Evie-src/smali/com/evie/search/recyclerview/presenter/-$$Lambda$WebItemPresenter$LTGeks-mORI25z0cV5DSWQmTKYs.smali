.class public final synthetic Lcom/evie/search/recyclerview/presenter/-$$Lambda$WebItemPresenter$LTGeks-mORI25z0cV5DSWQmTKYs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/evie/common/services/links/LinkCallback;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/recyclerview/presenter/WebItemPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/-$$Lambda$WebItemPresenter$LTGeks-mORI25z0cV5DSWQmTKYs;->f$0:Lcom/evie/search/recyclerview/presenter/WebItemPresenter;

    return-void
.end method


# virtual methods
.method public final onResolved(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/-$$Lambda$WebItemPresenter$LTGeks-mORI25z0cV5DSWQmTKYs;->f$0:Lcom/evie/search/recyclerview/presenter/WebItemPresenter;

    invoke-static {v0, p1}, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->lambda$onItemClick$0(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
