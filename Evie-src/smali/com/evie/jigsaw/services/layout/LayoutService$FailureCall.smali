.class public final Lcom/evie/jigsaw/services/layout/LayoutService$FailureCall;
.super Lcom/evie/jigsaw/services/layout/LayoutService$ConstantCall;
.source "LayoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/services/layout/LayoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FailureCall"
.end annotation


# instance fields
.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/evie/jigsaw/services/layout/LayoutService$ConstantCall;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/services/layout/LayoutService$FailureCall;->throwable:Ljava/lang/Throwable;

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

    .line 76
    iget-object v0, p0, Lcom/evie/jigsaw/services/layout/LayoutService$FailureCall;->throwable:Ljava/lang/Throwable;

    invoke-interface {p1, p0, v0}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method
