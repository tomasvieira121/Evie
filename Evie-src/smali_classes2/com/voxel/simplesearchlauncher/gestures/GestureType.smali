.class public final enum Lcom/voxel/simplesearchlauncher/gestures/GestureType;
.super Ljava/lang/Enum;
.source "GestureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/gestures/GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field public static final enum DOUBLE_TAP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field public static final enum EXPAND:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field public static final enum HOME:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field public static final enum PINCH:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field public static final enum SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field public static final enum SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field public static final enum TWO_FINGER_SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field public static final enum TWO_FINGER_SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;


# instance fields
.field public titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 7
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    const-string v1, "HOME"

    const/4 v2, 0x0

    const v3, 0x7f12015d

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->HOME:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    .line 8
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    const-string v1, "DOUBLE_TAP"

    const/4 v3, 0x1

    const v4, 0x7f12015b

    invoke-direct {v0, v1, v3, v4}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->DOUBLE_TAP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    .line 9
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    const-string v1, "SWIPE_UP"

    const/4 v4, 0x2

    const v5, 0x7f120160

    invoke-direct {v0, v1, v4, v5}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    .line 10
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    const-string v1, "SWIPE_DOWN"

    const/4 v5, 0x3

    const v6, 0x7f12015f

    invoke-direct {v0, v1, v5, v6}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    .line 11
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    const-string v1, "PINCH"

    const/4 v6, 0x4

    const v7, 0x7f12015e

    invoke-direct {v0, v1, v6, v7}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->PINCH:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    .line 12
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    const-string v1, "EXPAND"

    const/4 v7, 0x5

    const v8, 0x7f12015c

    invoke-direct {v0, v1, v7, v8}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->EXPAND:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    .line 13
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    const-string v1, "TWO_FINGER_SWIPE_UP"

    const/4 v8, 0x6

    const v9, 0x7f120162

    invoke-direct {v0, v1, v8, v9}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->TWO_FINGER_SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    .line 14
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    const-string v1, "TWO_FINGER_SWIPE_DOWN"

    const/4 v9, 0x7

    const v10, 0x7f120161

    invoke-direct {v0, v1, v9, v10}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->TWO_FINGER_SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    const/16 v0, 0x8

    .line 5
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->HOME:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->DOUBLE_TAP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->PINCH:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->EXPAND:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->TWO_FINGER_SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->TWO_FINGER_SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->$VALUES:[Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->titleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/gestures/GestureType;
    .locals 1

    .line 5
    const-class v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/gestures/GestureType;
    .locals 1

    .line 5
    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->$VALUES:[Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/gestures/GestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    return-object v0
.end method
