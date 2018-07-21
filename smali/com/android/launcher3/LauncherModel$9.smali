.class Lcom/android/launcher3/LauncherModel$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$item:Lcom/android/launcher3/ItemInfo;

.field private final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$9;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$9;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$9;->val$stackTrace:[Ljava/lang/StackTraceElement;

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$9;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1097
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1098
    :try_start_c
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->id:J

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$9;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v0, v4}, Lcom/android/launcher3/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 1099
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/ItemInfo;->id:J

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1100
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_90

    .line 1097
    :cond_29
    :goto_29
    :pswitch_29
    monitor-exit v1

    .line 1123
    return-void

    .line 1102
    :pswitch_2b
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1106
    :pswitch_38
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4c

    .line 1107
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_57

    .line 1108
    :cond_4c
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1097
    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_c .. :try_end_56} :catchall_54

    throw v0

    .line 1110
    :cond_57
    :try_start_57
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adding item: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to a folder that "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1113
    const-string v2, " doesn\'t exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1114
    const-string v2, "Launcher.Model"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1119
    :pswitch_86
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$item:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catchall {:try_start_57 .. :try_end_8f} :catchall_54

    goto :goto_29

    .line 1100
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_2b
        :pswitch_29
        :pswitch_86
    .end packed-switch
.end method
