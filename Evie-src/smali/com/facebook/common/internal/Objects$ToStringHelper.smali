.class public final Lcom/facebook/common/internal/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/internal/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/facebook/common/internal/Objects$1;)V

    iput-object v0, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->holderHead:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    .line 199
    iget-object v0, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->holderHead:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->holderTail:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->omitNullValues:Z

    .line 206
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/common/internal/Objects$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/facebook/common/internal/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;
    .locals 2

    .line 405
    new-instance v0, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/facebook/common/internal/Objects$1;)V

    .line 406
    iget-object v1, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->holderTail:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->next:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->holderTail:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 417
    invoke-direct {p0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->addHolder()Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 418
    iput-object p2, v0, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 419
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 0

    .line 278
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 0

    .line 238
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 385
    iget-boolean v0, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->omitNullValues:Z

    const-string v1, ""

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    iget-object v3, p0, Lcom/facebook/common/internal/Objects$ToStringHelper;->holderHead:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    iget-object v3, v3, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->next:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    :goto_0
    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    .line 391
    iget-object v4, v3, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 392
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 395
    iget-object v4, v3, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 396
    iget-object v4, v3, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    :cond_1
    iget-object v4, v3, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    :cond_2
    iget-object v3, v3, Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;->next:Lcom/facebook/common/internal/Objects$ToStringHelper$ValueHolder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    .line 401
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
