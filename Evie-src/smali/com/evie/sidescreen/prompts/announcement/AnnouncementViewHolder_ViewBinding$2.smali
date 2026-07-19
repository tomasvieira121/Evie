.class Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AnnouncementViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding$2;->this$0:Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementViewHolder;->onActionClick(Landroid/view/View;)V

    return-void
.end method
