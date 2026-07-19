.class public final Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;
.super Ljava/lang/Object;
.source "AdQuartileDetector.java"


# instance fields
.field private final result:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private topReachedQuartile:I

.field private uniqueAdId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->result:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public detect(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->result:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    if-nez p2, :cond_0

    .line 22
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->result:Ljava/util/LinkedList;

    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->uniqueAdId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->uniqueAdId:Ljava/lang/String;

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->topReachedQuartile:I

    :cond_1
    const/4 p2, 0x3

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 30
    iget p2, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->topReachedQuartile:I

    if-le p1, p2, :cond_3

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p1, :cond_2

    .line 31
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->result:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_2
    iput p1, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->topReachedQuartile:I

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->result:Ljava/util/LinkedList;

    return-object p1
.end method
