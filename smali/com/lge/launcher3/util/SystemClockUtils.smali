.class public Lcom/lge/launcher3/util/SystemClockUtils;
.super Ljava/lang/Object;
.source "SystemClockUtils.java"


# static fields
.field public static final KEY_DEFAULT:I = 0x0

.field public static final KEY_LAUNCHER_BINDING:I = 0x2

.field public static final KEY_LAUNCHER_CREATION:I = 0x1

.field private static sStartElapsedRealtime:Landroid/util/SparseLongArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/SystemClockUtils;->sStartElapsedRealtime:Landroid/util/SparseLongArray;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final endElapsedTime(I)J
    .registers 5

    .prologue
    .line 37
    sget-object v0, Lcom/lge/launcher3/util/SystemClockUtils;->sStartElapsedRealtime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 38
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 39
    const-wide/16 v0, -0x1

    .line 43
    :goto_e
    return-wide v0

    .line 41
    :cond_f
    sget-object v2, Lcom/lge/launcher3/util/SystemClockUtils;->sStartElapsedRealtime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    goto :goto_e
.end method

.method public static final endElapsedTimeToString(I)Ljava/lang/String;
    .registers 9

    .prologue
    .line 51
    sget-object v0, Lcom/lge/launcher3/util/SystemClockUtils;->sStartElapsedRealtime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 52
    invoke-static {p0}, Lcom/lge/launcher3/util/SystemClockUtils;->endElapsedTime(I)J

    move-result-wide v2

    .line 53
    const-string v4, "%d ElapsedTime %d ms (%d ~ %d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 54
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    .line 53
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final startElapsedTime(I)J
    .registers 5

    .prologue
    .line 23
    sget-object v0, Lcom/lge/launcher3/util/SystemClockUtils;->sStartElapsedRealtime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 24
    const-wide/16 v0, -0x1

    .line 29
    :goto_e
    return-wide v0

    .line 27
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 28
    sget-object v2, Lcom/lge/launcher3/util/SystemClockUtils;->sStartElapsedRealtime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p0, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_e
.end method
