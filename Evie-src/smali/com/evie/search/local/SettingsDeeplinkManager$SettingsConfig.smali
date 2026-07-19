.class final enum Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;
.super Ljava/lang/Enum;
.source "SettingsDeeplinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/search/local/SettingsDeeplinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Account:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum AirplaneMode:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Apps:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum BackupReset:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Battery:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Bluetooth:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum DateTime:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum DefaultApps:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Developer:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum DeviceInfo:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Display:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Evie:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Home:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Hotspot:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Keyboard:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Language:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Location:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum NetworkOperator:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Nfc:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum NotificationAccess:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum OverlayPermission:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Screensaver:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Security:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Sound:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Storage:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Wallpaper:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Wifi:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

.field public static final enum Wireless:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;


# instance fields
.field altNameRes:I

.field intent:Landroid/content/Intent;

.field link:Ljava/lang/String;

.field nameRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 22
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Account"

    const-string v2, "android.settings.SYNC_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_account:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Account:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 23
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "AirplaneMode"

    const-string v2, "android.settings.AIRPLANE_MODE_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_airplane_mode:I

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->AirplaneMode:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 24
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v7, "Apps"

    const-string v9, "android.settings.APPLICATION_SETTINGS"

    sget v10, Lcom/evie/search/R$string;->settings_item_apps:I

    sget v11, Lcom/evie/search/R$string;->settings_item_applications:I

    const/4 v8, 0x2

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Apps:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 25
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "BackupReset"

    const-string v2, "android.settings.PRIVACY_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_backup_reset:I

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->BackupReset:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 26
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Battery"

    const-string v2, "android.intent.action.POWER_USAGE_SUMMARY"

    sget v3, Lcom/evie/search/R$string;->settings_item_battery:I

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Battery:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 27
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Bluetooth"

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_bluetooth:I

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Bluetooth:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 28
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "DateTime"

    const-string v2, "android.settings.DATE_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_date_time:I

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->DateTime:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 29
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "DefaultApps"

    const-string v2, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_default_apps:I

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->DefaultApps:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 30
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Developer"

    const-string v2, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_developer:I

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Developer:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 31
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v13, "DeviceInfo"

    const-string v15, "android.settings.DEVICE_INFO_SETTINGS"

    sget v16, Lcom/evie/search/R$string;->settings_item_device_info:I

    sget v17, Lcom/evie/search/R$string;->settings_item_about_device:I

    const/16 v14, 0x9

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->DeviceInfo:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 32
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Display"

    const-string v2, "android.settings.DISPLAY_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_display:I

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Display:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 34
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v14, "Evie"

    const-string v16, "is.shortcut"

    const-string v17, "com.voxel.simplesearchlauncher.settings.SettingsActivity"

    sget v18, Lcom/evie/search/R$string;->settings_item_evie:I

    const/16 v15, 0xb

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Evie:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 35
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v20, "Home"

    const-string v22, "android.settings.HOME_SETTINGS"

    sget v23, Lcom/evie/search/R$string;->settings_item_home:I

    sget v24, Lcom/evie/search/R$string;->settings_item_launcher:I

    const/16 v21, 0xc

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Home:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 36
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v14, "Hotspot"

    const-string v16, "com.android.settings"

    const-string v17, "com.android.settings.TetherSettings"

    sget v18, Lcom/evie/search/R$string;->settings_item_hotspot:I

    const/16 v15, 0xd

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Hotspot:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 37
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v20, "Keyboard"

    const-string v22, "android.settings.INPUT_METHOD_SETTINGS"

    sget v23, Lcom/evie/search/R$string;->settings_item_keyboard:I

    sget v24, Lcom/evie/search/R$string;->settings_item_input_method:I

    const/16 v21, 0xe

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Keyboard:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 38
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Language"

    const-string v2, "android.settings.LOCALE_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_language:I

    const/16 v13, 0xf

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Language:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 39
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Location"

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_location:I

    const/16 v14, 0x10

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Location:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 40
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Nfc"

    const-string v2, "android.settings.NFC_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_nfc:I

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Nfc:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 41
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "NetworkOperator"

    const-string v2, "android.settings.NETWORK_OPERATOR_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_network_operator:I

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->NetworkOperator:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 42
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "NotificationAccess"

    const-string v2, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_notification_access:I

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->NotificationAccess:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 43
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "OverlayPermission"

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    sget v3, Lcom/evie/search/R$string;->settings_item_overlay_permission:I

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->OverlayPermission:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 44
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v20, "Screensaver"

    const-string v22, "android.settings.DREAM_SETTINGS"

    sget v23, Lcom/evie/search/R$string;->settings_item_screensaver:I

    sget v24, Lcom/evie/search/R$string;->settings_item_daydream:I

    const/16 v21, 0x15

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Screensaver:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 45
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Security"

    const-string v2, "android.settings.SECURITY_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_security:I

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Security:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 46
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Sound"

    const-string v2, "android.settings.SOUND_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_sound:I

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Sound:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 47
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Storage"

    const-string v2, "android.settings.INTERNAL_STORAGE_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_storage:I

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Storage:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 49
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v21, "Wallpaper"

    const-string v23, "is.shortcut"

    const-string v24, "com.voxel.launcher3.LauncherWallpaperPickerActivity"

    sget v25, Lcom/evie/search/R$string;->settings_item_wallpaper:I

    const/16 v22, 0x19

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Wallpaper:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 50
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Wifi"

    const-string v2, "android.settings.WIFI_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_wifi:I

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Wifi:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    .line 51
    new-instance v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const-string v1, "Wireless"

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    sget v3, Lcom/evie/search/R$string;->settings_item_wireless:I

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Wireless:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v0, 0x1c

    .line 19
    new-array v0, v0, [Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Account:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->AirplaneMode:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Apps:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->BackupReset:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v6

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Battery:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v7

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Bluetooth:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v8

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->DateTime:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v9

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->DefaultApps:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v10

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Developer:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v11

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->DeviceInfo:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Display:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v12

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Evie:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Home:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Hotspot:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Keyboard:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Language:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v13

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Location:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    aput-object v1, v0, v14

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Nfc:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->NetworkOperator:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->NotificationAccess:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->OverlayPermission:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Screensaver:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Security:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Sound:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Storage:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Wallpaper:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Wifi:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->Wireless:Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->$VALUES:[Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p4, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->nameRes:I

    .line 73
    iput p5, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->altNameRes:I

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "settingsdeeplink:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->link:Ljava/lang/String;

    .line 75
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->intent:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p5, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->nameRes:I

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->altNameRes:I

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "settingsdeeplink:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->link:Ljava/lang/String;

    .line 63
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->intent:Landroid/content/Intent;

    .line 64
    iget-object p1, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;
    .locals 1

    .line 19
    const-class v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    return-object p0
.end method

.method public static values()[Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;
    .locals 1

    .line 19
    sget-object v0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->$VALUES:[Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    invoke-virtual {v0}, [Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    return-object v0
.end method


# virtual methods
.method public getAlternativeName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 83
    iget v0, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->altNameRes:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 79
    iget v0, p0, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->nameRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
