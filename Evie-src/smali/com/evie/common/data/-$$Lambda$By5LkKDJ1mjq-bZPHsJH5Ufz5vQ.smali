.class public final synthetic Lcom/evie/common/data/-$$Lambda$By5LkKDJ1mjq-bZPHsJH5Ufz5vQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/common/data/-$$Lambda$By5LkKDJ1mjq-bZPHsJH5Ufz5vQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/common/data/-$$Lambda$By5LkKDJ1mjq-bZPHsJH5Ufz5vQ;

    invoke-direct {v0}, Lcom/evie/common/data/-$$Lambda$By5LkKDJ1mjq-bZPHsJH5Ufz5vQ;-><init>()V

    sput-object v0, Lcom/evie/common/data/-$$Lambda$By5LkKDJ1mjq-bZPHsJH5Ufz5vQ;->INSTANCE:Lcom/evie/common/data/-$$Lambda$By5LkKDJ1mjq-bZPHsJH5Ufz5vQ;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/evie/common/data/Lce;->error(Ljava/lang/Throwable;)Lcom/evie/common/data/Lce;

    move-result-object p1

    return-object p1
.end method
