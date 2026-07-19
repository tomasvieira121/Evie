.class public Lcom/evie/screen/TermsAndConditionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TermsAndConditionsActivity.java"


# instance fields
.field mClient:Lokhttp3/OkHttpClient;

.field mDialogLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgress:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/screen/TermsAndConditionsActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/evie/screen/TermsAndConditionsActivity;->showErrorDialog()V

    return-void
.end method

.method public static synthetic lambda$showErrorDialog$0(Lcom/evie/screen/TermsAndConditionsActivity;Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/evie/screen/TermsAndConditionsActivity;->loadText()V

    return-void
.end method

.method private loadText()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity;->mDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 62
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity;->mDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    new-instance v0, Lcom/evie/screen/TermsAndConditionsActivity$1;

    invoke-direct {v0, p0}, Lcom/evie/screen/TermsAndConditionsActivity$1;-><init>(Lcom/evie/screen/TermsAndConditionsActivity;)V

    .line 103
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showErrorDialog()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity;->mDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 109
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity;->mDialogLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/evie/screen/TermsAndConditionsActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    new-instance v0, Lcom/evie/jigsaw/components/content/DialogComponent;

    invoke-direct {v0}, Lcom/evie/jigsaw/components/content/DialogComponent;-><init>()V

    const v1, 0x7f080067

    .line 113
    invoke-virtual {v0, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->setImage(I)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v0

    const v1, 0x7f120104

    .line 114
    invoke-virtual {v0, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->setTextResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v0

    const v1, 0x7f120103

    .line 115
    invoke-virtual {v0, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->setSubtextResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v0

    const v1, 0x7f120102

    .line 116
    invoke-virtual {v0, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->setPositiveButtonTextResource(I)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v0

    new-instance v1, Lcom/evie/screen/-$$Lambda$TermsAndConditionsActivity$NEkRMXVeP96YP3wrDoh2hLwW9BA;

    invoke-direct {v1, p0}, Lcom/evie/screen/-$$Lambda$TermsAndConditionsActivity$NEkRMXVeP96YP3wrDoh2hLwW9BA;-><init>(Lcom/evie/screen/TermsAndConditionsActivity;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->setPositiveButtonListener(Landroid/view/View$OnClickListener;)Lcom/evie/jigsaw/components/content/DialogComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/screen/TermsAndConditionsActivity;->mDialogLayout:Landroid/widget/FrameLayout;

    .line 118
    invoke-virtual {v0, p0, v1}, Lcom/evie/jigsaw/components/content/DialogComponent;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00f9

    .line 50
    invoke-virtual {p0, p1}, Lcom/evie/screen/TermsAndConditionsActivity;->setContentView(I)V

    .line 51
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 53
    invoke-virtual {p0}, Lcom/evie/screen/TermsAndConditionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f1202a5

    .line 54
    invoke-virtual {p0, p1}, Lcom/evie/screen/TermsAndConditionsActivity;->setTitle(I)V

    .line 56
    invoke-direct {p0}, Lcom/evie/screen/TermsAndConditionsActivity;->loadText()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 129
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/evie/screen/TermsAndConditionsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
