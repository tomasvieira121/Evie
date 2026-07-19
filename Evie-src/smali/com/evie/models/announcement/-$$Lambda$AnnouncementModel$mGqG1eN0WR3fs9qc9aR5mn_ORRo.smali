.class public final synthetic Lcom/evie/models/announcement/-$$Lambda$AnnouncementModel$mGqG1eN0WR3fs9qc9aR5mn_ORRo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/models/announcement/AnnouncementModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/models/announcement/AnnouncementModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/announcement/-$$Lambda$AnnouncementModel$mGqG1eN0WR3fs9qc9aR5mn_ORRo;->f$0:Lcom/evie/models/announcement/AnnouncementModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/models/announcement/-$$Lambda$AnnouncementModel$mGqG1eN0WR3fs9qc9aR5mn_ORRo;->f$0:Lcom/evie/models/announcement/AnnouncementModel;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, p1}, Lcom/evie/models/announcement/AnnouncementModel;->lambda$cacheAnnouncement$0(Lcom/evie/models/announcement/AnnouncementModel;Lcom/evie/common/data/Lce;)V

    return-void
.end method
