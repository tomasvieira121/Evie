.class public Lcom/evie/models/weather/WeatherData;
.super Ljava/lang/Object;
.source "WeatherData.java"


# instance fields
.field private chanceOfRain:I

.field private condition:Ljava/lang/String;

.field private dailyHigh:I

.field private dailyLow:I

.field private forecastUrl:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private packageId:Ljava/lang/String;

.field private temperature:I

.field private windSpeed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 5
    instance-of p1, p1, Lcom/evie/models/weather/WeatherData;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/evie/models/weather/WeatherData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/evie/models/weather/WeatherData;

    invoke-virtual {p1, p0}, Lcom/evie/models/weather/WeatherData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getTemperature()I

    move-result v1

    invoke-virtual {p1}, Lcom/evie/models/weather/WeatherData;->getTemperature()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getChanceOfRain()I

    move-result v1

    invoke-virtual {p1}, Lcom/evie/models/weather/WeatherData;->getChanceOfRain()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getDailyHigh()I

    move-result v1

    invoke-virtual {p1}, Lcom/evie/models/weather/WeatherData;->getDailyHigh()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getDailyLow()I

    move-result v1

    invoke-virtual {p1}, Lcom/evie/models/weather/WeatherData;->getDailyLow()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getWindSpeed()I

    move-result v1

    invoke-virtual {p1}, Lcom/evie/models/weather/WeatherData;->getWindSpeed()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getCondition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/weather/WeatherData;->getCondition()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_0

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_0
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/weather/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_1

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_1
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getForecastUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/weather/WeatherData;->getForecastUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_2

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_2
    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/weather/WeatherData;->getPackageId()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_e

    if-eqz p1, :cond_f

    goto :goto_3

    :cond_e
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    :goto_3
    return v2

    :cond_f
    return v0
.end method

.method public getChanceOfRain()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/evie/models/weather/WeatherData;->chanceOfRain:I

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/evie/models/weather/WeatherData;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyHigh()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/evie/models/weather/WeatherData;->dailyHigh:I

    return v0
.end method

.method public getDailyLow()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/evie/models/weather/WeatherData;->dailyLow:I

    return v0
.end method

.method public getForecastUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/models/weather/WeatherData;->forecastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/evie/models/weather/WeatherData;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/evie/models/weather/WeatherData;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/evie/models/weather/WeatherData;->temperature:I

    return v0
.end method

.method public getWindSpeed()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/evie/models/weather/WeatherData;->windSpeed:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getTemperature()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getChanceOfRain()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getDailyHigh()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getDailyLow()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getWindSpeed()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getCondition()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    const/16 v2, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    const/16 v2, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getForecastUrl()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    const/16 v2, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getPackageId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherData(temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chanceOfRain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getChanceOfRain()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dailyHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getDailyHigh()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dailyLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getDailyLow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getWindSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getCondition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", forecastUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getForecastUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/weather/WeatherData;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
