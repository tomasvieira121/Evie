.class final enum Lcom/evie/search/SearchPresenter$SearchObserverState;
.super Ljava/lang/Enum;
.source "SearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/search/SearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SearchObserverState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/search/SearchPresenter$SearchObserverState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/search/SearchPresenter$SearchObserverState;

.field public static final enum LOCAL_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

.field public static final enum REMOTE_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

.field public static final enum STARTED:Lcom/evie/search/SearchPresenter$SearchObserverState;

.field public static final enum WEB_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 545
    new-instance v0, Lcom/evie/search/SearchPresenter$SearchObserverState;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/evie/search/SearchPresenter$SearchObserverState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->STARTED:Lcom/evie/search/SearchPresenter$SearchObserverState;

    .line 546
    new-instance v0, Lcom/evie/search/SearchPresenter$SearchObserverState;

    const-string v1, "LOCAL_COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/evie/search/SearchPresenter$SearchObserverState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->LOCAL_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    .line 547
    new-instance v0, Lcom/evie/search/SearchPresenter$SearchObserverState;

    const-string v1, "REMOTE_COMPLETE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/evie/search/SearchPresenter$SearchObserverState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->REMOTE_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    .line 548
    new-instance v0, Lcom/evie/search/SearchPresenter$SearchObserverState;

    const-string v1, "WEB_COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/evie/search/SearchPresenter$SearchObserverState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->WEB_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    const/4 v0, 0x4

    .line 544
    new-array v0, v0, [Lcom/evie/search/SearchPresenter$SearchObserverState;

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchObserverState;->STARTED:Lcom/evie/search/SearchPresenter$SearchObserverState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchObserverState;->LOCAL_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchObserverState;->REMOTE_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchObserverState;->WEB_COMPLETE:Lcom/evie/search/SearchPresenter$SearchObserverState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->$VALUES:[Lcom/evie/search/SearchPresenter$SearchObserverState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 552
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 553
    iput p3, p0, Lcom/evie/search/SearchPresenter$SearchObserverState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/search/SearchPresenter$SearchObserverState;
    .locals 1

    .line 544
    const-class v0, Lcom/evie/search/SearchPresenter$SearchObserverState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/search/SearchPresenter$SearchObserverState;

    return-object p0
.end method

.method public static values()[Lcom/evie/search/SearchPresenter$SearchObserverState;
    .locals 1

    .line 544
    sget-object v0, Lcom/evie/search/SearchPresenter$SearchObserverState;->$VALUES:[Lcom/evie/search/SearchPresenter$SearchObserverState;

    invoke-virtual {v0}, [Lcom/evie/search/SearchPresenter$SearchObserverState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/search/SearchPresenter$SearchObserverState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/evie/search/SearchPresenter$SearchObserverState;->value:I

    return v0
.end method
