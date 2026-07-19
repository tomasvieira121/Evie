.class public Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;
.super Landroid/widget/LinearLayout;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WeightWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;
    }
.end annotation


# instance fields
.field private mMemInfo:Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

.field mPid:I

.field mRamGraph:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;

.field mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/voxel/launcher3/WeightWatcher;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/WeightWatcher;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;-><init>(Lcom/voxel/launcher3/WeightWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/voxel/launcher3/WeightWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 143
    iput-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    .line 144
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    invoke-virtual {p0}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 148
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    .line 149
    iget-object p2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object p2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/high16 p3, 0x41200000    # 10.0f

    mul-float p3, p3, p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    iget-object p2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/16 p3, 0x13

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p2, p2, p1

    float-to-int p2, p2

    .line 154
    invoke-virtual {p0, p2, v0, p2, v0}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->setPadding(IIII)V

    .line 156
    new-instance p2, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;-><init>(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mRamGraph:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;

    .line 158
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x41600000    # 14.0f

    mul-float p3, p3, p1

    float-to-int p3, p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 164
    iget-object p3, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p3, p2}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p3, 0x40800000    # 4.0f

    mul-float p3, p3, p1

    float-to-int p3, p3

    .line 165
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 p3, 0x0

    .line 166
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 p3, 0x43480000    # 200.0f

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 167
    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 168
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mRamGraph:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;)Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    return-object p0
.end method


# virtual methods
.method public getPid()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    return v0
.end method

.method public getUptimeString()Ljava/lang/String;
    .locals 10

    .line 185
    iget-object v0, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    invoke-virtual {v0}, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->getUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v3, 0x15180

    .line 187
    div-long v5, v0, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    mul-long v3, v3, v5

    sub-long/2addr v0, v3

    .line 190
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "d"

    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v3, 0xe10

    .line 194
    div-long v5, v0, v3

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    mul-long v3, v3, v5

    sub-long/2addr v0, v3

    .line 197
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "h"

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-wide/16 v3, 0x3c

    .line 201
    div-long v5, v0, v3

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    mul-long v3, v3, v5

    sub-long/2addr v0, v3

    .line 204
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "m"

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s"

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPid(I)V
    .locals 2

    .line 172
    iput p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    .line 173
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-static {p1}, Lcom/voxel/launcher3/WeightWatcher;->access$000(Lcom/voxel/launcher3/WeightWatcher;)Lcom/voxel/launcher3/MemoryTracker;

    move-result-object p1

    iget v0, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/MemoryTracker;->getMemInfo(I)Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    .line 174
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    if-nez p1, :cond_0

    const-string p1, "WeightWatcher"

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing info for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", removing view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/WeightWatcher;->initViews()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    .line 217
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v2, "/A"

    goto :goto_0

    :cond_0
    const-string v2, "/S"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->getUptimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " P="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v2, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->currentPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " U="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v2, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->currentUss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->mRamGraph:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->invalidate()V

    return-void
.end method
