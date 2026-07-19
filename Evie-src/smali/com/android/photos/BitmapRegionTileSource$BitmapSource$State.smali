.class public final enum Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;
.super Ljava/lang/Enum;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/BitmapRegionTileSource$BitmapSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

.field public static final enum ERROR_LOADING:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

.field public static final enum LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

.field public static final enum NOT_LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 159
    new-instance v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    const-string v1, "NOT_LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->NOT_LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    new-instance v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    const-string v1, "LOADED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    new-instance v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    const-string v1, "ERROR_LOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->ERROR_LOADING:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    sget-object v1, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->NOT_LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->ERROR_LOADING:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->$VALUES:[Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;
    .locals 1

    .line 159
    const-class v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    return-object p0
.end method

.method public static values()[Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;
    .locals 1

    .line 159
    sget-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->$VALUES:[Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    invoke-virtual {v0}, [Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    return-object v0
.end method
