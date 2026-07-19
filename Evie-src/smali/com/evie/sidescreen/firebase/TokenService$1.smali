.class Lcom/evie/sidescreen/firebase/TokenService$1;
.super Ljava/lang/Object;
.source "TokenService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/firebase/TokenService;->lambda$registerFirebaseToken$0(ILjava/lang/String;Lcom/evie/common/data/Lce;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/firebase/TokenService;

.field final synthetic val$attempt:I

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/firebase/TokenService;Ljava/lang/String;I)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/evie/sidescreen/firebase/TokenService$1;->this$0:Lcom/evie/sidescreen/firebase/TokenService;

    iput-object p2, p0, Lcom/evie/sidescreen/firebase/TokenService$1;->val$token:Ljava/lang/String;

    iput p3, p0, Lcom/evie/sidescreen/firebase/TokenService$1;->val$attempt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/evie/sidescreen/firebase/TokenService$1;->this$0:Lcom/evie/sidescreen/firebase/TokenService;

    iget-object v1, p0, Lcom/evie/sidescreen/firebase/TokenService$1;->val$token:Ljava/lang/String;

    iget v2, p0, Lcom/evie/sidescreen/firebase/TokenService$1;->val$attempt:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/evie/sidescreen/firebase/TokenService;->access$000(Lcom/evie/sidescreen/firebase/TokenService;Ljava/lang/String;I)V

    return-void
.end method
