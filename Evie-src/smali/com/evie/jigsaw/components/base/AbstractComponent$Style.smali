.class public Lcom/evie/jigsaw/components/base/AbstractComponent$Style;
.super Ljava/lang/Object;
.source "AbstractComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/base/AbstractComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Style"
.end annotation


# instance fields
.field private background:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

.field private fullscreen:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/jigsaw/components/base/AbstractComponent$Style;)Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->fullscreen:Z

    return p0
.end method

.method static synthetic access$100(Lcom/evie/jigsaw/components/base/AbstractComponent$Style;)Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->background:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    return-object p0
.end method


# virtual methods
.method public setBackground(Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;)Lcom/evie/jigsaw/components/base/AbstractComponent$Style;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->background:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    return-object p0
.end method

.method public setFullscreen(Z)Lcom/evie/jigsaw/components/base/AbstractComponent$Style;
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->fullscreen:Z

    return-object p0
.end method
