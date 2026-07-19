.class Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PopupViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding$2;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->onBackButton()V

    return-void
.end method
