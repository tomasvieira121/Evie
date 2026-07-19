.class public final enum Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;
.super Ljava/lang/Enum;
.source "CustomGestureAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

.field public static final enum APP_DRAWER:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

.field public static final enum EVIE_SEARCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

.field public static final enum EXPAND_NOTIFICATIONS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

.field public static final enum GOOGLE_NOW:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

.field public static final enum GOOGLE_VOICE_SEARCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

.field public static final enum LAUNCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

.field public static final enum NONE:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

.field public static final enum SCREEN_LOCK_DEVICE_ADMIN:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

.field public static final enum SCREEN_LOCK_WRITE_SETTINGS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;


# instance fields
.field action:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;

.field public titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const-string v1, "NONE"

    new-instance v2, Lcom/voxel/simplesearchlauncher/gestures/action/NoneAction;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/gestures/action/NoneAction;-><init>()V

    const/4 v3, 0x0

    const v4, 0x7f120157

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->NONE:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 13
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const-string v1, "LAUNCH"

    new-instance v2, Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;-><init>()V

    const/4 v4, 0x1

    const v5, 0x7f120155

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->LAUNCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 14
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const-string v1, "APP_DRAWER"

    new-instance v2, Lcom/voxel/simplesearchlauncher/gestures/action/AppDrawerAction;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/gestures/action/AppDrawerAction;-><init>()V

    const/4 v5, 0x2

    const v6, 0x7f120150

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->APP_DRAWER:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 15
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const-string v1, "EVIE_SEARCH"

    new-instance v2, Lcom/voxel/simplesearchlauncher/gestures/action/EvieSearchAction;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/gestures/action/EvieSearchAction;-><init>()V

    const/4 v6, 0x3

    const v7, 0x7f120151

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->EVIE_SEARCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 16
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const-string v1, "EXPAND_NOTIFICATIONS"

    new-instance v2, Lcom/voxel/simplesearchlauncher/gestures/action/ExpandNotificationShadeAction;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/gestures/action/ExpandNotificationShadeAction;-><init>()V

    const/4 v7, 0x4

    const v8, 0x7f120152

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->EXPAND_NOTIFICATIONS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 17
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const-string v1, "GOOGLE_NOW"

    new-instance v2, Lcom/voxel/simplesearchlauncher/gestures/action/GoogleNowAction;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/gestures/action/GoogleNowAction;-><init>()V

    const/4 v8, 0x5

    const v9, 0x7f120153

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->GOOGLE_NOW:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 18
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const-string v1, "GOOGLE_VOICE_SEARCH"

    new-instance v2, Lcom/voxel/simplesearchlauncher/gestures/action/GoogleVoiceSearchAction;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/gestures/action/GoogleVoiceSearchAction;-><init>()V

    const/4 v9, 0x6

    const v10, 0x7f120154

    invoke-direct {v0, v1, v9, v2, v10}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->GOOGLE_VOICE_SEARCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 19
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const-string v1, "SCREEN_LOCK_DEVICE_ADMIN"

    new-instance v2, Lcom/voxel/simplesearchlauncher/gestures/action/ScreenLockDeviceAdminAction;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/gestures/action/ScreenLockDeviceAdminAction;-><init>()V

    const/4 v10, 0x7

    const v11, 0x7f120158

    invoke-direct {v0, v1, v10, v2, v11}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_DEVICE_ADMIN:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 20
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const-string v1, "SCREEN_LOCK_WRITE_SETTINGS"

    new-instance v2, Lcom/voxel/simplesearchlauncher/gestures/action/ScreenLockWriteSettingsAction;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/gestures/action/ScreenLockWriteSettingsAction;-><init>()V

    const/16 v11, 0x8

    const v12, 0x7f12015a

    invoke-direct {v0, v1, v11, v2, v12}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;-><init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_WRITE_SETTINGS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    const/16 v0, 0x9

    .line 10
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->NONE:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->LAUNCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->APP_DRAWER:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->EVIE_SEARCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->EXPAND_NOTIFICATIONS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->GOOGLE_NOW:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->GOOGLE_VOICE_SEARCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    aput-object v1, v0, v9

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_DEVICE_ADMIN:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    aput-object v1, v0, v10

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_WRITE_SETTINGS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    aput-object v1, v0, v11

    sput-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->$VALUES:[Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;",
            "I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->action:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;

    .line 31
    iput p4, p0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->titleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;
    .locals 1

    .line 10
    const-class v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;
    .locals 1

    .line 10
    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->$VALUES:[Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    return-object v0
.end method


# virtual methods
.method public onAction(Lcom/voxel/launcher3/Launcher;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->action:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;

    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;->onAction(Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method
