package com.evie.models.weather;

/* JADX INFO: loaded from: classes.dex */
public class WeatherData {
    private int chanceOfRain;
    private String condition;
    private int dailyHigh;
    private int dailyLow;
    private String forecastUrl;
    private String location;
    private String packageId;
    private int temperature;
    private int windSpeed;

    protected boolean canEqual(Object obj) {
        return obj instanceof WeatherData;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof WeatherData)) {
            return false;
        }
        WeatherData weatherData = (WeatherData) obj;
        if (!weatherData.canEqual(this) || getTemperature() != weatherData.getTemperature() || getChanceOfRain() != weatherData.getChanceOfRain() || getDailyHigh() != weatherData.getDailyHigh() || getDailyLow() != weatherData.getDailyLow() || getWindSpeed() != weatherData.getWindSpeed()) {
            return false;
        }
        String condition = getCondition();
        String condition2 = weatherData.getCondition();
        if (condition != null ? !condition.equals(condition2) : condition2 != null) {
            return false;
        }
        String location = getLocation();
        String location2 = weatherData.getLocation();
        if (location != null ? !location.equals(location2) : location2 != null) {
            return false;
        }
        String forecastUrl = getForecastUrl();
        String forecastUrl2 = weatherData.getForecastUrl();
        if (forecastUrl != null ? !forecastUrl.equals(forecastUrl2) : forecastUrl2 != null) {
            return false;
        }
        String packageId = getPackageId();
        String packageId2 = weatherData.getPackageId();
        return packageId != null ? packageId.equals(packageId2) : packageId2 == null;
    }

    public int hashCode() {
        int temperature = ((((((((getTemperature() + 59) * 59) + getChanceOfRain()) * 59) + getDailyHigh()) * 59) + getDailyLow()) * 59) + getWindSpeed();
        String condition = getCondition();
        int iHashCode = (temperature * 59) + (condition == null ? 43 : condition.hashCode());
        String location = getLocation();
        int iHashCode2 = (iHashCode * 59) + (location == null ? 43 : location.hashCode());
        String forecastUrl = getForecastUrl();
        int iHashCode3 = (iHashCode2 * 59) + (forecastUrl == null ? 43 : forecastUrl.hashCode());
        String packageId = getPackageId();
        return (iHashCode3 * 59) + (packageId != null ? packageId.hashCode() : 43);
    }

    public String toString() {
        return "WeatherData(temperature=" + getTemperature() + ", chanceOfRain=" + getChanceOfRain() + ", dailyHigh=" + getDailyHigh() + ", dailyLow=" + getDailyLow() + ", windSpeed=" + getWindSpeed() + ", condition=" + getCondition() + ", location=" + getLocation() + ", forecastUrl=" + getForecastUrl() + ", packageId=" + getPackageId() + ")";
    }

    public int getTemperature() {
        return this.temperature;
    }

    public int getChanceOfRain() {
        return this.chanceOfRain;
    }

    public int getDailyHigh() {
        return this.dailyHigh;
    }

    public int getDailyLow() {
        return this.dailyLow;
    }

    public int getWindSpeed() {
        return this.windSpeed;
    }

    public String getCondition() {
        return this.condition;
    }

    public String getLocation() {
        return this.location;
    }

    public String getForecastUrl() {
        return this.forecastUrl;
    }

    public String getPackageId() {
        return this.packageId;
    }
}
