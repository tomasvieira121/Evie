.class public Lcom/aol/mobile/sdk/controls/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/controls/b$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/aol/mobile/sdk/controls/b$a$a;

.field public final b:I

.field c:I

.field d:I

.field e:Landroid/graphics/drawable/Drawable;

.field f:Ljava/lang/String;

.field g:Z


# direct methods
.method constructor <init>(ILcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;Landroid/graphics/drawable/Drawable;Lcom/aol/mobile/sdk/controls/b$a$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->c:I

    iget-boolean p1, p2, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;->isSelected:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->d:I

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/b$a;->e:Landroid/graphics/drawable/Drawable;

    iget-object p1, p2, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/aol/mobile/sdk/controls/b$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    iput p5, p0, Lcom/aol/mobile/sdk/controls/b$a;->b:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->c:I

    const/16 p1, 0x8

    iput p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->d:I

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/b$a;->f:Ljava/lang/String;

    sget-object p1, Lcom/aol/mobile/sdk/controls/b$a$a;->c:Lcom/aol/mobile/sdk/controls/b$a$a;

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    const/4 p1, -0x1

    iput p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->b:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->d:I

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/b$a;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/aol/mobile/sdk/controls/b$a;->e:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->g:Z

    sget-object p1, Lcom/aol/mobile/sdk/controls/b$a$a;->d:Lcom/aol/mobile/sdk/controls/b$a$a;

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    const/4 p1, -0x1

    iput p1, p0, Lcom/aol/mobile/sdk/controls/b$a;->b:I

    return-void
.end method
