.class public final synthetic Lcom/android/photos/views/-$$Lambda$TiledImageView$mBaKafax0zul7Db-CieDOfe0P70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/photos/views/TiledImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/photos/views/TiledImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/photos/views/-$$Lambda$TiledImageView$mBaKafax0zul7Db-CieDOfe0P70;->f$0:Lcom/android/photos/views/TiledImageView;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/photos/views/-$$Lambda$TiledImageView$mBaKafax0zul7Db-CieDOfe0P70;->f$0:Lcom/android/photos/views/TiledImageView;

    invoke-static {v0, p1, p2}, Lcom/android/photos/views/TiledImageView;->lambda$invalOnVsync$0(Lcom/android/photos/views/TiledImageView;J)V

    return-void
.end method
