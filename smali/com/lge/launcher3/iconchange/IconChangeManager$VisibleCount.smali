.class public Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;
.super Landroid/os/CountDownTimer;
.source "IconChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/iconchange/IconChangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibleCount"
.end annotation


# static fields
.field private static final ICON_BADGE_DURIATION:I = 0x1388

.field private static sIconChangeBadgeTimer:Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;


# instance fields
.field private textview:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x1388

    .line 280
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 281
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;
    .registers 2

    .prologue
    .line 273
    const-class v1, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->sIconChangeBadgeTimer:Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    if-nez v0, :cond_e

    .line 274
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    invoke-direct {v0}, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;-><init>()V

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->sIconChangeBadgeTimer:Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;

    .line 276
    :cond_e
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->sIconChangeBadgeTimer:Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 273
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getTextView()Lcom/android/launcher3/BubbleTextView;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->textview:Lcom/android/launcher3/BubbleTextView;

    return-object v0
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->textview:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->updateIconChangeBadge(Z)V

    .line 286
    return-void
.end method

.method public onTick(J)V
    .registers 3

    .prologue
    .line 290
    return-void
.end method

.method public setTextView(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    .prologue
    .line 293
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeManager$VisibleCount;->textview:Lcom/android/launcher3/BubbleTextView;

    .line 294
    return-void
.end method
