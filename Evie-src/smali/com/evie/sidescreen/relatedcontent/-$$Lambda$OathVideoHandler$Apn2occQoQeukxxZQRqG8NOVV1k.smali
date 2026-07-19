.class public final synthetic Lcom/evie/sidescreen/relatedcontent/-$$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k;->f$0:Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k;->f$0:Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;

    check-cast p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->lambda$Apn2occQoQeukxxZQRqG8NOVV1k(Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;)V

    return-void
.end method
