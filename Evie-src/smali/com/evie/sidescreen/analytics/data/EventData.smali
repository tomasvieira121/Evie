.class public final Lcom/evie/sidescreen/analytics/data/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# static fields
.field public static final VERBATIM_ATTRIBUTES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "item_type"

    const-string v1, "ui_type"

    const-string v2, "item_position"

    const-string v3, "discovery_view_type"

    const-string v4, "entity_id"

    const-string v5, "class_name"

    const-string v6, "entity_id"

    const-string v7, "screen_position_start"

    const-string v8, "screen_position_end"

    const-string v9, "duration"

    const-string v10, "is_screen_landscape"

    const-string v11, "is_tapped"

    const-string v12, "autoplay_duration"

    const-string v13, "fullscreen_duration"

    const-string v14, "video_length"

    const-string v15, "screen_type"

    const-string v16, "screen_id"

    const-string v17, "screen_subtype"

    const-string v18, "is_video_ad"

    const-string v19, "ad_network"

    const-string v20, "sub_position"

    .line 99
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/analytics/data/EventData;->VERBATIM_ATTRIBUTES:[Ljava/lang/String;

    return-void
.end method
