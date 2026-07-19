.class public final synthetic Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsFooterBarHandler$q2IOORMP7OSCe5Mn35lW_hMUidg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsFooterBarHandler$q2IOORMP7OSCe5Mn35lW_hMUidg;->f$0:Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsFooterBarHandler$q2IOORMP7OSCe5Mn35lW_hMUidg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onTopicClickListener(Landroid/view/View;Lorg/schema/evie/topics/Topic;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsFooterBarHandler$q2IOORMP7OSCe5Mn35lW_hMUidg;->f$0:Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsFooterBarHandler$q2IOORMP7OSCe5Mn35lW_hMUidg;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->lambda$bindFooterBarWithItems$1(Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;Ljava/lang/String;Landroid/view/View;Lorg/schema/evie/topics/Topic;)V

    return-void
.end method
