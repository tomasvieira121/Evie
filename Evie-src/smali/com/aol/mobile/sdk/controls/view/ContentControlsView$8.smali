.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/c;->e()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->d(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/d;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/controls/ContentControls$Button;->PLAY:Lcom/aol/mobile/sdk/controls/ContentControls$Button;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V

    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->e(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/d;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/controls/ContentControls$Button;->PAUSE:Lcom/aol/mobile/sdk/controls/ContentControls$Button;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V

    :cond_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->f(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/d;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/controls/ContentControls$Button;->REPLAY:Lcom/aol/mobile/sdk/controls/ContentControls$Button;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V

    :cond_3
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->g(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/controls/ContentControls$Button;->NEXT:Lcom/aol/mobile/sdk/controls/ContentControls$Button;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V

    :cond_4
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->h(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/controls/ContentControls$Button;->PREVIOUS:Lcom/aol/mobile/sdk/controls/ContentControls$Button;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V

    :cond_5
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->i(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/controls/ContentControls$Button;->SEEK_FORWARD:Lcom/aol/mobile/sdk/controls/ContentControls$Button;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V

    :cond_6
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->j(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/controls/ContentControls$Button;->SEEK_BACKWARD:Lcom/aol/mobile/sdk/controls/ContentControls$Button;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V

    :cond_7
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->k(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/controls/ContentControls$Button;->COMPASS:Lcom/aol/mobile/sdk/controls/ContentControls$Button;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V

    :cond_8
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->l(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->o(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/b;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->m(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v2}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->n(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/aol/mobile/sdk/controls/b;->a(Landroid/content/Context;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103000a

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p1, v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/app/Dialog;

    move-result-object p1

    new-instance v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$1;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$1;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance p1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->o(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$2;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$2;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget v2, Lcom/aol/mobile/sdk/controls/R$style;->TracksDialogAnimation:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x57

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x2

    invoke-virtual {p1, v1, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_9
    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_a
    return-void
.end method
