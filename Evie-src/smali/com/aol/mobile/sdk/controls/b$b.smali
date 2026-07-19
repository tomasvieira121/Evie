.class Lcom/aol/mobile/sdk/controls/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Landroid/widget/ImageView;

.field final c:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/b$b;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/b$b;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/b$b;->c:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Lcom/aol/mobile/sdk/controls/b$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/controls/b$b;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
