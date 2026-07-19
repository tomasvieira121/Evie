.class public final Lcom/evie/jigsaw/views/RichTextView_MembersInjector;
.super Ljava/lang/Object;
.source "RichTextView_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMLinkResolver(Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/common/services/links/LinkResolver;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    return-void
.end method
