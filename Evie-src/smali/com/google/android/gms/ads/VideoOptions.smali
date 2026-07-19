.class public final Lcom/google/android/gms/ads/VideoOptions;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzuz:Z

.field private final zzva:Z

.field private final zzvb:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzato:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzuz:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzva:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatq:Z

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions;->zzvb:Z

    return-void
.end method


# virtual methods
.method public final getClickToExpandRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzvb:Z

    return v0
.end method

.method public final getCustomControlsRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzva:Z

    return v0
.end method

.method public final getStartMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzuz:Z

    return v0
.end method
