.class public final synthetic Lcom/evie/sidescreen/relatedcontent/-$$Lambda$jzs1_YGlS1lmWPc2__D-9jMLOU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$jzs1_YGlS1lmWPc2__D-9jMLOU0;->f$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$jzs1_YGlS1lmWPc2__D-9jMLOU0;->f$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method
