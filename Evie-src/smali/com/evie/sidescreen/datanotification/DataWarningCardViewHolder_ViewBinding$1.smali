.class Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DataWarningCardViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->onMoreTap()V

    return-void
.end method
