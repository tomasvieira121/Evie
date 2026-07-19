.class public final enum Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;
.super Ljava/lang/Enum;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/notification/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

.field public static final enum COUNT:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

.field public static final enum DOTS:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;


# instance fields
.field mIcon:I

.field mLabel:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 43
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    const-string v1, "COUNT"

    const/4 v2, 0x0

    const v3, 0x7f120047

    const v4, 0x7f0800e0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->COUNT:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    .line 44
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    const-string v1, "DOTS"

    const/4 v3, 0x1

    const v4, 0x7f120048

    const v5, 0x7f0800e1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->DOTS:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->COUNT:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->DOTS:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    aput-object v1, v0, v3

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->$VALUES:[Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->mLabel:I

    .line 51
    iput p4, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->mIcon:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;
    .locals 1

    .line 42
    const-class v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;
    .locals 1

    .line 42
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->$VALUES:[Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    return-object v0
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->mIcon:I

    return v0
.end method

.method public getLabel()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->mLabel:I

    return v0
.end method
