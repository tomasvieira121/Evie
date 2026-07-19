.class public Lcom/aol/mobile/sdk/player/http/network/DataFetcher;
.super Ljava/lang/Object;
.source "DataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;,
        Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x3a98

.field private static final READ_TIMEOUT:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "[B>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;

    invoke-direct {v0, p2, p1}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;-><init>(Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method
