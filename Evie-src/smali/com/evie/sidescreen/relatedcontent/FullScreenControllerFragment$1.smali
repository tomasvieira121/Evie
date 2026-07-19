.class Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$1;
.super Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;
.source "FullScreenControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;Landroid/content/Context;ILcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$1;->this$0:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerDialog;-><init>(Landroid/content/Context;ILcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$1;->this$0:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->access$000(Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;)Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment$OnFragmentInteractionListener;->onDialogBackPressed()V

    return-void
.end method
