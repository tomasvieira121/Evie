.class final Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "OverscrollLinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;
    .locals 1

    .line 1957
    new-instance v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    invoke-direct {v0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1954
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;
    .locals 0

    .line 1962
    new-array p1, p1, [Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1954
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState$1;->newArray(I)[Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method
