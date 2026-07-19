.class public Lcom/evie/sidescreen/dagger/ContextModule;
.super Ljava/lang/Object;
.source "ContextModule.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/evie/sidescreen/R$style;->SideScreenTheme:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-static {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ContextModule;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method providesContext()Landroid/content/Context;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ContextModule;->mContext:Landroid/content/Context;

    return-object v0
.end method
