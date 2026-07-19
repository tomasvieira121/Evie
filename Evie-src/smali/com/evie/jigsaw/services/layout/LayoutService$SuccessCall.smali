.class public final Lcom/evie/jigsaw/services/layout/LayoutService$SuccessCall;
.super Lcom/evie/jigsaw/services/layout/LayoutService$ConstantCall;
.source "LayoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/services/layout/LayoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuccessCall"
.end annotation


# instance fields
.field private final component:Lcom/evie/jigsaw/components/base/AbstractComponent;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/components/base/AbstractComponent;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/evie/jigsaw/services/layout/LayoutService$ConstantCall;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/services/layout/LayoutService$SuccessCall;->component:Lcom/evie/jigsaw/components/base/AbstractComponent;

    return-void
.end method


# virtual methods
.method public enqueue(Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/evie/jigsaw/services/layout/LayoutService$SuccessCall;->component:Lcom/evie/jigsaw/components/base/AbstractComponent;

    invoke-static {v0}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    return-void
.end method
