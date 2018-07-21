.class Lcom/android/launcher3/LauncherModel$15;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher3/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$info:Lcom/android/launcher3/FolderInfo;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/android/launcher3/FolderInfo;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$15;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$15;->val$info:Lcom/android/launcher3/FolderInfo;

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1322
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$15;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$15;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1324
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1325
    :try_start_11
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$15;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1326
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$15;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1327
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$15;->val$info:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1324
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_58

    .line 1330
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$15;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "container="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$15;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-wide v4, v3, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1330
    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1333
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1334
    :try_start_48
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$15;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1333
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_69

    .line 1338
    return-void

    .line 1324
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0

    .line 1334
    :cond_5b
    :try_start_5b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 1335
    sget-object v3, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_50

    .line 1333
    :catchall_69
    move-exception v0

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_69

    throw v0
.end method
