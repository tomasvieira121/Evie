.class public final Lcom/aol/mobile/sdk/controls/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdControlsView:[I

.field public static final AdControlsView_accentColor:I = 0x0

.field public static final AdControlsView_mainColor:I = 0x1

.field public static final ContentControlsView:[I

.field public static final ContentControlsView_accentColor:I = 0x0

.field public static final ContentControlsView_mainColor:I = 0x1

.field public static final TintableImageButton:[I

.field public static final TintableImageButton_accentColor:I = 0x0

.field public static final TintableImageButton_mainColor:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 184
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/aol/mobile/sdk/controls/R$styleable;->AdControlsView:[I

    .line 187
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/aol/mobile/sdk/controls/R$styleable;->ContentControlsView:[I

    .line 190
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/aol/mobile/sdk/controls/R$styleable;->TintableImageButton:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040000
        0x7f0401dd
    .end array-data

    :array_1
    .array-data 4
        0x7f040000
        0x7f0401dd
    .end array-data

    :array_2
    .array-data 4
        0x7f040000
        0x7f0401dd
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
