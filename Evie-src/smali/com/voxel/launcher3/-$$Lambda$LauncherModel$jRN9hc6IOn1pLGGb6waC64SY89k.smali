.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$jRN9hc6IOn1pLGGb6waC64SY89k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/launcher3/-$$Lambda$LauncherModel$jRN9hc6IOn1pLGGb6waC64SY89k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$jRN9hc6IOn1pLGGb6waC64SY89k;

    invoke-direct {v0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$jRN9hc6IOn1pLGGb6waC64SY89k;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$jRN9hc6IOn1pLGGb6waC64SY89k;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$LauncherModel$jRN9hc6IOn1pLGGb6waC64SY89k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/voxel/launcher3/AppInfo;

    check-cast p2, Lcom/voxel/launcher3/AppInfo;

    invoke-static {p1, p2}, Lcom/voxel/launcher3/LauncherModel;->lambda$static$22(Lcom/voxel/launcher3/AppInfo;Lcom/voxel/launcher3/AppInfo;)I

    move-result p1

    return p1
.end method
