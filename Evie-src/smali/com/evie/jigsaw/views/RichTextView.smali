.class public Lcom/evie/jigsaw/views/RichTextView;
.super Landroid/widget/TextView;
.source "RichTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/views/RichTextView$UnderlineSpan;,
        Lcom/evie/jigsaw/views/RichTextView$BoxedTextSpan;,
        Lcom/evie/jigsaw/views/RichTextView$RoundedBackgroundColorSpan;,
        Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;,
        Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;
    }
.end annotation


# instance fields
.field private mComponent:Lcom/evie/jigsaw/components/base/AbstractComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "*>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mImagesRequested:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field transient mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private final mReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView;->mImagesRequested:Ljava/util/Set;

    .line 75
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView;->mReferences:Ljava/util/List;

    .line 91
    invoke-direct {p0}, Lcom/evie/jigsaw/views/RichTextView;->initialize()V

    return-void
.end method

.method static synthetic access$200(Lcom/evie/jigsaw/views/RichTextView;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/evie/jigsaw/views/RichTextView;->mImagesRequested:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/jigsaw/views/RichTextView;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/evie/jigsaw/views/RichTextView;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/evie/jigsaw/views/RichTextView;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/evie/jigsaw/views/RichTextView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/evie/jigsaw/views/RichTextView;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/evie/jigsaw/views/RichTextView;->mReferences:Ljava/util/List;

    return-object p0
.end method

.method private initialize()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/evie/jigsaw/views/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/JigsawInjector;

    invoke-interface {v0}, Lcom/evie/jigsaw/JigsawInjector;->getJigsaw()Lcom/evie/jigsaw/Jigsaw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/evie/jigsaw/Jigsaw;->inject(Lcom/evie/jigsaw/views/RichTextView;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView;->mReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/CloseableReference;

    .line 170
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 115
    invoke-virtual {p0}, Lcom/evie/jigsaw/views/RichTextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 116
    invoke-virtual {p0}, Lcom/evie/jigsaw/views/RichTextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 118
    invoke-virtual {p0}, Lcom/evie/jigsaw/views/RichTextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 119
    invoke-virtual {p0}, Lcom/evie/jigsaw/views/RichTextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 121
    invoke-virtual {p0}, Lcom/evie/jigsaw/views/RichTextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 122
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v2, v2

    .line 123
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/evie/jigsaw/views/RichTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/SpannedString;

    .line 126
    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-virtual {v3, v2, v2, v4}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 128
    array-length v3, v2

    if-eqz v3, :cond_3

    if-ne v0, v1, :cond_2

    const/4 p1, 0x0

    .line 132
    aget-object p1, v2, p1

    check-cast p1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView;->mComponent:Lcom/evie/jigsaw/components/base/AbstractComponent;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v0

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/evie/jigsaw/views/RichTextView;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    invoke-virtual {p0}, Lcom/evie/jigsaw/views/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/evie/common/services/links/LinkRequest;

    invoke-direct {v4, p1}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/evie/common/services/links/LinkRequest;->analyticsData(Lcom/evie/common/services/analytics/models/AnalyticsData;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    :cond_2
    return v1

    .line 143
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setComponent(Lcom/evie/jigsaw/components/base/AbstractComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "*>;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView;->mComponent:Lcom/evie/jigsaw/components/base/AbstractComponent;

    return-void
.end method

.method public setRichText(Ljava/lang/String;)V
    .locals 3

    .line 159
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView;->mText:Ljava/lang/String;

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</html>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;-><init>(Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/jigsaw/views/RichTextView$1;)V

    new-instance v2, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;

    invoke-direct {v2, p0, v1}, Lcom/evie/jigsaw/views/RichTextView$RichTextTagHandler;-><init>(Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/jigsaw/views/RichTextView$1;)V

    invoke-static {p1, v0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/views/RichTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
