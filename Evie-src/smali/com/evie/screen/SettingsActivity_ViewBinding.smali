.class public Lcom/evie/screen/SettingsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SettingsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/screen/SettingsActivity;

.field private view7f0a0053:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/screen/SettingsActivity;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity_ViewBinding;->target:Lcom/evie/screen/SettingsActivity;

    const-string v0, "field \'mSettingsVersion\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a027c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mSettingsVersion:Landroid/widget/TextView;

    const-string v0, "field \'mCommandText\'"

    .line 33
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a00a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mCommandText:Landroid/widget/EditText;

    const-string v0, "field \'mSettingsFeedback\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0276

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mSettingsFeedback:Landroid/widget/TextView;

    const-string v0, "field \'mSettingsDisable\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0275

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mSettingsDisable:Landroid/widget/TextView;

    const-string v0, "field \'mNotification\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mNotification:Landroid/widget/TextView;

    const-string v0, "field \'mSettingsAutoplaySwitch\'"

    .line 37
    const-class v1, Landroid/widget/CompoundButton;

    const v2, 0x7f0a0054

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mSettingsAutoplaySwitch:Landroid/widget/CompoundButton;

    const-string v0, "field \'mSettingsPrivacyPolicy\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0278

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mSettingsPrivacyPolicy:Landroid/widget/TextView;

    const-string v0, "field \'mSettingsTermsAndConditions\'"

    .line 39
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a027a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mSettingsTermsAndConditions:Landroid/widget/TextView;

    const-string v0, "field \'mSettingsOpenSourceLicenses\'"

    .line 40
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0277

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mSettingsOpenSourceLicenses:Landroid/widget/TextView;

    const-string v0, "field \'mHiddenOptions\'"

    const v1, 0x7f0a014f

    .line 41
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mHiddenOptions:Landroid/view/View;

    const-string v0, "field \'mStaging\'"

    .line 42
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0279

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mStaging:Landroid/widget/TextView;

    const-string v0, "field \'mCrash\'"

    .line 43
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0274

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mCrash:Landroid/widget/TextView;

    const-string v0, "field \'mAbTesting\'"

    .line 44
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0273

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mAbTesting:Landroid/widget/TextView;

    const-string v0, "field \'mUserId\'"

    .line 45
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a027b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mUserId:Landroid/widget/TextView;

    const-string v0, "field \'mSuperHiddenOptions\'"

    const v1, 0x7f0a029d

    .line 46
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mSuperHiddenOptions:Landroid/view/View;

    const-string v0, "field \'mDebugDataUsage\'"

    .line 47
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0271

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mDebugDataUsage:Landroid/widget/TextView;

    const-string v0, "field \'mDebugRefreshTiming\'"

    .line 48
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0272

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/screen/SettingsActivity;->mDebugRefreshTiming:Landroid/widget/TextView;

    const-string v0, "method \'onAutoplayClick\'"

    const v1, 0x7f0a0053

    .line 49
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/evie/screen/SettingsActivity_ViewBinding;->view7f0a0053:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/evie/screen/SettingsActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/screen/SettingsActivity_ViewBinding$1;-><init>(Lcom/evie/screen/SettingsActivity_ViewBinding;Lcom/evie/screen/SettingsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity_ViewBinding;->target:Lcom/evie/screen/SettingsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/evie/screen/SettingsActivity_ViewBinding;->target:Lcom/evie/screen/SettingsActivity;

    .line 66
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mSettingsVersion:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mCommandText:Landroid/widget/EditText;

    .line 68
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mSettingsFeedback:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mSettingsDisable:Landroid/widget/TextView;

    .line 70
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mNotification:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mSettingsAutoplaySwitch:Landroid/widget/CompoundButton;

    .line 72
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mSettingsPrivacyPolicy:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mSettingsTermsAndConditions:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mSettingsOpenSourceLicenses:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mHiddenOptions:Landroid/view/View;

    .line 76
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mStaging:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mCrash:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mAbTesting:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mUserId:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mSuperHiddenOptions:Landroid/view/View;

    .line 81
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mDebugDataUsage:Landroid/widget/TextView;

    .line 82
    iput-object v1, v0, Lcom/evie/screen/SettingsActivity;->mDebugRefreshTiming:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity_ViewBinding;->view7f0a0053:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/evie/screen/SettingsActivity_ViewBinding;->view7f0a0053:Landroid/view/View;

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
