.class Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;
.super Landroid/view/View$BaseSavedState;
.source "DiscreteSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private max:I

.field private min:I

.field private progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1066
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState$1;

    invoke-direct {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState$1;-><init>()V

    sput-object v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1048
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1049
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->progress:I

    .line 1050
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->max:I

    .line 1051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->min:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1055
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$300(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I
    .locals 0

    .line 1042
    iget p0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->progress:I

    return p0
.end method

.method static synthetic access$302(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I
    .locals 0

    .line 1042
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->progress:I

    return p1
.end method

.method static synthetic access$400(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I
    .locals 0

    .line 1042
    iget p0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->max:I

    return p0
.end method

.method static synthetic access$402(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I
    .locals 0

    .line 1042
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->max:I

    return p1
.end method

.method static synthetic access$500(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I
    .locals 0

    .line 1042
    iget p0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->min:I

    return p0
.end method

.method static synthetic access$502(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I
    .locals 0

    .line 1042
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->min:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1060
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1061
    iget p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    iget p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->max:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    iget p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->min:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
