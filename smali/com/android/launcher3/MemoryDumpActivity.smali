.class public Lcom/android/launcher3/MemoryDumpActivity;
.super Landroid/app/Activity;
.source "MemoryDumpActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryDumpActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static dumpHprofAndShare(Landroid/content/Context;Lcom/android/launcher3/MemoryTracker;)V
    .registers 15

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 89
    invoke-virtual {p1}, Lcom/android/launcher3/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v0

    .line 90
    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 91
    array-length v6, v5

    move v0, v1

    :goto_1b
    if-lt v0, v6, :cond_24

    .line 114
    invoke-static {v3}, Lcom/android/launcher3/MemoryDumpActivity;->zipUp(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 116
    if-nez v3, :cond_af

    .line 138
    :goto_23
    return-void

    .line 91
    :cond_24
    aget v7, v5, v0

    .line 92
    invoke-virtual {p1, v7}, Lcom/android/launcher3/MemoryTracker;->getMemInfo(I)Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    move-result-object v8

    .line 93
    if-eqz v8, :cond_67

    .line 94
    const-string v9, "pid "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 95
    const-string v10, " up="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->getUptime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 96
    const-string v10, " pss="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v8, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->currentPss:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 97
    const-string v10, " uss="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v8, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->currentUss:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 98
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_67
    if-ne v7, v4, :cond_a2

    .line 101
    const-string v8, "%s/launcher-memory-%d.ahprof"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    aput-object v10, v9, v1

    .line 103
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    .line 101
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 104
    const-string v9, "MemoryDumpActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Dumping memory info for process "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_9c
    invoke-static {v8}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a6

    .line 110
    :goto_9f
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    .line 107
    :catch_a6
    move-exception v7

    .line 108
    const-string v9, "MemoryDumpActivity"

    const-string v10, "error dumping memory:"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9f

    .line 118
    :cond_af
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v0, "application/zip"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    const-string v6, "android.intent.extra.SUBJECT"

    const-string v7, "Launcher memory dump (%d)"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :try_start_d2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_dd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d2 .. :try_end_dd} :catch_114

    .line 130
    :goto_dd
    const-string v1, "\nApp version: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    .line 127
    :catch_114
    move-exception v0

    const-string v0, "?"

    goto :goto_dd
.end method

.method public static startDump(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/MemoryDumpActivity;->startDump(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public static startDump(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 157
    new-instance v0, Lcom/android/launcher3/MemoryDumpActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/MemoryDumpActivity$2;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 169
    const-string v1, "MemoryDumpActivity"

    const-string v2, "attempting to bind to memory tracker"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher3/MemoryTracker;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const/4 v2, 0x1

    .line 170
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 172
    return-void
.end method

.method public static zipUp(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/high16 v0, 0x40000

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 45
    new-array v5, v0, [B

    .line 46
    const-string v0, "%s/hprof-%d.zip"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    .line 46
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    :try_start_20
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2f} :catch_96
    .catchall {:try_start_20 .. :try_end_2f} :catchall_90

    .line 53
    :try_start_2f
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_68
    .catchall {:try_start_2f .. :try_end_36} :catchall_83

    move-result v0

    if-nez v0, :cond_40

    .line 72
    if-eqz v4, :cond_3e

    .line 74
    :try_start_3b
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_8e

    :cond_3e
    :goto_3e
    move-object v0, v1

    .line 80
    :goto_3f
    return-object v0

    .line 53
    :cond_40
    :try_start_40
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_68
    .catchall {:try_start_40 .. :try_end_46} :catchall_83

    .line 56
    :try_start_46
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_99

    .line 57
    :try_start_50
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 60
    :goto_58
    const/4 v0, 0x0

    const/high16 v7, 0x40000

    invoke-virtual {v3, v5, v0, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_78

    .line 63
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_7d

    .line 65
    :try_start_64
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_83

    goto :goto_33

    .line 68
    :catch_68
    move-exception v0

    move-object v1, v4

    .line 69
    :goto_6a
    :try_start_6a
    const-string v3, "MemoryDumpActivity"

    const-string v4, "error zipping up profile data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_93

    .line 72
    if-eqz v1, :cond_76

    .line 74
    :try_start_73
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_8a

    :cond_76
    :goto_76
    move-object v0, v2

    .line 70
    goto :goto_3f

    .line 61
    :cond_78
    const/4 v7, 0x0

    :try_start_79
    invoke-virtual {v4, v5, v7, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_58

    .line 64
    :catchall_7d
    move-exception v0

    move-object v1, v3

    .line 65
    :goto_7f
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 66
    throw v0
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_68
    .catchall {:try_start_7f .. :try_end_83} :catchall_83

    .line 71
    :catchall_83
    move-exception v0

    .line 72
    :goto_84
    if-eqz v4, :cond_89

    .line 74
    :try_start_86
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8c

    .line 79
    :cond_89
    :goto_89
    throw v0

    :catch_8a
    move-exception v0

    goto :goto_76

    :catch_8c
    move-exception v1

    goto :goto_89

    :catch_8e
    move-exception v0

    goto :goto_3e

    .line 71
    :catchall_90
    move-exception v0

    move-object v4, v2

    goto :goto_84

    :catchall_93
    move-exception v0

    move-object v4, v1

    goto :goto_84

    .line 68
    :catch_96
    move-exception v0

    move-object v1, v2

    goto :goto_6a

    .line 64
    :catchall_99
    move-exception v0

    move-object v1, v2

    goto :goto_7f
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 144
    new-instance v0, Lcom/android/launcher3/MemoryDumpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/MemoryDumpActivity$1;-><init>(Lcom/android/launcher3/MemoryDumpActivity;)V

    invoke-static {p0, v0}, Lcom/android/launcher3/MemoryDumpActivity;->startDump(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
