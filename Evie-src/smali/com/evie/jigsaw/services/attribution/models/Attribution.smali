.class public Lcom/evie/jigsaw/services/attribution/models/Attribution;
.super Ljava/lang/Object;
.source "Attribution.java"


# static fields
.field public static final NO_ATTRIBUTION:Lcom/evie/jigsaw/services/attribution/models/Attribution;


# instance fields
.field private link:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/evie/jigsaw/services/attribution/models/Attribution;

    invoke-direct {v0}, Lcom/evie/jigsaw/services/attribution/models/Attribution;-><init>()V

    sput-object v0, Lcom/evie/jigsaw/services/attribution/models/Attribution;->NO_ATTRIBUTION:Lcom/evie/jigsaw/services/attribution/models/Attribution;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/jigsaw/services/attribution/models/Attribution;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/evie/jigsaw/services/attribution/models/Attribution;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/evie/jigsaw/services/attribution/models/Attribution;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evie/jigsaw/services/attribution/models/Attribution;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
