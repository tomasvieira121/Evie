.class public final Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;
.super Ljava/lang/Object;
.source "JsIssue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;
    }
.end annotation


# instance fields
.field public final context:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final type:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;->type:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    .line 24
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;->context:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;->description:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;->text:Ljava/lang/String;

    return-void
.end method
