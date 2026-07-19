.class final enum Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;
.super Ljava/lang/Enum;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

.field public static final enum ALERT:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

.field public static final enum CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

.field public static final enum GENERAL:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

.field public static final enum SWITCH:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;


# instance fields
.field headerTextResId:I

.field showHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const-string v1, "ALERT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->ALERT:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    .line 49
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const-string v1, "CUSTOMIZATION"

    const/4 v3, 0x1

    const v4, 0x7f120099

    invoke-direct {v0, v1, v3, v4, v3}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    .line 50
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const-string v1, "GENERAL"

    const/4 v4, 0x2

    const v5, 0x7f1200b0

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->GENERAL:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    .line 51
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const-string v1, "SWITCH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->SWITCH:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/4 v0, 0x4

    .line 47
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->ALERT:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->GENERAL:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->SWITCH:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    aput-object v1, v0, v5

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->$VALUES:[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->headerTextResId:I

    .line 58
    iput-boolean p4, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->showHeader:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;
    .locals 1

    .line 47
    const-class v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;
    .locals 1

    .line 47
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->$VALUES:[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    return-object v0
.end method
