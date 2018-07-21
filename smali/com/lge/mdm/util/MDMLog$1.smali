.class final Lcom/lge/mdm/util/MDMLog$1;
.super Ljava/lang/Thread;
.source "MDMLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/util/MDMLog;->saveDebugmode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 102
    const-string/jumbo v8, "/data/system/lgmdm_log.xml"

    invoke-static {v8}, Lcom/lge/mdm/util/MDMLog;->-wrap0(Ljava/lang/String;)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 103
    .local v4, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 105
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_91
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_12} :catch_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_12} :catch_5b
    .catchall {:try_start_8 .. :try_end_12} :catchall_a6

    .line 106
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_12
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 107
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v8, "utf-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 108
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 110
    const-string/jumbo v8, "debug"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string/jumbo v8, "value"

    invoke-static {}, Lcom/lge/mdm/util/MDMLog;->getDebugmode()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string/jumbo v8, "debug"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 115
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_49} :catch_bb
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_49} :catch_be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_49} :catch_c1
    .catchall {:try_start_12 .. :try_end_49} :catchall_b8

    .line 123
    if-eqz v7, :cond_4e

    .line 125
    :try_start_4b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_50

    :cond_4e
    :goto_4e
    move-object v6, v7

    .line 101
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :cond_4f
    :goto_4f
    return-void

    .line 126
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_50
    move-exception v3

    .line 127
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v8, "MDM"

    const-string/jumbo v9, "saveDebugmode Fail to close."

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 120
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_5b
    move-exception v1

    .line 121
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_5c
    :try_start_5c
    const-string/jumbo v8, "MDM"

    const-string/jumbo v9, "saveDebugmode IllegalArgumentException"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_a6

    .line 123
    if-eqz v6, :cond_4f

    .line 125
    :try_start_67
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_4f

    .line 126
    :catch_6b
    move-exception v3

    .line 127
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string/jumbo v8, "MDM"

    const-string/jumbo v9, "saveDebugmode Fail to close."

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 118
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_76
    move-exception v2

    .line 119
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/lang/IllegalStateException;
    :goto_77
    :try_start_77
    const-string/jumbo v8, "MDM"

    const-string/jumbo v9, "saveDebugmode IllegalStateException"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_a6

    .line 123
    if-eqz v6, :cond_4f

    .line 125
    :try_start_82
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_4f

    .line 126
    :catch_86
    move-exception v3

    .line 127
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string/jumbo v8, "MDM"

    const-string/jumbo v9, "saveDebugmode Fail to close."

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 116
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_91
    move-exception v0

    .line 117
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_92
    :try_start_92
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_a6

    .line 123
    if-eqz v6, :cond_4f

    .line 125
    :try_start_97
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_4f

    .line 126
    :catch_9b
    move-exception v3

    .line 127
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string/jumbo v8, "MDM"

    const-string/jumbo v9, "saveDebugmode Fail to close."

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_a6
    move-exception v8

    .line 123
    :goto_a7
    if-eqz v6, :cond_ac

    .line 125
    :try_start_a9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    .line 122
    :cond_ac
    :goto_ac
    throw v8

    .line 126
    :catch_ad
    move-exception v3

    .line 127
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string/jumbo v9, "MDM"

    const-string/jumbo v10, "saveDebugmode Fail to close."

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    .line 122
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catchall_b8
    move-exception v8

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    goto :goto_a7

    .line 116
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_bb
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    goto :goto_92

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_be
    move-exception v2

    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    goto :goto_77

    .line 120
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_c1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    goto :goto_5c
.end method
