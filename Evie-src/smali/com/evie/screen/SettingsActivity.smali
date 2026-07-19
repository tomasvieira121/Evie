.class public Lcom/evie/screen/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"


# instance fields
.field mAbTesting:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field mCommandText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCrash:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDebugDataUsage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDebugRefreshTiming:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mHiddenOptions:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mNotification:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mOnClickAbTesting:Landroid/view/View$OnClickListener;

.field private final mOnClickCrash:Landroid/view/View$OnClickListener;

.field private final mOnClickDebugDataUsage:Landroid/view/View$OnClickListener;

.field private final mOnClickDebugRefreshTiming:Landroid/view/View$OnClickListener;

.field private final mOnClickDisable:Landroid/view/View$OnClickListener;

.field private final mOnClickFeedback:Landroid/view/View$OnClickListener;

.field private final mOnClickOpenSourceLicenses:Landroid/view/View$OnClickListener;

.field private final mOnClickPrivacyPolicy:Landroid/view/View$OnClickListener;

.field private final mOnClickStaging:Landroid/view/View$OnClickListener;

.field private final mOnClickTermsAndConditions:Landroid/view/View$OnClickListener;

.field private final mOnClickUserId:Landroid/view/View$OnClickListener;

.field private final mOnClickVersion:Landroid/view/View$OnClickListener;

.field mSettingsAutoplaySwitch:Landroid/widget/CompoundButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSettingsDisable:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSettingsFeedback:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSettingsOpenSourceLicenses:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSettingsPrivacyPolicy:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSettingsTermsAndConditions:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSettingsVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

.field mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field mStaging:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSuperHiddenOptions:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mTokenRegistrationDisposable:Lio/reactivex/disposables/Disposable;

.field mUserId:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mVersionCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/evie/screen/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/evie/screen/SettingsActivity$1;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickVersion:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lcom/evie/screen/-$$Lambda$SettingsActivity$RoPzFtUaj7JOU-0dp-sG3FQ3nKg;

    invoke-direct {v0, p0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$RoPzFtUaj7JOU-0dp-sG3FQ3nKg;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickFeedback:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/evie/screen/-$$Lambda$SettingsActivity$KsdkMl9qirBVt8ZalYVj0AtS9Cs;

    invoke-direct {v0, p0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$KsdkMl9qirBVt8ZalYVj0AtS9Cs;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickDisable:Landroid/view/View$OnClickListener;

    .line 214
    new-instance v0, Lcom/evie/screen/-$$Lambda$SettingsActivity$b1hVV_WkZwNKi_PxsAvx_b8L-VQ;

    invoke-direct {v0, p0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$b1hVV_WkZwNKi_PxsAvx_b8L-VQ;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickPrivacyPolicy:Landroid/view/View$OnClickListener;

    .line 223
    new-instance v0, Lcom/evie/screen/-$$Lambda$SettingsActivity$F-okk9jyJD1wEtD4v04dJRKEVjM;

    invoke-direct {v0, p0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$F-okk9jyJD1wEtD4v04dJRKEVjM;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickTermsAndConditions:Landroid/view/View$OnClickListener;

    .line 232
    new-instance v0, Lcom/evie/screen/-$$Lambda$SettingsActivity$LNlCJXhzAWT7dWUFho8QLqkzkDA;

    invoke-direct {v0, p0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$LNlCJXhzAWT7dWUFho8QLqkzkDA;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickOpenSourceLicenses:Landroid/view/View$OnClickListener;

    .line 240
    new-instance v0, Lcom/evie/screen/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/evie/screen/SettingsActivity$2;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickStaging:Landroid/view/View$OnClickListener;

    .line 261
    sget-object v0, Lcom/evie/screen/-$$Lambda$SettingsActivity$cKIOCc0o5npAfqNHWyz3utSZMP8;->INSTANCE:Lcom/evie/screen/-$$Lambda$SettingsActivity$cKIOCc0o5npAfqNHWyz3utSZMP8;

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickCrash:Landroid/view/View$OnClickListener;

    .line 268
    new-instance v0, Lcom/evie/screen/-$$Lambda$SettingsActivity$JZBLTiKtbVbfFGZe5Nm1fNTQ-Ys;

    invoke-direct {v0, p0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$JZBLTiKtbVbfFGZe5Nm1fNTQ-Ys;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickAbTesting:Landroid/view/View$OnClickListener;

    .line 276
    new-instance v0, Lcom/evie/screen/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/evie/screen/SettingsActivity$3;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickUserId:Landroid/view/View$OnClickListener;

    .line 333
    new-instance v0, Lcom/evie/screen/SettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/evie/screen/SettingsActivity$4;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickDebugDataUsage:Landroid/view/View$OnClickListener;

    .line 352
    new-instance v0, Lcom/evie/screen/SettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/evie/screen/SettingsActivity$5;-><init>(Lcom/evie/screen/SettingsActivity;)V

    iput-object v0, p0, Lcom/evie/screen/SettingsActivity;->mOnClickDebugRefreshTiming:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/screen/SettingsActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/evie/screen/SettingsActivity;->mVersionCount:I

    return p0
.end method

.method static synthetic access$008(Lcom/evie/screen/SettingsActivity;)I
    .locals 2

    .line 54
    iget v0, p0, Lcom/evie/screen/SettingsActivity;->mVersionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/evie/screen/SettingsActivity;->mVersionCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/evie/screen/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/screen/SettingsActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/evie/screen/SettingsActivity;->handleHiddenOptions()V

    return-void
.end method

.method static synthetic access$300(Lcom/evie/screen/SettingsActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/evie/screen/SettingsActivity;->handleSuperHiddenOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/evie/screen/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/evie/screen/SettingsActivity;->copyStringToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/evie/screen/SettingsActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity;->mTokenRegistrationDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private canHandleDisableIntent()Z
    .locals 1

    .line 454
    invoke-direct {p0}, Lcom/evie/screen/SettingsActivity;->getDisableIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 9

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, p0, v3

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x0

    :goto_1
    if-ltz v5, :cond_0

    const/16 v7, 0x9

    if-gt v5, v7, :cond_0

    add-int/lit8 v5, v5, 0x30

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v5, v5, 0x61

    :goto_2
    int-to-char v5, v5

    .line 529
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v4, 0xf

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    if-lt v6, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    .line 534
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private copyStringToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "clipboard"

    .line 322
    invoke-virtual {p0, v0}, Lcom/evie/screen/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 323
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 324
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private getDisableIntent()Landroid/content/Intent;
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SETTINGS_ACTIVITY_LAUNCH_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "com.lge.launcher3.intent.action.SHOW_SETTING"

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0, v1, v0}, Lcom/evie/screen/SettingsActivity;->getIntentWithAction(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/evie/screen/SettingsActivity;->isValidIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ZteAppFlashSettingsActivity"

    .line 182
    invoke-direct {p0, v0, v2}, Lcom/evie/screen/SettingsActivity;->getIntentWithClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0}, Lcom/evie/screen/SettingsActivity;->isValidIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_LAUNCHER_PACKAGE_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {p0, v0, v2}, Lcom/evie/screen/SettingsActivity;->getIntentWithAction(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    invoke-direct {p0, v0}, Lcom/evie/screen/SettingsActivity;->isValidIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getIntentWithAction(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10008000

    .line 193
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private getIntentWithClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getSha1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    .line 512
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 513
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 514
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 515
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 516
    invoke-static {p0}, Lcom/evie/screen/SettingsActivity;->convertToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleHiddenOptions()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mHiddenOptions:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mStaging:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickStaging:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mCrash:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickCrash:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mAbTesting:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickAbTesting:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mUserId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickUserId:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mStaging:Landroid/widget/TextView;

    const-string v1, "Pointing to STAGING tap to toggle and restart AppFlash"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mStaging:Landroid/widget/TextView;

    const-string v1, "Pointing to PRODUCTION tap to toggle and restart AppFlash"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private handleSuperHiddenOptions()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mSuperHiddenOptions:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mDebugDataUsage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickDebugDataUsage:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.evie.screen.SettingsActivity.PREF_DEBUG_DATA_USAGE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mDebugDataUsage:Landroid/widget/TextView;

    const-string v2, "Data usage debug is ENABLED tap to toggle and restart AppFlash"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mDebugDataUsage:Landroid/widget/TextView;

    const-string v2, "Data usage debug is DISABLED tap to toggle and restart AppFlash"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mDebugRefreshTiming:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickDebugRefreshTiming:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.evie.screen.SettingsActivity.PREF_DEBUG_TILES_REFRESH_TIME_LIMIT"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mDebugRefreshTiming:Landroid/widget/TextView;

    const-string v1, "Tiles refresh fast timer for debug is ENABLED. tap to toggle and restart AppFlash"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mDebugRefreshTiming:Landroid/widget/TextView;

    const-string v1, "Tiles refresh fast timer for debug is DISABLED. tap to toggle and restart AppFlash"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private isValidIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 458
    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/evie/screen/SettingsActivity;Landroid/view/View;)V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12022a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?subject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AppFlash feedback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    .line 143
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.SUBJECT"

    const-string v1, "AppFlash feedback"

    .line 144
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/evie/screen/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/evie/screen/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/evie/screen/SettingsActivity;->getDisableIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lcom/evie/screen/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/evie/screen/SettingsActivity;Landroid/view/View;)V
    .locals 2

    .line 215
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://www.verizon.com/about/privacy/AppFlash-privacy-policy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/evie/screen/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/evie/screen/SettingsActivity;Landroid/view/View;)V
    .locals 1

    .line 224
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/evie/screen/TermsAndConditionsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/evie/screen/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$new$4(Lcom/evie/screen/SettingsActivity;Landroid/view/View;)V
    .locals 2

    const p1, 0x7f110001

    .line 232
    invoke-static {p1}, Lcom/evie/common/licenses/LicenseDialogFragment;->newInstance(I)Lcom/evie/common/licenses/LicenseDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "notice"

    invoke-virtual {p1, v0, v1}, Lcom/evie/common/licenses/LicenseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    .line 262
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Forcing crash"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lambda$new$6(Lcom/evie/screen/SettingsActivity;Landroid/view/View;)V
    .locals 1

    .line 269
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 270
    const-class v0, Lcom/evie/common/settings/AbTestActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, p1}, Lcom/evie/screen/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$null$7(Lcom/evie/screen/SettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 405
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsAutoplaySwitch:Landroid/widget/CompoundButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$null$8(Lcom/evie/screen/SettingsActivity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 406
    iget-object p2, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic lambda$onCreate$10(Lcom/evie/screen/SettingsActivity;Landroid/view/View;)V
    .locals 2

    .line 416
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 417
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "app_package"

    .line 419
    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "app_uid"

    .line 420
    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.provider.extra.APP_PACKAGE"

    .line 422
    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0, p1}, Lcom/evie/screen/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$9(Lcom/evie/screen/SettingsActivity;Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 402
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120212

    .line 403
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12020f

    .line 404
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120210

    new-instance v1, Lcom/evie/screen/-$$Lambda$SettingsActivity$CVl6RXsDbKylCpbYSkQhNENJXic;

    invoke-direct {v1, p0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$CVl6RXsDbKylCpbYSkQhNENJXic;-><init>(Lcom/evie/screen/SettingsActivity;)V

    .line 405
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120211

    new-instance v1, Lcom/evie/screen/-$$Lambda$SettingsActivity$cjBNERFYgmhy1S0Mm24Itg4mel8;

    invoke-direct {v1, p0, p2}, Lcom/evie/screen/-$$Lambda$SettingsActivity$cjBNERFYgmhy1S0Mm24Itg4mel8;-><init>(Lcom/evie/screen/SettingsActivity;Z)V

    .line 406
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 407
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAutoplayClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mSettingsAutoplaySwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 372
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 373
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "com.voxel.launcher3.prefs"

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, p1, v0}, Lcom/evie/screen/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const p1, 0x7f0d00b8

    .line 378
    invoke-virtual {p0, p1}, Lcom/evie/screen/SettingsActivity;->setContentView(I)V

    .line 379
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 380
    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 382
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "2.14.8"

    aput-object v4, v3, v0

    const v4, 0x7f12023e

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsVersion:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickVersion:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    invoke-direct {p0}, Lcom/evie/screen/SettingsActivity;->canHandleDisableIntent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsDisable:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickDisable:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsDisable:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :goto_0
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsFeedback:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickFeedback:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsTermsAndConditions:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickTermsAndConditions:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsPrivacyPolicy:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickPrivacyPolicy:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsOpenSourceLicenses:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mOnClickOpenSourceLicenses:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsAutoplaySwitch:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 399
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSettingsAutoplaySwitch:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/evie/screen/-$$Lambda$SettingsActivity$fB6vSQdypSuBPMJRN7KslEQf7m8;

    invoke-direct {v2, p0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$fB6vSQdypSuBPMJRN7KslEQf7m8;-><init>(Lcom/evie/screen/SettingsActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 415
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mNotification:Landroid/widget/TextView;

    new-instance v2, Lcom/evie/screen/-$$Lambda$SettingsActivity$lzASTZObd-CUmRqnNCdGYmBQ32s;

    invoke-direct {v2, p0}, Lcom/evie/screen/-$$Lambda$SettingsActivity$lzASTZObd-CUmRqnNCdGYmBQ32s;-><init>(Lcom/evie/screen/SettingsActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.evie.screen.SettingsActivity.PREF_SUPER_HIDDEN_OPTIONS_VISIBLE"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 427
    invoke-direct {p0}, Lcom/evie/screen/SettingsActivity;->handleHiddenOptions()V

    .line 428
    invoke-direct {p0}, Lcom/evie/screen/SettingsActivity;->handleSuperHiddenOptions()V

    goto :goto_1

    .line 429
    :cond_1
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.evie.screen.SettingsActivity.PREF_HIDDEN_OPTIONS_VISIBLE"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 430
    invoke-direct {p0}, Lcom/evie/screen/SettingsActivity;->handleHiddenOptions()V

    .line 433
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.evie.screen.SettingsActivity.PREF_SETTINGS_DISPLAYED"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 435
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "com.evie.screen.SettingsActivity.PREF_SETTINGS_DISPLAYED"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 447
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 448
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mTokenRegistrationDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 501
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 507
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/evie/screen/SettingsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 6

    .line 441
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 442
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v1, "settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
