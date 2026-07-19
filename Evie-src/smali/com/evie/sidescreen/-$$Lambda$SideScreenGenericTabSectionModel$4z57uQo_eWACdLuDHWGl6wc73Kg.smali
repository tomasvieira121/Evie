.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$SideScreenGenericTabSectionModel$4z57uQo_eWACdLuDHWGl6wc73Kg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenGenericTabSectionModel$4z57uQo_eWACdLuDHWGl6wc73Kg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/sidescreen/-$$Lambda$SideScreenGenericTabSectionModel$4z57uQo_eWACdLuDHWGl6wc73Kg;

    invoke-direct {v0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenGenericTabSectionModel$4z57uQo_eWACdLuDHWGl6wc73Kg;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/-$$Lambda$SideScreenGenericTabSectionModel$4z57uQo_eWACdLuDHWGl6wc73Kg;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenGenericTabSectionModel$4z57uQo_eWACdLuDHWGl6wc73Kg;

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

    invoke-static {p1}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->lambda$getSideScreenSections$0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
