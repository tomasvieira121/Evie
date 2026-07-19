.class public Lcom/evie/jigsaw/components/content/MediaComponent$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MediaComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/MediaComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field public final attribution:Lcom/evie/jigsaw/views/RichTextView;

.field public final image:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final overlay:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final videoButton:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 193
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 194
    sget v0, Lcom/evie/jigsaw/R$id;->media_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 195
    sget v0, Lcom/evie/jigsaw/R$id;->media_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->overlay:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 196
    sget v0, Lcom/evie/jigsaw/R$id;->media_video_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->videoButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 197
    sget v0, Lcom/evie/jigsaw/R$id;->media_attribution:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/evie/jigsaw/views/RichTextView;

    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->attribution:Lcom/evie/jigsaw/views/RichTextView;

    return-void
.end method
