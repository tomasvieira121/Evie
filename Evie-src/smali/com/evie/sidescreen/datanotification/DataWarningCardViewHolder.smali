.class public Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "DataWarningCardViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATA_TAG:I

.field public static final ID:I

.field private static final TAG_TAG:I


# instance fields
.field mContent:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_data_warning_card:I

    sput v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->ID:I

    .line 20
    sget v0, Lcom/evie/sidescreen/R$id;->tag:I

    sput v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->TAG_TAG:I

    .line 21
    sget v0, Lcom/evie/sidescreen/R$id;->data:I

    sput v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->DATA_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 27
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$string;->ss_data_notification_card_description_part1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/evie/sidescreen/R$string;->ss_data_notification_card_description_more:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 30
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 32
    iget-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->hide()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public onDismiss()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->hide()V

    .line 46
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->onManualDismiss()V

    return-void
.end method

.method public onMoreTap()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$string;->ss_data_notification_card_description_part1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/evie/sidescreen/R$string;->ss_data_notification_card_description_part2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mDescription:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 57
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
