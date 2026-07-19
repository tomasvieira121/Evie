.class public final Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;
.super Ljava/lang/Object;
.source "VideoTileViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoProgressViewHolder"
.end annotation


# instance fields
.field mProgressText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private static formatVideoProgressText(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 120
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    .line 121
    div-long v2, p0, v0

    .line 122
    rem-long/2addr p0, v0

    .line 123
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v4, p1

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public hideVideoProgressText()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;->mProgressText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showVideoProgressText(J)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;->mProgressText:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;->formatVideoProgressText(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;->mProgressText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
