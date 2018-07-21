.class public Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;
.super Ljava/lang/Object;
.source "FileMannagerIconDropAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileMannagerIconDrop"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 26
    :goto_3
    return-void

    .line 25
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_FileMannagerIconDropAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Landroid/content/Context;J[III)Z
    .registers 15

    .prologue
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->ajc$get$sBgLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 32
    :try_start_a
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 31
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_34

    .line 39
    invoke-static {v1, p3, p4, p5}, Lcom/android/launcher3/LauncherModel;->ajc$privMethod$com_lge_launcher3_dragndrop_FileMannagerIconDropAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[III)Z

    move-result v0

    return v0

    .line 32
    :cond_1c
    :try_start_1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 33
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_10

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 31
    :catchall_34
    move-exception v0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_FileMannagerIconDropAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Landroid/content/Context;J[III)Z
    .registers 7

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/LauncherModel;->findNextAvailableIconSpaceInScreen(Landroid/content/Context;J[III)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_dragndrop_FileMannagerIconDropAspect"

    sget-object v2, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;

    return-object v0
.end method

.method public static fileDropShortCutCreate(Lcom/android/launcher3/Launcher;Landroid/content/Intent;I)V
    .registers 15

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 44
    const v0, 0x7f0f00d9

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    const-string v0, "FileMannagerIconDrop"

    const-string v1, "LGHome:mem full sorry"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_19
    return-void

    .line 49
    :cond_1a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    if-nez v1, :cond_28

    .line 51
    const-string v0, "FileMannagerIconDrop"

    const-string v1, "extrasBundle is null "

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 55
    :cond_28
    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_146

    .line 56
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string v2, "com.lge.filemanager.intent.extra.ISDIR"

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 60
    const-string v5, "null/null"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 61
    const-string v2, "FileMannagerIconDrop"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mimetype is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 64
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.lge.filemanager"

    const-string v6, "com.lge.filemanager.view.FolderActivity2"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    const-string v3, "com.lge.filemanager.intent.action.EXECUTE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const-string v3, "shortcutKey"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v5, v2

    .line 80
    :goto_90
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    .line 82
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 84
    invoke-static {}, Lcom/android/launcher3/Workspace;->ajc$get$EXTRA_EMPTY_SCREEN_ID()J

    move-result-wide v8

    cmp-long v1, v2, v8

    if-nez v1, :cond_b2

    .line 85
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v2

    .line 87
    :cond_b2
    const-wide/16 v6, -0x12d

    cmp-long v1, v2, v6

    if-nez v1, :cond_f0

    .line 88
    const v0, 0x7f0f002a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_19

    .line 71
    :cond_c5
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    :try_start_cc
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 74
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_d7
    .catch Ljava/lang/ClassCastException; {:try_start_cc .. :try_end_d7} :catch_d9

    move-object v5, v2

    .line 75
    goto :goto_90

    .line 76
    :catch_d9
    move-exception v1

    const-string v1, "FileMannagerIconDrop"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mimetype is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_90

    .line 91
    :cond_f0
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_FileMannagerIconDropAspect$com_android_launcher3_LauncherModel$findNextAvailableIconSpaceInScreen(Landroid/content/Context;J[III)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 93
    const-wide/16 v6, -0x64

    const/4 v1, 0x0

    aget v10, v4, v1

    const/4 v1, 0x1

    aget v11, v4, v1

    move-object v4, p0

    move-object v5, p1

    move-wide v8, v2

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/Launcher;->ajc$privMethod$com_lge_launcher3_dragndrop_FileMannagerIconDropAspect$com_android_launcher3_Launcher$completeAddShortcut(Landroid/content/Intent;JJII)V

    .line 94
    if-eqz v0, :cond_114

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_121

    .line 97
    :cond_114
    const v0, 0x7f0f00d7

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_19

    .line 99
    :cond_121
    const v1, 0x7f0f00d8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_19

    .line 103
    :cond_138
    const v0, 0x7f0f002a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_19

    .line 55
    nop

    :array_146
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/FileMannagerIconDropAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
