.class public final synthetic Lcom/evie/sidescreen/firebase/-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/firebase/TokenService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/firebase/TokenService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/firebase/-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I;->f$0:Lcom/evie/sidescreen/firebase/TokenService;

    iput p2, p0, Lcom/evie/sidescreen/firebase/-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I;->f$1:I

    iput-object p3, p0, Lcom/evie/sidescreen/firebase/-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/evie/sidescreen/firebase/-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I;->f$0:Lcom/evie/sidescreen/firebase/TokenService;

    iget v1, p0, Lcom/evie/sidescreen/firebase/-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I;->f$1:I

    iget-object v2, p0, Lcom/evie/sidescreen/firebase/-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, v1, v2, p1}, Lcom/evie/sidescreen/firebase/TokenService;->lambda$registerFirebaseToken$0(Lcom/evie/sidescreen/firebase/TokenService;ILjava/lang/String;Lcom/evie/common/data/Lce;)V

    return-void
.end method
