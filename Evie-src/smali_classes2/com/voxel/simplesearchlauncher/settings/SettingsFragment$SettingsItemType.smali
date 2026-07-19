.class final enum Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;
.super Ljava/lang/Enum;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum APP_DRAWER:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum BACKUP_AND_RESTORE:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum BADGES:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum CHANGE_ICON_PACK:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum DESKTOP_SETTINGS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum DOCK_SETTINGS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum FEEDBACK:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum FOLDER_SETTINGS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum GESTURES:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum HIDE_APPS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum PERMISSIONS_REQUIRED:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum PRIVACY_POLICY:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum SEARCH:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

.field public static final enum SWITCH_LAUNCHER:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;


# instance fields
.field group:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

.field iconResId:I

.field mainTextResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 63
    new-instance v6, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v1, "PERMISSIONS_REQUIRED"

    sget-object v3, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->ALERT:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v5, 0x7f1200b8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v6, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->PERMISSIONS_REQUIRED:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 64
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v8, "DESKTOP_SETTINGS"

    sget-object v10, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/4 v9, 0x1

    const v11, 0x7f0800fd

    const v12, 0x7f1200a1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->DESKTOP_SETTINGS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 65
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v2, "DOCK_SETTINGS"

    sget-object v4, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/4 v3, 0x2

    const v5, 0x7f0800e5

    const v6, 0x7f1200a4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->DOCK_SETTINGS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 66
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v8, "CHANGE_ICON_PACK"

    sget-object v10, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/4 v9, 0x3

    const v11, 0x7f0800dc

    const v12, 0x7f1200b4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->CHANGE_ICON_PACK:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 67
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v2, "FOLDER_SETTINGS"

    sget-object v4, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/4 v3, 0x4

    const v5, 0x7f0800e9

    const v6, 0x7f1200a8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->FOLDER_SETTINGS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 68
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v8, "BADGES"

    sget-object v10, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/4 v9, 0x5

    const v11, 0x7f0800c1

    const v12, 0x7f120091

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->BADGES:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 69
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v2, "GESTURES"

    sget-object v4, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/4 v3, 0x6

    const v5, 0x7f0800ec

    const v6, 0x7f1200b1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->GESTURES:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 70
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v8, "APP_DRAWER"

    sget-object v10, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/4 v9, 0x7

    const v11, 0x7f0800a6

    const v12, 0x7f12006b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->APP_DRAWER:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 71
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v2, "SEARCH"

    sget-object v4, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/16 v3, 0x8

    const v5, 0x7f080104

    const v6, 0x7f1200d3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->SEARCH:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 72
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v8, "HIDE_APPS"

    sget-object v10, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->CUSTOMIZATION:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/16 v9, 0x9

    const v11, 0x7f080113

    const v12, 0x7f120057

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->HIDE_APPS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 73
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v2, "BACKUP_AND_RESTORE"

    sget-object v4, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->GENERAL:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/16 v3, 0xa

    const v5, 0x7f0800ef

    const v6, 0x7f120090

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->BACKUP_AND_RESTORE:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 74
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v8, "FEEDBACK"

    sget-object v10, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->GENERAL:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/16 v9, 0xb

    const v11, 0x7f0800e8

    const v12, 0x7f1200a7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->FEEDBACK:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 75
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v2, "PRIVACY_POLICY"

    sget-object v4, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->GENERAL:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/16 v3, 0xc

    const v5, 0x7f0800f0

    const v6, 0x7f1200ba

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->PRIVACY_POLICY:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    .line 77
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const-string v8, "SWITCH_LAUNCHER"

    sget-object v10, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;->SWITCH:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    const/16 v9, 0xd

    const v11, 0x7f0800e2

    const v12, 0x7f1200d4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->SWITCH_LAUNCHER:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/16 v0, 0xe

    .line 62
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->PERMISSIONS_REQUIRED:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->DESKTOP_SETTINGS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->DOCK_SETTINGS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->CHANGE_ICON_PACK:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->FOLDER_SETTINGS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->BADGES:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->GESTURES:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->APP_DRAWER:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->SEARCH:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->HIDE_APPS:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->BACKUP_AND_RESTORE:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->FEEDBACK:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->PRIVACY_POLICY:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->SWITCH_LAUNCHER:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->$VALUES:[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;",
            "II)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->group:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsGroup;

    .line 85
    iput p4, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->iconResId:I

    .line 86
    iput p5, p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->mainTextResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;
    .locals 1

    .line 62
    const-class v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;
    .locals 1

    .line 62
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->$VALUES:[Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    return-object v0
.end method
