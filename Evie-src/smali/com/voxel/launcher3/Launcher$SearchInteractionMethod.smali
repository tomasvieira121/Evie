.class public final enum Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;
.super Ljava/lang/Enum;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchInteractionMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

.field public static final enum ASSIST:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

.field public static final enum BACK:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

.field public static final enum HOME:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

.field public static final enum NEG_SPACE:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

.field public static final enum PULL_DOWN:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

.field public static final enum TAP:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6335
    new-instance v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const-string v1, "PULL_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->PULL_DOWN:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    new-instance v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const-string v1, "HOME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->HOME:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    new-instance v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const-string v1, "TAP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->TAP:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    new-instance v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const-string v1, "ASSIST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->ASSIST:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    new-instance v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const-string v1, "BACK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->BACK:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    new-instance v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const-string v1, "NEG_SPACE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->NEG_SPACE:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    sget-object v1, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->PULL_DOWN:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->HOME:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->TAP:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->ASSIST:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->BACK:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->NEG_SPACE:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    aput-object v1, v0, v7

    sput-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->$VALUES:[Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;
    .locals 1

    .line 6335
    const-class v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    return-object p0
.end method

.method public static values()[Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;
    .locals 1

    .line 6335
    sget-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->$VALUES:[Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    invoke-virtual {v0}, [Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    return-object v0
.end method
