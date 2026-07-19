.class final Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;
.super Ljava/lang/Object;
.source "JsProcessorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JsLoadParams"
.end annotation


# instance fields
.field private final context:Ljava/lang/String;

.field final js:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;->context:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;->js:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;)Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;->context:Ljava/lang/String;

    return-object p0
.end method
