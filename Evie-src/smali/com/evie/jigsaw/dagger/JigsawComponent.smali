.class public interface abstract Lcom/evie/jigsaw/dagger/JigsawComponent;
.super Ljava/lang/Object;
.source "JigsawComponent.java"


# virtual methods
.method public abstract analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;
.end method

.method public abstract application()Landroid/app/Application;
.end method

.method public abstract events()Lcom/evie/common/services/events/EventService;
.end method

.method public abstract imageResolver()Lcom/evie/jigsaw/services/images/ImageResolver;
.end method

.method public abstract inject(Lcom/evie/jigsaw/JigsawActivity;)V
.end method

.method public abstract inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V
.end method

.method public abstract inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract inject(Lcom/evie/jigsaw/components/actions/ActionRowComponent;)V
.end method

.method public abstract inject(Lcom/evie/jigsaw/components/content/DetailsComponent;)V
.end method

.method public abstract inject(Lcom/evie/jigsaw/components/content/MediaComponent;)V
.end method

.method public abstract inject(Lcom/evie/jigsaw/views/RichTextView;)V
.end method

.method public abstract settings()Lcom/evie/jigsaw/JigsawSettings;
.end method
