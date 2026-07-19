.class Lme/relex/photodraweeview/Attacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Attacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/relex/photodraweeview/Attacher;-><init>(Lcom/facebook/drawee/view/DraweeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/relex/photodraweeview/Attacher;


# direct methods
.method constructor <init>(Lme/relex/photodraweeview/Attacher;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher$1;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 77
    iget-object p1, p0, Lme/relex/photodraweeview/Attacher$1;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {p1}, Lme/relex/photodraweeview/Attacher;->access$000(Lme/relex/photodraweeview/Attacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lme/relex/photodraweeview/Attacher$1;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {p1}, Lme/relex/photodraweeview/Attacher;->access$000(Lme/relex/photodraweeview/Attacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$1;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
