.class Lcom/android/launcher3/LauncherModel$13;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$13;->val$items:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$13;->val$cr:Landroid/content/ContentResolver;

    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1224
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$13;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1255
    return-void

    .line 1224
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 1225
    iget-wide v6, v2, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v6, v7}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 1226
    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$13;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v5, v3, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1229
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1230
    :try_start_22
    iget v3, v2, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_96

    .line 1252
    :goto_27
    :pswitch_27
    sget-object v3, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, v2, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1229
    monitor-exit v5

    goto :goto_7

    :catchall_30
    move-exception v2

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_30

    throw v2

    .line 1232
    :pswitch_33
    :try_start_33
    sget-object v3, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, v2, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1233
    sget-object v3, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_40
    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1242
    sget-object v3, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1233
    :cond_4c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 1234
    iget-wide v8, v3, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v10, v2, Lcom/android/launcher3/ItemInfo;->id:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_40

    .line 1237
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "deleting a folder ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") which still "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1238
    const-string v8, "contains items ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1239
    const-string v7, "Launcher.Model"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1246
    :pswitch_85
    sget-object v3, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1249
    :pswitch_8b
    sget-object v6, Lcom/android/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    move-object v3, v0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_94
    .catchall {:try_start_33 .. :try_end_94} :catchall_30

    goto :goto_27

    .line 1230
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_85
        :pswitch_85
        :pswitch_33
        :pswitch_27
        :pswitch_8b
    .end packed-switch
.end method
