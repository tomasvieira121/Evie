.class public final Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackOptionVM"
.end annotation


# instance fields
.field public isSelected:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;->title:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;->isSelected:Z

    return-void
.end method
