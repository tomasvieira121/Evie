.class final enum Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;
.super Ljava/lang/Enum;
.source "WeatherPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/weather/WeatherPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Condition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum DAY_CLEAR:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum DAY_CLOUDY:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum DAY_CLOUDY_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum DAY_RAIN:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum DAY_SNOW:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum DAY_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum NIGHT_CLEAR:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum NIGHT_CLOUDY:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum NIGHT_CLOUDY_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum NIGHT_RAIN:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum NIGHT_SNOW:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field public static final enum NIGHT_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

.field private static final sConditionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field key:Ljava/lang/String;

.field resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 216
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "DAY_CLEAR"

    const-string v2, "day_clear"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_day_clear:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_CLEAR:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 217
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "DAY_CLOUDY"

    const-string v2, "day_cloudy"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_day_cloudy:I

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_CLOUDY:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 218
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "DAY_CLOUDY_WIND"

    const-string v2, "day_cloudy_wind"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_day_cloudy_wind:I

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_CLOUDY_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 219
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "DAY_RAIN"

    const-string v2, "day_rain"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_day_rain:I

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_RAIN:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 220
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "DAY_SNOW"

    const-string v2, "day_snow"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_day_snow:I

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_SNOW:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 221
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "DAY_WIND"

    const-string v2, "day_wind"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_day_rain:I

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 222
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "NIGHT_CLEAR"

    const-string v2, "night_clear"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_night_clear:I

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_CLEAR:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 223
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "NIGHT_CLOUDY"

    const-string v2, "night_cloudy"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_day_cloudy:I

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_CLOUDY:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 224
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "NIGHT_CLOUDY_WIND"

    const-string v2, "night_cloudy_wind"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_night_cloudy_wind:I

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_CLOUDY_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 225
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "NIGHT_RAIN"

    const-string v2, "night_rain"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_night_rain:I

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_RAIN:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 226
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "NIGHT_SNOW"

    const-string v2, "night_snow"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_night_snow:I

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_SNOW:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 227
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const-string v1, "NIGHT_WIND"

    const-string v2, "night_wind"

    sget v3, Lcom/evie/sidescreen/R$drawable;->weather_icon_condition_day_wind:I

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    const/16 v0, 0xc

    .line 215
    new-array v0, v0, [Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_CLEAR:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_CLOUDY:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_CLOUDY_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_RAIN:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_SNOW:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->DAY_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v9

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_CLEAR:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v10

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_CLOUDY:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v11

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_CLOUDY_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v12

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_RAIN:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v13

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_SNOW:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v14

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->NIGHT_WIND:Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    aput-object v1, v0, v15

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->$VALUES:[Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->sConditionMap:Ljava/util/Map;

    .line 240
    invoke-static {}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->values()[Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 241
    sget-object v3, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->sConditionMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->key:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    iput-object p3, p0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->key:Ljava/lang/String;

    .line 234
    iput p4, p0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->resourceId:I

    return-void
.end method

.method public static getConditionForKey(Ljava/lang/String;)Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;
    .locals 1

    .line 246
    sget-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->sConditionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;
    .locals 1

    .line 215
    const-class v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    return-object p0
.end method

.method public static values()[Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;
    .locals 1

    .line 215
    sget-object v0, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->$VALUES:[Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    invoke-virtual {v0}, [Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    return-object v0
.end method
