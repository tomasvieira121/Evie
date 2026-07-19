.class public Lcom/evie/jigsaw/components/content/DialogComponent$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DialogComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DialogComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field public final content:Landroid/view/View;

.field public final dismiss:Landroid/widget/ImageView;

.field public final image:Landroid/widget/ImageView;

.field public final negativeButton:Landroid/widget/Button;

.field public final positiveButton:Landroid/widget/Button;

.field public final subtext:Landroid/widget/TextView;

.field public final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 139
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 140
    sget v0, Lcom/evie/jigsaw/R$id;->confab_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->image:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcom/evie/jigsaw/R$id;->confab_dismiss:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->dismiss:Landroid/widget/ImageView;

    .line 142
    sget v0, Lcom/evie/jigsaw/R$id;->confab_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->text:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/evie/jigsaw/R$id;->confab_subtext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->subtext:Landroid/widget/TextView;

    .line 144
    sget v0, Lcom/evie/jigsaw/R$id;->confab_positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->positiveButton:Landroid/widget/Button;

    .line 145
    sget v0, Lcom/evie/jigsaw/R$id;->confab_negative_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->negativeButton:Landroid/widget/Button;

    .line 146
    sget v0, Lcom/evie/jigsaw/R$id;->confab_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DialogComponent$Holder;->content:Landroid/view/View;

    return-void
.end method
