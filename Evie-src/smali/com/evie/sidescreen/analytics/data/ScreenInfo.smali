.class public Lcom/evie/sidescreen/analytics/data/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private subtype:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->type:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->id:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->subtype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->type:Ljava/lang/String;

    return-object v0
.end method
