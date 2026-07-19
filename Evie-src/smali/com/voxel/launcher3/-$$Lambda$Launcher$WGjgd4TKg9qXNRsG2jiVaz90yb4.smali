.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$WGjgd4TKg9qXNRsG2jiVaz90yb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/launcher3/-$$Lambda$Launcher$WGjgd4TKg9qXNRsG2jiVaz90yb4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WGjgd4TKg9qXNRsG2jiVaz90yb4;

    invoke-direct {v0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$WGjgd4TKg9qXNRsG2jiVaz90yb4;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WGjgd4TKg9qXNRsG2jiVaz90yb4;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$Launcher$WGjgd4TKg9qXNRsG2jiVaz90yb4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/voxel/launcher3/Launcher;->lambda$getHapticFeedbackTouchListener$27(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
