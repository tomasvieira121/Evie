.class public final synthetic Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l6dzASYNUUUdqqfmtpgFWbNlYzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l6dzASYNUUUdqqfmtpgFWbNlYzI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l6dzASYNUUUdqqfmtpgFWbNlYzI;

    invoke-direct {v0}, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l6dzASYNUUUdqqfmtpgFWbNlYzI;-><init>()V

    sput-object v0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l6dzASYNUUUdqqfmtpgFWbNlYzI;->INSTANCE:Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l6dzASYNUUUdqqfmtpgFWbNlYzI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/evie/search/model/LocalSearchItem;

    check-cast p2, Lcom/evie/search/model/LocalSearchItem;

    invoke-static {p1, p2}, Lcom/evie/search/local/LocalSearchManager;->lambda$search$0(Lcom/evie/search/model/LocalSearchItem;Lcom/evie/search/model/LocalSearchItem;)I

    move-result p1

    return p1
.end method
