.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$SideScreenMainTabSectionModel$adETLi6_H8T8z1k8pIxfMLrcgPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenMainTabSectionModel$adETLi6_H8T8z1k8pIxfMLrcgPE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/sidescreen/-$$Lambda$SideScreenMainTabSectionModel$adETLi6_H8T8z1k8pIxfMLrcgPE;

    invoke-direct {v0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenMainTabSectionModel$adETLi6_H8T8z1k8pIxfMLrcgPE;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/-$$Lambda$SideScreenMainTabSectionModel$adETLi6_H8T8z1k8pIxfMLrcgPE;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenMainTabSectionModel$adETLi6_H8T8z1k8pIxfMLrcgPE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->lambda$getSideScreenSections$0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
