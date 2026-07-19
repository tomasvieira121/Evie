.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$xaUKz3V1-G_T7NEjkHcuzVVOtYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$xaUKz3V1-G_T7NEjkHcuzVVOtYo;->f$0:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$xaUKz3V1-G_T7NEjkHcuzVVOtYo;->f$0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/voxel/launcher3/WidgetPreviewLoader;->lambda$mutateOnMainThread$0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
