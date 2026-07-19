.class Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "OverscrollLinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1953
    new-instance v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 1923
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 1924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    return-void
.end method

.method public constructor <init>(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;)V
    .locals 1

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1928
    iget v0, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 1929
    iget v0, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 1930
    iget-boolean p1, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method hasValidAnchor()Z
    .locals 1

    .line 1934
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method invalidateAnchor()V
    .locals 1

    const/4 v0, -0x1

    .line 1938
    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorPosition:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1948
    iget p2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    iget p2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1950
    iget-boolean p2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
