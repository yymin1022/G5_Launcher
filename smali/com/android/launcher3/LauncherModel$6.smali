.class Lcom/android/launcher3/LauncherModel$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->checkItemInfo(Lcom/android/launcher3/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$item:Lcom/android/launcher3/ItemInfo;

.field private final synthetic val$itemId:J

.field private final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .registers 6

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/android/launcher3/LauncherModel$6;->val$itemId:J

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$6;->val$item:Lcom/android/launcher3/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$6;->val$stackTrace:[Ljava/lang/StackTraceElement;

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 769
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 770
    :try_start_3
    iget-wide v2, p0, Lcom/android/launcher3/LauncherModel$6;->val$itemId:J

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$6;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$6;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v0, v4}, Lcom/android/launcher3/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 771
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$6;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$6;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherModel;->checkDuplicatedApplicationLocked(Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 769
    monitor-exit v1

    .line 773
    return-void

    .line 769
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method
