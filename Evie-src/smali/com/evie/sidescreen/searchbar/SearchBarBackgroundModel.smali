.class public abstract Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;
.super Ljava/lang/Object;
.source "SearchBarBackgroundModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;
    }
.end annotation


# static fields
.field protected static final ERROR:Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    sput-object v0, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;->ERROR:Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getObservable()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;",
            ">;"
        }
    .end annotation
.end method
