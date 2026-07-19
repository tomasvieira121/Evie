.class public abstract Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;
.super Ljava/lang/Object;
.source "DebouncingOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final clickDelay:J

.field private lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 15
    iput-wide v0, p0, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;->lastClickTime:J

    .line 30
    iput-wide p1, p0, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;->clickDelay:J

    return-void
.end method


# virtual methods
.method protected abstract click(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 36
    iget-wide v2, p0, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;->clickDelay:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 37
    :cond_0
    iput-wide v0, p0, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;->lastClickTime:J

    .line 38
    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;->click(Landroid/view/View;)V

    return-void
.end method
