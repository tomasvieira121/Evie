.class public final Lcom/aol/mobile/sdk/renderer/AudioTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/renderer/AudioTrack$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/aol/mobile/sdk/renderer/AudioTrack$a;

.field public final isSelected:Z

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/AudioTrack$a;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/AudioTrack;->b:Lcom/aol/mobile/sdk/renderer/AudioTrack$a;

    iput-object p2, p0, Lcom/aol/mobile/sdk/renderer/AudioTrack;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/aol/mobile/sdk/renderer/AudioTrack;->title:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/aol/mobile/sdk/renderer/AudioTrack;->isSelected:Z

    return-void
.end method


# virtual methods
.method public withSelected(Z)Lcom/aol/mobile/sdk/renderer/AudioTrack;
    .locals 4

    new-instance v0, Lcom/aol/mobile/sdk/renderer/AudioTrack;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/AudioTrack;->b:Lcom/aol/mobile/sdk/renderer/AudioTrack$a;

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/AudioTrack;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/renderer/AudioTrack;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/aol/mobile/sdk/renderer/AudioTrack;-><init>(Lcom/aol/mobile/sdk/renderer/AudioTrack$a;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
