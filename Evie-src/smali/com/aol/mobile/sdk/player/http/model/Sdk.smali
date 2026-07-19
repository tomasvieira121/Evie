.class public final Lcom/aol/mobile/sdk/player/http/model/Sdk;
.super Ljava/lang/Object;
.source "Sdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;
    }
.end annotation


# instance fields
.field public final renderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/Sdk;->renderers:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/Sdk;->version:Ljava/lang/String;

    return-void
.end method
