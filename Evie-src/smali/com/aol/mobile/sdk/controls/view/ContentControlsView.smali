.class public Lcom/aol/mobile/sdk/controls/view/ContentControlsView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/aol/mobile/sdk/controls/ContentControls;
.implements Lcom/aol/mobile/sdk/controls/Themed;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final A:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/view/View;

.field private D:Landroid/animation/ValueAnimator;

.field private E:Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

.field private final F:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final G:Landroid/view/GestureDetector;

.field private H:Z

.field private I:Landroid/app/Dialog;

.field private final J:Landroid/view/View$OnClickListener;

.field private K:Ljava/lang/String;

.field private L:Lcom/aol/mobile/sdk/controls/ImageLoader;

.field private M:Z

.field private N:D

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Landroid/view/accessibility/AccessibilityManager;

.field private T:Lcom/aol/mobile/sdk/chromecast/OneCastManager;

.field private final b:Landroid/widget/RelativeLayout;

.field private final c:Landroid/widget/FrameLayout;

.field private final d:Landroid/widget/ProgressBar;

.field private final e:Landroid/widget/TextView;

.field private final f:Lcom/aol/mobile/sdk/controls/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aol/mobile/sdk/controls/d<",
            "Lcom/aol/mobile/sdk/controls/view/TintableImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/aol/mobile/sdk/controls/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aol/mobile/sdk/controls/d<",
            "Lcom/aol/mobile/sdk/controls/view/TintableImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/aol/mobile/sdk/controls/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aol/mobile/sdk/controls/d<",
            "Lcom/aol/mobile/sdk/controls/view/TintableImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

.field private final j:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

.field private final k:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

.field private final l:Landroid/widget/LinearLayout;

.field private final m:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

.field private final n:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

.field private final o:Landroid/widget/ImageView;

.field private final p:Landroid/widget/ImageView;

.field private final q:Lcom/aol/mobile/sdk/controls/view/SidePanel;

.field private final r:Landroid/widget/RelativeLayout;

.field private final s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

.field private final t:Landroid/widget/TextView;

.field private final u:Landroid/widget/TextView;

.field private final v:Lcom/aol/mobile/sdk/controls/a;

.field private final w:Lcom/aol/mobile/sdk/controls/c;

.field private final x:[Lcom/aol/mobile/sdk/controls/Themed;

.field private final y:Lcom/aol/mobile/sdk/controls/b;

.field private final z:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Lcom/aol/mobile/sdk/controls/a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p3, v0}, Lcom/aol/mobile/sdk/controls/a;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->v:Lcom/aol/mobile/sdk/controls/a;

    new-instance p3, Lcom/aol/mobile/sdk/controls/b;

    invoke-direct {p3}, Lcom/aol/mobile/sdk/controls/b;-><init>()V

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->y:Lcom/aol/mobile/sdk/controls/b;

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->z:Ljava/util/LinkedList;

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->A:Ljava/util/LinkedList;

    new-instance p3, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;

    invoke-direct {p3, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->F:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance p3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$7;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$7;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    invoke-direct {p3, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->G:Landroid/view/GestureDetector;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->H:Z

    new-instance v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->M:Z

    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/aol/mobile/sdk/controls/R$layout;->player_controls_view:I

    invoke-static {p2, v1, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->S:Landroid/view/accessibility/AccessibilityManager;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->controls_container:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b:Landroid/widget/RelativeLayout;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->progressbar:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->d:Landroid/widget/ProgressBar;

    new-instance p2, Lcom/aol/mobile/sdk/controls/d;

    sget v1, Lcom/aol/mobile/sdk/controls/R$id;->play_button:I

    invoke-static {p0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-direct {p2, v1}, Lcom/aol/mobile/sdk/controls/d;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->f:Lcom/aol/mobile/sdk/controls/d;

    new-instance p2, Lcom/aol/mobile/sdk/controls/d;

    sget v1, Lcom/aol/mobile/sdk/controls/R$id;->pause_button:I

    invoke-static {p0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-direct {p2, v1}, Lcom/aol/mobile/sdk/controls/d;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->g:Lcom/aol/mobile/sdk/controls/d;

    new-instance p2, Lcom/aol/mobile/sdk/controls/d;

    sget v1, Lcom/aol/mobile/sdk/controls/R$id;->replay_button:I

    invoke-static {p0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-direct {p2, v1}, Lcom/aol/mobile/sdk/controls/d;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->h:Lcom/aol/mobile/sdk/controls/d;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->next_button:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->m:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->prev_button:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->n:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->tracks_button:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->i:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->forward_seek_button:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->k:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->backward_seek_button:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->j:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->live_indicator:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->l:Landroid/widget/LinearLayout;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->seekbar_container:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->r:Landroid/widget/RelativeLayout;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->seekbar:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->title_view:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->e:Landroid/widget/TextView;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->compass_container:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->c:Landroid/widget/FrameLayout;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->compass_view:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p:Landroid/widget/ImageView;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->thumbnail:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->o:Landroid/widget/ImageView;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->side_panel:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/SidePanel;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->q:Lcom/aol/mobile/sdk/controls/view/SidePanel;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->duration:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->u:Landroid/widget/TextView;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->current_time:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->t:Landroid/widget/TextView;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->cast_placeholder:I

    invoke-static {p0, p2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->B:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a()V

    iget-boolean p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->R:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/aol/mobile/sdk/chromecast/OneCastManager;

    invoke-direct {p2, p1}, Lcom/aol/mobile/sdk/chromecast/OneCastManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->T:Lcom/aol/mobile/sdk/chromecast/OneCastManager;

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->B:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->T:Lcom/aol/mobile/sdk/chromecast/OneCastManager;

    invoke-virtual {p2}, Lcom/aol/mobile/sdk/chromecast/OneCastManager;->constructCastButton()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [Lcom/aol/mobile/sdk/controls/Themed;

    iget-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->f:Lcom/aol/mobile/sdk/controls/d;

    iget-object p2, p2, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    check-cast p2, Lcom/aol/mobile/sdk/controls/Themed;

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->g:Lcom/aol/mobile/sdk/controls/d;

    iget-object p2, p2, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    check-cast p2, Lcom/aol/mobile/sdk/controls/Themed;

    aput-object p2, p1, p3

    const/4 p2, 0x2

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->h:Lcom/aol/mobile/sdk/controls/d;

    iget-object p3, p3, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    check-cast p3, Lcom/aol/mobile/sdk/controls/Themed;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->i:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->j:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->k:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->n:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->m:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    aput-object p3, p1, p2

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->x:[Lcom/aol/mobile/sdk/controls/Themed;

    invoke-static {v0, p3}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderAvailability(ZLandroid/view/View;)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->n:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, p1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderAvailability(ZLandroid/view/View;)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->setPadding(IIII)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    new-instance p2, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$9;

    invoke-direct {p2, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$9;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->c()V

    invoke-direct {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->d()V

    invoke-direct {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b()V

    new-instance p1, Lcom/aol/mobile/sdk/controls/c;

    invoke-direct {p1, p0}, Lcom/aol/mobile/sdk/controls/c;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->I:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->C:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->E:Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    return-object p0
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->R:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(D)V
    .locals 5

    iget-wide v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->N:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3da5fd7fe0000000L    # 9.999999960041972E-12

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p:Landroid/widget/ImageView;

    neg-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aol/mobile/sdk/controls/R$color;->default_main_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aol/mobile/sdk/controls/R$color;->default_accent_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->P:I

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->Q:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/aol/mobile/sdk/controls/R$styleable;->ContentControlsView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/aol/mobile/sdk/controls/R$styleable;->ContentControlsView_mainColor:I

    iget v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    sget p2, Lcom/aol/mobile/sdk/controls/R$styleable;->ContentControlsView_accentColor:I

    iget v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->P:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->K:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->L:Lcom/aol/mobile/sdk/controls/ImageLoader;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->o:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ImageLoader;->cancelLoad(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->L:Lcom/aol/mobile/sdk/controls/ImageLoader;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->o:Landroid/widget/ImageView;

    invoke-interface {v0, p1, v1}, Lcom/aol/mobile/sdk/controls/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->z:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->z:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->A:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->I:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->I:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->M:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/c;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/c;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/c;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    return-object p0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->P:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->P:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->P:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v1, 0x1020000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->x:[Lcom/aol/mobile/sdk/controls/Themed;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget v5, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->P:I

    invoke-interface {v4, v5}, Lcom/aol/mobile/sdk/controls/Themed;->setAccentColor(I)V

    iget v5, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    invoke-interface {v4, v5}, Lcom/aol/mobile/sdk/controls/Themed;->setMainColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->u:Landroid/widget/TextView;

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->P:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->f:Lcom/aol/mobile/sdk/controls/d;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/d;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->g:Lcom/aol/mobile/sdk/controls/d;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/d;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->h:Lcom/aol/mobile/sdk/controls/d;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/d;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->m:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->n:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->k:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->j:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->i:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->F:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic d(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/d;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->f:Lcom/aol/mobile/sdk/controls/d;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->f:Lcom/aol/mobile/sdk/controls/d;

    new-instance v1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$11;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$11;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/d;->a(Lcom/aol/mobile/sdk/controls/d$a;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->g:Lcom/aol/mobile/sdk/controls/d;

    new-instance v1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$12;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$12;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/d;->a(Lcom/aol/mobile/sdk/controls/d$a;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->h:Lcom/aol/mobile/sdk/controls/d;

    new-instance v1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$13;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$13;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/d;->a(Lcom/aol/mobile/sdk/controls/d$a;)V

    new-instance v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$14;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$14;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->m:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-virtual {v1, v0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->n:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-virtual {v1, v0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->j:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-virtual {v1, v0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->k:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-virtual {v1, v0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->i:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-virtual {v1, v0}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    invoke-virtual {v1, v0}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->h:Lcom/aol/mobile/sdk/controls/d;

    iget-object v0, v0, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->C:Landroid/view/View;

    return-void
.end method

.method static synthetic e(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/d;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->g:Lcom/aol/mobile/sdk/controls/d;

    return-object p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/d;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->h:Lcom/aol/mobile/sdk/controls/d;

    return-object p0
.end method

.method static synthetic g(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->m:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    return-object p0
.end method

.method static synthetic h(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->n:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    return-object p0
.end method

.method static synthetic i(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->k:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    return-object p0
.end method

.method static synthetic j(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->j:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    return-object p0
.end method

.method static synthetic k(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic l(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->i:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    return-object p0
.end method

.method static synthetic m(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->z:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic n(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->A:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic o(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/b;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->y:Lcom/aol/mobile/sdk/controls/b;

    return-object p0
.end method

.method static synthetic p(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->I:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic q(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    return-object p0
.end method

.method static synthetic r(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->F:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic s(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->v:Lcom/aol/mobile/sdk/controls/a;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/a;->b()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->E:Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/c;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/c;->c()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/c;->e()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getSidePanel()Lcom/aol/mobile/sdk/controls/view/SidePanel;
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->q:Lcom/aol/mobile/sdk/controls/view/SidePanel;

    return-object v0
.end method

.method public hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->H:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->e()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->C:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->setFocusable(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    sget-boolean v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$3;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$3;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$4;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$4;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->q:Lcom/aol/mobile/sdk/controls/view/SidePanel;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/SidePanel;->hide()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->G:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public render(Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;)V
    .locals 5

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isStreamPlaying:Z

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Z)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isLoading:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->d:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPlayButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->f:Lcom/aol/mobile/sdk/controls/d;

    iget-object v1, v1, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPauseButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->g:Lcom/aol/mobile/sdk/controls/d;

    iget-object v1, v1, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isReplayButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->h:Lcom/aol/mobile/sdk/controls/d;

    iget-object v1, v1, Lcom/aol/mobile/sdk/controls/d;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isNextButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->m:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPrevButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->n:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekForwardButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->k:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekBackButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->j:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekerVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->r:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCompassViewVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->c:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTitleVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->e:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isThumbnailImageVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->o:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTrackChooserButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->i:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isNextButtonEnabled:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->m:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderAvailability(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPrevButtonEnabled:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->n:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderAvailability(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTrackChooserButtonEnabled:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->i:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderAvailability(ZLandroid/view/View;)V

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->titleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->e:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderText(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerCurrentTimeText:Ljava/lang/String;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->t:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderText(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerDurationText:Ljava/lang/String;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->u:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderText(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerMaxValue:I

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderSeekerMaxValue(ILandroid/widget/SeekBar;)V

    iget-wide v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerProgress:D

    iget-object v2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    invoke-static {v0, v1, v2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderSeekerProgress(DLandroid/widget/SeekBar;)V

    iget v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerBufferedProgress:I

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderSeekerBufferProgress(ILandroid/widget/SeekBar;)V

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->thumbnailImageUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->compassLongitude:D

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(D)V

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->audioTracks:Ljava/util/LinkedList;

    iget-object v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->ccTracks:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->l:Landroid/widget/LinearLayout;

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isLiveIndicatorVisible:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isOnLiveEdge:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->Q:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    :goto_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isStreamPlaying:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->M:Z

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->thumbnailImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->K:Ljava/lang/String;

    iget-wide v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->compassLongitude:D

    iput-wide v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->N:D

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCasting:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->S:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->H:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->M:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->H:Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/c;->a()V

    goto :goto_3

    :cond_3
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->H:Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/c;->b()V

    goto :goto_3

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->H:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->show()V

    :cond_5
    iput-boolean v3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->H:Z

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->B:Landroid/widget/FrameLayout;

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCastButtonVisible:Z

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s:Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    iget-object p1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->adCues:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->renderAdCues(Ljava/util/Set;)V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 0

    iput p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->P:I

    invoke-direct {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b()V

    return-void
.end method

.method public setImageLoader(Lcom/aol/mobile/sdk/controls/ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->L:Lcom/aol/mobile/sdk/controls/ImageLoader;

    return-void
.end method

.method public setListener(Lcom/aol/mobile/sdk/controls/ContentControls$Listener;)V
    .locals 2

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->E:Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->T:Lcom/aol/mobile/sdk/chromecast/OneCastManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$10;

    invoke-direct {v1, p0, p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$10;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;Lcom/aol/mobile/sdk/controls/ContentControls$Listener;)V

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/chromecast/OneCastManager;->setCastListener(Lcom/aol/mobile/sdk/chromecast/OneCastManager$CastListener;)V

    :cond_0
    return-void
.end method

.method public setLiveDotColor(I)V
    .locals 0

    iput p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->Q:I

    return-void
.end method

.method public setMainColor(I)V
    .locals 0

    iput p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->O:I

    invoke-direct {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->w:Lcom/aol/mobile/sdk/controls/c;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/c;->d()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->C:Landroid/view/View;

    invoke-direct {p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->e()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->setFocusable(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$2;

    invoke-direct {v2, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$2;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->D:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->q:Lcom/aol/mobile/sdk/controls/view/SidePanel;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/SidePanel;->show()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startTimer()V
    .locals 4

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->v:Lcom/aol/mobile/sdk/controls/a;

    new-instance v1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$5;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$5;-><init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3, v1}, Lcom/aol/mobile/sdk/controls/a;->a(JLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->v:Lcom/aol/mobile/sdk/controls/a;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/a;->a()V

    return-void
.end method
