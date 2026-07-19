.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$FzBX7sJIWOFU1Bvg3DlDfmdS3_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$FzBX7sJIWOFU1Bvg3DlDfmdS3_0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$FzBX7sJIWOFU1Bvg3DlDfmdS3_0;

    invoke-direct {v0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$FzBX7sJIWOFU1Bvg3DlDfmdS3_0;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$FzBX7sJIWOFU1Bvg3DlDfmdS3_0;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$FzBX7sJIWOFU1Bvg3DlDfmdS3_0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/evie/sidescreen/SideScreenPresenter;->lambda$bindSideScreenView$3(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
