.class public Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;
.super Ljava/lang/Object;
.source "SearchBarBackgroundModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchBarBackground"
.end annotation


# instance fields
.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mShouldInvert:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean p2, p0, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;->mShouldInvert:Z

    return-void
.end method
