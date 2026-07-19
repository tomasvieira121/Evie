.class public interface abstract Lcom/evie/jigsaw/services/layout/LayoutService;
.super Ljava/lang/Object;
.source "LayoutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/services/layout/LayoutService$FailureCall;,
        Lcom/evie/jigsaw/services/layout/LayoutService$SuccessCall;,
        Lcom/evie/jigsaw/services/layout/LayoutService$ConstantCall;
    }
.end annotation


# virtual methods
.method public abstract resolve(Landroid/net/Uri;)Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;"
        }
    .end annotation
.end method
