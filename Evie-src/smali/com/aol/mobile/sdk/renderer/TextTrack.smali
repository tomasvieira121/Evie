.class public final Lcom/aol/mobile/sdk/renderer/TextTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/renderer/TextTrack$a;
    }
.end annotation


# instance fields
.field final a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

.field public final isEmpty:Z

.field public final isSelected:Z

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/TextTrack$a;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iput-object p2, p0, Lcom/aol/mobile/sdk/renderer/TextTrack;->title:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/aol/mobile/sdk/renderer/TextTrack;->isSelected:Z

    iget p2, p1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->b:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    iget p1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack$a;->c:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/renderer/TextTrack;->isEmpty:Z

    return-void
.end method


# virtual methods
.method public withSelected(Z)Lcom/aol/mobile/sdk/renderer/TextTrack;
    .locals 3

    new-instance v0, Lcom/aol/mobile/sdk/renderer/TextTrack;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/TextTrack;->a:Lcom/aol/mobile/sdk/renderer/TextTrack$a;

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/TextTrack;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/aol/mobile/sdk/renderer/TextTrack;-><init>(Lcom/aol/mobile/sdk/renderer/TextTrack$a;Ljava/lang/String;Z)V

    return-object v0
.end method
