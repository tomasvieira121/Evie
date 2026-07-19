.class public Lcom/evie/search/model/SearchPresenterData;
.super Ljava/lang/Object;
.source "SearchPresenterData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/search/model/SearchPresenterData$DataType;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private dataType:Lcom/evie/search/model/SearchPresenterData$DataType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/evie/search/model/SearchPresenterData$DataType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;",
            "Lcom/evie/search/model/SearchPresenterData$DataType;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/search/model/SearchPresenterData;->data:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/evie/search/model/SearchPresenterData;->dataType:Lcom/evie/search/model/SearchPresenterData$DataType;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/evie/search/model/SearchPresenterData;->data:Ljava/util/List;

    return-object v0
.end method

.method public getDataType()Lcom/evie/search/model/SearchPresenterData$DataType;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/evie/search/model/SearchPresenterData;->dataType:Lcom/evie/search/model/SearchPresenterData$DataType;

    return-object v0
.end method
