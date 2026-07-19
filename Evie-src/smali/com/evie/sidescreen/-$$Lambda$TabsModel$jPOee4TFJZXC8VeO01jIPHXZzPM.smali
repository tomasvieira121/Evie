.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$TabsModel$jPOee4TFJZXC8VeO01jIPHXZzPM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/TabsModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/TabsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$TabsModel$jPOee4TFJZXC8VeO01jIPHXZzPM;->f$0:Lcom/evie/sidescreen/TabsModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$TabsModel$jPOee4TFJZXC8VeO01jIPHXZzPM;->f$0:Lcom/evie/sidescreen/TabsModel;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/TabsModel;->lambda$bindTabObservables$4(Lcom/evie/sidescreen/TabsModel;Ljava/lang/Integer;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
