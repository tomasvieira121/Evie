.class public interface abstract Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;
.super Ljava/lang/Object;
.source "SpacingStrategy.java"


# static fields
.field public static final NO_SPACING:Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy$1;

    invoke-direct {v0}, Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy$1;-><init>()V

    sput-object v0, Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;->NO_SPACING:Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;

    return-void
.end method


# virtual methods
.method public abstract space(Landroid/view/View;II)V
.end method
