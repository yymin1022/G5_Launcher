.class public Lcom/lge/mdm/controller/LGMDMIRController;
.super Ljava/lang/Object;
.source "LGMDMIRController.java"


# static fields
.field private static final IR_POLICY_FILE:Ljava/lang/String; = "/data/system/lgmdm_ir_flag.txt"

.field private static final TAG:Ljava/lang/String; = "IRController"

.field private static sInstance:Lcom/lge/mdm/controller/LGMDMIRController;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMIRController;->sInstance:Lcom/lge/mdm/controller/LGMDMIRController;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMIRController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 32
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMIRController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMIRController;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMIRController;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/lge/mdm/controller/LGMDMIRController;->sInstance:Lcom/lge/mdm/controller/LGMDMIRController;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/lge/mdm/controller/LGMDMIRController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMIRController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMIRController;->sInstance:Lcom/lge/mdm/controller/LGMDMIRController;

    .line 40
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMIRController;->sInstance:Lcom/lge/mdm/controller/LGMDMIRController;

    return-object v0
.end method


# virtual methods
.method public getAllowInfraredPort(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 46
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMIRController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 47
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIR:Z

    :cond_e
    return v4

    .line 50
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMIRController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 51
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 52
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIR:Z

    if-nez v5, :cond_19

    .line 53
    const/4 v4, 0x0

    return v4

    .line 56
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method public notifyIRPolicy(Z)V
    .registers 14
    .param p1, "allow"    # Z

    .prologue
    .line 60
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.lge.mdm.intent.action.ACTION_IR_PORT_POLICY_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    const/4 v4, 0x0

    .line 64
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 68
    .local v6, "streamout":Ljava/io/PrintStream;
    :try_start_11
    new-instance v2, Ljava/io/File;

    const-string/jumbo v8, "/data/system/lgmdm_ir_flag.txt"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_19} :catch_89
    .catchall {:try_start_11 .. :try_end_19} :catchall_f3

    .line 70
    .local v2, "flagfile":Ljava/io/File;
    :try_start_19
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 71
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 72
    const-string/jumbo v8, "IRController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyIRPolicy SELinux restorecon failed for= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3c} :catch_69
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_3c} :catch_89
    .catchall {:try_start_19 .. :try_end_3c} :catchall_f3

    .line 79
    :cond_3c
    :goto_3c
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_3e
    invoke-virtual {v2, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 80
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_46} :catch_89
    .catchall {:try_start_3e .. :try_end_46} :catchall_f3

    .line 81
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_46
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_4b} :catch_126
    .catchall {:try_start_46 .. :try_end_4b} :catchall_11f

    .line 82
    .local v7, "streamout":Ljava/io/PrintStream;
    if-eqz p1, :cond_be

    .line 83
    .end local v6    # "streamout":Ljava/io/PrintStream;
    :try_start_4d
    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v8, "IRController"

    const-string/jumbo v9, "setAllowInfraredPort : streamout.print(1)"

    invoke-static {v8, v9}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_5c} :catch_ce
    .catchall {:try_start_4d .. :try_end_5c} :catchall_122

    .line 93
    :goto_5c
    if-eqz v7, :cond_61

    .line 94
    :try_start_5e
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 96
    :cond_61
    if-eqz v5, :cond_66

    .line 97
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_66} :catch_d2

    :cond_66
    :goto_66
    move-object v6, v7

    .end local v7    # "streamout":Ljava/io/PrintStream;
    .local v6, "streamout":Ljava/io/PrintStream;
    move-object v4, v5

    .line 59
    .end local v2    # "flagfile":Ljava/io/File;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "streamout":Ljava/io/PrintStream;
    :cond_68
    :goto_68
    return-void

    .line 75
    .restart local v2    # "flagfile":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .local v6, "streamout":Ljava/io/PrintStream;
    :catch_69
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    :try_start_6a
    const-string/jumbo v8, "IRController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "createNewFile()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_88} :catch_89
    .catchall {:try_start_6a .. :try_end_88} :catchall_f3

    goto :goto_3c

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "flagfile":Ljava/io/File;
    :catch_89
    move-exception v0

    .line 90
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "streamout":Ljava/io/PrintStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_8a
    :try_start_8a
    const-string/jumbo v8, "IRController"

    const-string/jumbo v9, "Failed talking with LGMDM controller"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_f3

    .line 93
    if-eqz v6, :cond_98

    .line 94
    :try_start_95
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    .line 96
    :cond_98
    if-eqz v4, :cond_68

    .line 97
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9d} :catch_9e

    goto :goto_68

    .line 99
    :catch_9e
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "IRController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    .line 86
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "flagfile":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "streamout":Ljava/io/PrintStream;
    :cond_be
    :try_start_be
    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v8, "IRController"

    const-string/jumbo v9, "setAllowInfraredPort : streamout.print(0)"

    invoke-static {v8, v9}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_be .. :try_end_cd} :catch_ce
    .catchall {:try_start_be .. :try_end_cd} :catchall_122

    goto :goto_5c

    .line 89
    :catch_ce
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "streamout":Ljava/io/PrintStream;
    .local v6, "streamout":Ljava/io/PrintStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_8a

    .line 99
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "streamout":Ljava/io/PrintStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "streamout":Ljava/io/PrintStream;
    :catch_d2
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "IRController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close()  IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "flagfile":Ljava/io/File;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "streamout":Ljava/io/PrintStream;
    :catchall_f3
    move-exception v8

    .line 93
    :goto_f4
    if-eqz v6, :cond_f9

    .line 94
    :try_start_f6
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    .line 96
    :cond_f9
    if-eqz v4, :cond_fe

    .line 97
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_fe} :catch_ff

    .line 91
    :cond_fe
    :goto_fe
    throw v8

    .line 99
    :catch_ff
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "IRController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "close()  IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fe

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "flagfile":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "streamout":Ljava/io/PrintStream;
    :catchall_11f
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_f4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "streamout":Ljava/io/PrintStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "streamout":Ljava/io/PrintStream;
    :catchall_122
    move-exception v8

    move-object v6, v7

    .end local v7    # "streamout":Ljava/io/PrintStream;
    .local v6, "streamout":Ljava/io/PrintStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_f4

    .line 89
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "streamout":Ljava/io/PrintStream;
    :catch_126
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_8a
.end method

.method public setAllowInfraredPort(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMIRController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 108
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIR:Z

    if-ne v1, p2, :cond_14

    .line 109
    const-string/jumbo v1, "IRController"

    const-string/jumbo v2, "setAllowIR : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void

    .line 113
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIR:Z

    .line 115
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMIRController;->notifyIRPolicy(Z)V

    .line 105
    return-void
.end method
