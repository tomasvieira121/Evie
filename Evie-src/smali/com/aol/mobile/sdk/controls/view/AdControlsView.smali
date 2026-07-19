.class public final Lcom/aol/mobile/sdk/controls/view/AdControlsView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/aol/mobile/sdk/controls/AdControls;
.implements Lcom/aol/mobile/sdk/controls/Themed;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field private final b:Landroid/widget/ProgressBar;

.field private final c:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

.field private final d:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

.field private final e:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

.field private final f:Landroid/widget/SeekBar;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:[Lcom/aol/mobile/sdk/controls/Themed;

.field private j:Lcom/aol/mobile/sdk/controls/AdControls$Listener;

.field private final k:Landroid/view/View$OnClickListener;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;

    invoke-direct {p3, p0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;-><init>(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)V

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->k:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p2, Lcom/aol/mobile/sdk/controls/R$layout;->ad_controls_view:I

    invoke-static {p1, p2, p0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->setClickable(Z)V

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->clickthrough_container:I

    invoke-virtual {p0, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a:Landroid/widget/FrameLayout;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->clickthrough_close:I

    invoke-virtual {p0, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->c:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->ad_progress_bar:I

    invoke-virtual {p0, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->b:Landroid/widget/ProgressBar;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->ad_play_button:I

    invoke-virtual {p0, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->d:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->ad_pause_button:I

    invoke-virtual {p0, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->e:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->ad_seekbar:I

    invoke-virtual {p0, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->ad_time_left:I

    invoke-virtual {p0, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->g:Landroid/widget/TextView;

    sget p2, Lcom/aol/mobile/sdk/controls/R$id;->ad_title:I

    invoke-virtual {p0, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->h:Landroid/widget/TextView;

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/aol/mobile/sdk/controls/Themed;

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->d:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->e:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    aput-object p3, p2, p1

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->c:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    const/4 p3, 0x2

    aput-object p1, p2, p3

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->i:[Lcom/aol/mobile/sdk/controls/Themed;

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->updateColors()V

    invoke-direct {p0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/AdControls$Listener;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->j:Lcom/aol/mobile/sdk/controls/AdControls$Listener;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->c:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->d:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->e:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    new-instance v1, Lcom/aol/mobile/sdk/controls/view/AdControlsView$2;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView$2;-><init>(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aol/mobile/sdk/controls/R$color;->default_main_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aol/mobile/sdk/controls/R$color;->default_ad_accent_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->m:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/aol/mobile/sdk/controls/R$styleable;->AdControlsView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/aol/mobile/sdk/controls/R$styleable;->AdControlsView_mainColor:I

    iget v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->l:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->l:I

    sget p2, Lcom/aol/mobile/sdk/controls/R$styleable;->AdControlsView_accentColor:I

    iget v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->m:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic b(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->c:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    return-object p0
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->n:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_1
    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->n:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->c:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-virtual {p2}, Lcom/aol/mobile/sdk/controls/view/TintableImageButton;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a(Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->d:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    return-object p0
.end method

.method static synthetic d(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->e:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->j:Lcom/aol/mobile/sdk/controls/AdControls$Listener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->j:Lcom/aol/mobile/sdk/controls/AdControls$Listener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/AdControls$Listener;->onAdPresented()V

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_TARGET_URL"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "KEY_SHOW_CLOSE"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public render(Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;)V
    .locals 3

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isProgressViewVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->b:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isPlayButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->d:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isPauseButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->e:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isAdTimeViewVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->g:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isAdTimeViewVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isCloseButtonVisible:Z

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->c:Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderVisibility(ZLandroid/view/View;)V

    iget v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->seekerMaxValue:I

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderSeekerMaxValue(ILandroid/widget/SeekBar;)V

    iget-wide v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->seekerProgress:D

    iget-object v2, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    invoke-static {v0, v1, v2}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderSeekerProgress(DLandroid/widget/SeekBar;)V

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->timeLeftText:Ljava/lang/String;

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->g:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->renderText(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->adUrl:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->embedClickThroughUrl:Z

    invoke-direct {p0, v0, p1}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 0

    iput p1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->m:I

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->updateColors()V

    return-void
.end method

.method public setListener(Lcom/aol/mobile/sdk/controls/AdControls$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->j:Lcom/aol/mobile/sdk/controls/AdControls$Listener;

    return-void
.end method

.method public setMainColor(I)V
    .locals 0

    iput p1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->l:I

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->updateColors()V

    return-void
.end method

.method protected updateColors()V
    .locals 5

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->l:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->m:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->m:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->m:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v1, 0x1020000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->l:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->i:[Lcom/aol/mobile/sdk/controls/Themed;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget v4, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->m:I

    invoke-interface {v3, v4}, Lcom/aol/mobile/sdk/controls/Themed;->setAccentColor(I)V

    iget v4, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->l:I

    invoke-interface {v3, v4}, Lcom/aol/mobile/sdk/controls/Themed;->setMainColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
