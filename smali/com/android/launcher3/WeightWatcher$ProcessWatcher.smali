.class public Lcom/android/launcher3/WeightWatcher$ProcessWatcher;
.super Landroid/widget/LinearLayout;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/WeightWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;
    }
.end annotation


# instance fields
.field mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

.field mPid:I

.field mRamGraph:Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;

.field mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/launcher3/WeightWatcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/WeightWatcher;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;-><init>(Lcom/android/launcher3/WeightWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/WeightWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 145
    iput-object p1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->this$0:Lcom/android/launcher3/WeightWatcher;

    .line 146
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 150
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    .line 151
    iget-object v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 156
    invoke-virtual {p0, v1, v4, v1, v4}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->setPadding(IIII)V

    .line 158
    new-instance v1, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {p0}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;-><init>(Lcom/android/launcher3/WeightWatcher$ProcessWatcher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mRamGraph:Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 163
    const/high16 v3, 0x3f800000    # 1.0f

    .line 160
    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 166
    iget-object v2, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 168
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 169
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mRamGraph:Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method


# virtual methods
.method public getPid()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    return v0
.end method

.method public getUptimeString()Ljava/lang/String;
    .registers 15

    .prologue
    const-wide/32 v6, 0x15180

    const-wide/16 v12, 0xe10

    const-wide/16 v10, 0x3c

    const-wide/16 v8, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->getUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    div-long v4, v0, v6

    .line 190
    cmp-long v3, v4, v8

    if-lez v3, :cond_27

    .line 191
    mul-long/2addr v6, v4

    sub-long/2addr v0, v6

    .line 192
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_27
    div-long v4, v0, v12

    .line 197
    cmp-long v3, v4, v8

    if-lez v3, :cond_38

    .line 198
    mul-long v6, v4, v12

    sub-long/2addr v0, v6

    .line 199
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_38
    div-long v4, v0, v10

    .line 204
    cmp-long v3, v4, v8

    if-lez v3, :cond_49

    .line 205
    mul-long v6, v4, v10

    sub-long/2addr v0, v6

    .line 206
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_49
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    const-string v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPid(I)V
    .registers 5

    .prologue
    .line 174
    iput p1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->this$0:Lcom/android/launcher3/WeightWatcher;

    iget-object v0, v0, Lcom/android/launcher3/WeightWatcher;->mMemoryService:Lcom/android/launcher3/MemoryTracker;

    iget v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MemoryTracker;->getMemInfo(I)Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    if-nez v0, :cond_37

    .line 177
    const-string v0, "WeightWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing info for pid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->this$0:Lcom/android/launcher3/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/WeightWatcher;->initViews()V

    .line 180
    :cond_37
    return-void
.end method

.method public update()V
    .registers 5

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    iget v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v0, v3, :cond_54

    .line 220
    const-string v0, "/A"

    .line 219
    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string v2, ") up "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->getUptimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 223
    const-string v2, " P="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->currentPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    const-string v2, " U="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->currentUss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mRamGraph:Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {v0}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->invalidate()V

    .line 227
    return-void

    .line 221
    :cond_54
    const-string v0, "/S"

    goto :goto_19
.end method
