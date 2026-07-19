.class public final Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;
.super Ljava/lang/Object;
.source "WhiteSearchBarBackgroundModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@AutoFactory method argument is null but is not marked @Nullable. Argument index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public create(Landroid/view/View;)Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;
    .locals 2

    .line 16
    new-instance v0, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;-><init>(Landroid/view/View;)V

    return-object v0
.end method
