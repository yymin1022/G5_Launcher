.class public Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;
.super Ljava/lang/Object;
.source "LGMDMUISystemServiceAdapter.java"


# static fields
.field private static final ACTION_NOTIFY_REMOVE_GOOGLE_ACCOUNT:Ljava/lang/String; = "com.lge.mdm.intent.ACTION_NOTIFY_REMOVE_GOOGLE_ACCOUNT"

.field private static final EXTRA_REMAINING_NUM:Ljava/lang/String; = "remainGoogleAccountNum"

.field private static TAG:Ljava/lang/String; = null

.field private static final WORD_COUNT:I = 0x64

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;


# instance fields
.field private mDictionary:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const-string/jumbo v0, "LGMDMUISystemServiceAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->mMountService:Landroid/os/storage/IMountService;

    .line 89
    return-void
.end method

.method private containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2c

    const/4 v3, 0x0

    .line 876
    if-nez p1, :cond_6

    .line 877
    return v3

    .line 879
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 880
    .local v1, "index":I
    if-gez v1, :cond_d

    .line 881
    return v3

    .line 883
    :cond_d
    if-lez v1, :cond_18

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_18

    .line 884
    return v3

    .line 886
    :cond_18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 887
    .local v0, "charAfter":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2b

    .line 888
    return v3

    .line 890
    :cond_2b
    const/4 v2, 0x1

    return v2
.end method

.method private getDictionary(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 712
    .local v2, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 713
    sget v8, Lcom/lge/internal/R$raw;->simple_password_dictionary:I

    .line 712
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_17} :catch_65
    .catchall {:try_start_3 .. :try_end_17} :catchall_7e

    .line 714
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "word":Ljava/lang/String;
    if-nez v5, :cond_35

    .line 716
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "word is null. Dictionary is empty!"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_25} :catch_97
    .catchall {:try_start_17 .. :try_end_25} :catchall_90

    .line 732
    if-eqz v1, :cond_2a

    .line 733
    :try_start_27
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 717
    :cond_2a
    :goto_2a
    return-object v9

    .line 735
    :catch_2b
    move-exception v4

    .line 736
    .local v4, "e":Ljava/io/IOException;
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed talking with LGMDM UI Adapter"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 720
    .end local v4    # "e":Ljava/io/IOException;
    :cond_35
    :try_start_35
    new-instance v3, Ljava/util/HashMap;

    const/16 v6, 0x64

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3c} :catch_97
    .catchall {:try_start_35 .. :try_end_3c} :catchall_90

    .line 722
    .end local v2    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3c
    if-eqz v5, :cond_47

    .line 723
    const/4 v6, 0x0

    :try_start_3f
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_45} :catch_9a
    .catchall {:try_start_3f .. :try_end_45} :catchall_93

    move-result-object v5

    goto :goto_3c

    .line 732
    :cond_47
    if-eqz v1, :cond_4c

    .line 733
    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_5b

    .line 742
    :cond_4c
    :goto_4c
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_8f

    .line 743
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Dictionary is empty!"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    return-object v9

    .line 735
    :catch_5b
    move-exception v4

    .line 736
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed talking with LGMDM UI Adapter"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 727
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "word":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_65
    move-exception v4

    .line 728
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_66
    :try_start_66
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed talking with LGMDM UI Adapter"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_7e

    .line 732
    if-eqz v0, :cond_73

    .line 733
    :try_start_70
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 729
    :cond_73
    :goto_73
    return-object v9

    .line 735
    :catch_74
    move-exception v4

    .line 736
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed talking with LGMDM UI Adapter"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73

    .line 730
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_7e
    move-exception v6

    .line 732
    :goto_7f
    if-eqz v0, :cond_84

    .line 733
    :try_start_81
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    .line 730
    :cond_84
    :goto_84
    throw v6

    .line 735
    :catch_85
    move-exception v4

    .line 736
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed talking with LGMDM UI Adapter"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    .line 747
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "word":Ljava/lang/String;
    :cond_8f
    return-object v3

    .line 730
    .end local v3    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "word":Ljava/lang/String;
    .restart local v2    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_90
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_7f

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "word":Ljava/lang/String;
    :catchall_93
    move-exception v6

    move-object v2, v3

    .end local v3    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_7f

    .line 727
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "word":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_97
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_66

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "word":Ljava/lang/String;
    :catch_9a
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_66
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    .line 86
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    return-object v0
.end method

.method private getSDCARDiD()Ljava/lang/String;
    .registers 11

    .prologue
    .line 1279
    const-string/jumbo v5, "-1"

    .line 1280
    .local v5, "sd_cid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1281
    .local v2, "cmd":Ljava/lang/Process;
    const/4 v0, 0x0

    .line 1283
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "/sys/block/mmcblk1"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 1285
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string/jumbo v8, "cat /sys/block/mmcblk1/device/cid"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1286
    .local v2, "cmd":Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_32} :catch_7f
    .catchall {:try_start_5 .. :try_end_32} :catchall_9f

    .line 1287
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_b9
    .catchall {:try_start_32 .. :try_end_35} :catchall_b6

    .end local v0    # "br":Ljava/io/BufferedReader;
    move-result-object v6

    .line 1288
    .local v6, "temp":Ljava/lang/String;
    if-eqz v6, :cond_4f

    .line 1289
    move-object v5, v6

    .line 1296
    if-eqz v1, :cond_3e

    .line 1298
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_44

    .line 1303
    :cond_3e
    :goto_3e
    if-eqz v2, :cond_43

    .line 1304
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 1290
    :cond_43
    return-object v5

    .line 1299
    :catch_44
    move-exception v3

    .line 1300
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "MDM"

    const-string/jumbo v8, "LGMDMUISystemServiceAdapter : br.close() : IOException is "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .end local v3    # "e":Ljava/io/IOException;
    :cond_4f
    move-object v0, v1

    .line 1296
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "cmd":Ljava/lang/Process;
    .end local v6    # "temp":Ljava/lang/String;
    :cond_50
    if-eqz v0, :cond_55

    .line 1298
    :try_start_52
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_74

    .line 1303
    :cond_55
    :goto_55
    if-eqz v2, :cond_5a

    .line 1304
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 1307
    .end local v4    # "file":Ljava/io/File;
    :cond_5a
    :goto_5a
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getSDCARDiD(): sd_cid is .."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    return-object v5

    .line 1299
    .restart local v4    # "file":Ljava/io/File;
    :catch_74
    move-exception v3

    .line 1300
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "MDM"

    const-string/jumbo v8, "LGMDMUISystemServiceAdapter : br.close() : IOException is "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1293
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_7f
    move-exception v3

    .line 1294
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_80
    :try_start_80
    const-string/jumbo v7, "MDM"

    const-string/jumbo v8, "LGMDMUISystemServiceAdapter : IOException is "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_9f

    .line 1296
    if-eqz v0, :cond_8e

    .line 1298
    :try_start_8b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_94

    .line 1303
    :cond_8e
    :goto_8e
    if-eqz v2, :cond_5a

    .line 1304
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_5a

    .line 1299
    :catch_94
    move-exception v3

    .line 1300
    const-string/jumbo v7, "MDM"

    const-string/jumbo v8, "LGMDMUISystemServiceAdapter : br.close() : IOException is "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    .line 1295
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_9f
    move-exception v7

    .line 1296
    :goto_a0
    if-eqz v0, :cond_a5

    .line 1298
    :try_start_a2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_ab

    .line 1303
    :cond_a5
    :goto_a5
    if-eqz v2, :cond_aa

    .line 1304
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 1295
    :cond_aa
    throw v7

    .line 1299
    :catch_ab
    move-exception v3

    .line 1300
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "MDM"

    const-string/jumbo v9, "LGMDMUISystemServiceAdapter : br.close() : IOException is "

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a5

    .line 1295
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "cmd":Ljava/lang/Process;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_b6
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_a0

    .line 1293
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_b9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_80
.end method

.method private getStorageVolumeForSD(Landroid/content/Context;)Landroid/os/storage/StorageVolume;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 929
    invoke-direct {p0, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getStorageVolumeList(Landroid/content/Context;)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 930
    .local v1, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v1, :cond_10

    .line 931
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "storageVolumes is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-object v5

    .line 934
    :cond_10
    const/4 v2, 0x0

    array-length v3, v1

    :goto_12
    if-ge v2, v3, :cond_20

    aget-object v0, v1, v2

    .line 935
    .local v0, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 936
    return-object v0

    .line 934
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 939
    .end local v0    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_20
    return-object v5
.end method

.method private getStorageVolumeList(Landroid/content/Context;)[Landroid/os/storage/StorageVolume;
    .registers 8
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1326
    const/4 v2, 0x0

    .line 1329
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    :try_start_2
    const-string/jumbo v3, "storage"

    .line 1328
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 1330
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_12

    move-result-object v2

    .line 1335
    .end local v1    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_f
    if-nez v2, :cond_1c

    .line 1336
    return-object v5

    .line 1331
    .restart local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_12
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error at getStorageVolumeList(()"

    invoke-static {v3, v4, v0}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 1338
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_1c
    return-object v2
.end method

.method private isAccountByGoogle(Landroid/accounts/Account;I)Z
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userHandle"    # I

    .prologue
    .line 997
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 998
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const-string/jumbo v1, "com.google"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 999
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowRemoveGoogleAccount(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1001
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_deleted_google_account_NORMAL:I

    .line 1000
    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 1003
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "LGMDM: Disallow remove google account"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const/4 v1, 0x1

    return v1

    .line 1008
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method private isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;I)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 1077
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v3

    .line 1078
    .local v3, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v2, 0x0

    .line 1080
    .local v2, "isMdmAccount":Z
    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    .line 1081
    :cond_a
    return v7

    .line 1080
    :cond_b
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 1084
    const/4 v0, 0x0

    .line 1086
    .local v0, "contextAsUser":Landroid/content/Context;
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1087
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 1086
    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_20} :catch_24

    move-result-object v0

    .line 1091
    .end local v0    # "contextAsUser":Landroid/content/Context;
    :goto_21
    if-nez v0, :cond_2e

    .line 1092
    return v7

    .line 1088
    .restart local v0    # "contextAsUser":Landroid/content/Context;
    :catch_24
    move-exception v1

    .line 1089
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[isAccountByMDM] catch Exception CHECK contextAsUser !!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 1095
    .end local v0    # "contextAsUser":Landroid/content/Context;
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2e
    invoke-virtual {p0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v2

    .line 1096
    .local v2, "isMdmAccount":Z
    if-eqz v2, :cond_39

    .line 1097
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_remove_account_NORMAL:I

    invoke-virtual {v3, v4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    .line 1100
    :cond_39
    return v2
.end method

.method private isMdmAccountFromOldEmail(Landroid/content/Context;Landroid/accounts/Account;)Z
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1012
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "accountID"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string/jumbo v1, "mailAddress"

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 1013
    .local v3, "account_projection":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1014
    .local v2, "email_account_uri":Landroid/net/Uri;
    const/16 v17, 0x0

    .line 1015
    .local v17, "nc_email_accouct_uri":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 1016
    .local v15, "email_normal_account_uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1017
    .local v12, "cursor":Landroid/database/Cursor;
    const-string/jumbo v18, "EASLoginComplete = 1"

    .line 1018
    .local v18, "selection":Ljava/lang/String;
    const-string/jumbo v16, "content://com.lge.providers.lgemail/account"

    .line 1020
    .local v16, "email_provider":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "[isMdmAccountOldEmail] start."

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :try_start_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/mdm"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1023
    .local v2, "email_account_uri":Landroid/net/Uri;
    const-string/jumbo v1, "content://com.lge.email.providers.content/account/mdm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1024
    .local v17, "nc_email_accouct_uri":Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1025
    .local v15, "email_normal_account_uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1026
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1025
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1027
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_a6

    .line 1028
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "use Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1030
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, v17

    move-object v6, v3

    .line 1029
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1031
    if-nez v12, :cond_a6

    .line 1032
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "use Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1034
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v15

    move-object v6, v3

    move-object/from16 v7, v18

    .line 1033
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1038
    :cond_a6
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cursor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    if-eqz v12, :cond_de

    .line 1040
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cursor count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_de
    if-eqz v12, :cond_16e

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 1044
    const/4 v11, 0x0

    .line 1045
    .local v11, "accountType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1046
    .local v14, "emailAddress":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1049
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v14    # "emailAddress":Ljava/lang/String;
    .local v10, "MDMAccount":I
    :cond_e9
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1050
    .local v11, "accountType":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1051
    .local v14, "emailAddress":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1053
    const/4 v1, 0x1

    if-ne v10, v1, :cond_168

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 1054
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1053
    if-eqz v1, :cond_168

    .line 1055
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "accountType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "emailAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MDMAccount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_15a} :catch_17c
    .catchall {:try_start_22 .. :try_end_15a} :catchall_191

    .line 1058
    const/4 v1, 0x1

    .line 1065
    if-eqz v12, :cond_163

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_164

    .line 1058
    :cond_163
    :goto_163
    return v1

    .line 1066
    :cond_164
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_163

    .line 1060
    :cond_168
    :try_start_168
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16b} :catch_17c
    .catchall {:try_start_168 .. :try_end_16b} :catchall_191

    move-result v1

    if-nez v1, :cond_e9

    .line 1065
    .end local v10    # "MDMAccount":I
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v14    # "emailAddress":Ljava/lang/String;
    :cond_16e
    if-eqz v12, :cond_176

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_178

    .line 1070
    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "email_normal_account_uri":Landroid/net/Uri;
    .end local v17    # "nc_email_accouct_uri":Landroid/net/Uri;
    :cond_176
    :goto_176
    const/4 v1, 0x0

    return v1

    .line 1066
    .restart local v2    # "email_account_uri":Landroid/net/Uri;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "email_normal_account_uri":Landroid/net/Uri;
    .restart local v17    # "nc_email_accouct_uri":Landroid/net/Uri;
    :cond_178
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_176

    .line 1062
    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "email_normal_account_uri":Landroid/net/Uri;
    .end local v17    # "nc_email_accouct_uri":Landroid/net/Uri;
    :catch_17c
    move-exception v13

    .line 1063
    .local v13, "e":Ljava/lang/Exception;
    :try_start_17d
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "catch Exception CHECK Provider !!"

    invoke-static {v1, v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_185
    .catchall {:try_start_17d .. :try_end_185} :catchall_191

    .line 1065
    if-eqz v12, :cond_176

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_176

    .line 1066
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_176

    .line 1064
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_191
    move-exception v1

    .line 1065
    if-eqz v12, :cond_19a

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_19b

    .line 1064
    :cond_19a
    :goto_19a
    throw v1

    .line 1066
    :cond_19b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_19a
.end method

.method private isModuleEASFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 93
    const-string/jumbo v0, "LGMDMWifiUIAdapter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 94
    return v1

    .line 95
    :cond_b
    const-string/jumbo v0, "LGMDMExternalAdapter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 96
    return v1

    .line 97
    :cond_15
    const-string/jumbo v0, "LGMDMEmailUIAdapter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 98
    return v1

    .line 99
    :cond_1f
    const-string/jumbo v0, "LGMDMBluetoothAdapter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 100
    return v1

    .line 101
    :cond_29
    const-string/jumbo v0, "LGMDMTetheringUIAdapter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 102
    return v1

    .line 103
    :cond_33
    const-string/jumbo v0, "LGMDMHotspotUIAdapter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 104
    return v1

    .line 105
    :cond_3d
    const-string/jumbo v0, "LGMDMBluetoothTetheringUIAdapter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 106
    return v1

    .line 107
    :cond_47
    const-string/jumbo v0, "LGMDMUsbUIAdapter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 108
    return v1

    .line 110
    :cond_51
    const/4 v0, 0x0

    return v0
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 894
    if-nez p0, :cond_8

    .line 895
    const-string/jumbo v4, "none"

    return-object v4

    .line 897
    :cond_8
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 898
    .local v3, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v4, v3

    if-ge v1, v4, :cond_20

    .line 899
    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 900
    aput-object v5, v3, v1

    .line 898
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 903
    :cond_20
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    aget-object v4, v3, v6

    if-nez v4, :cond_2c

    .line 904
    const-string/jumbo v4, "none"

    return-object v4

    .line 906
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_32
    array-length v4, v3

    if-ge v1, v4, :cond_4b

    .line 908
    aget-object v2, v3, v1

    .line 909
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_48

    .line 910
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_45

    .line 911
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    :cond_45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 916
    .end local v2    # "s":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private strReverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 751
    const-string/jumbo v1, ""

    .line 752
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 755
    :cond_22
    return-object v1
.end method


# virtual methods
.method public addFilterIMEServiceReceiver(Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 1210
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addFilterIMEServiceReceiver"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string/jumbo v0, "com.lge.mdm.intent.action.HIDE_IME"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method public addFilterUsbDevicecManagerReceiver(Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 572
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addFilterUsbDevicecManagerReceiver: "

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string/jumbo v0, "com.lge.mdm.intent.action.USB_FORCE_DISABLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string/jumbo v0, "com.lge.mdm.intent.action.USB_FORCE_ENABLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public addFilterWifiP2pServiceReceiver(Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 559
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addFilterWifiP2pServiceReceiver: "

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string/jumbo v0, "com.lge.mdm.intent.action.WIFIP2P_FORCE_DISABLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public checkBluetoothAudioOnly(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 324
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkBluetoothAudioOnly() address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", userHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v4

    .line 328
    .local v4, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v4, v10, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;I)I

    move-result v5

    if-ne v5, v8, :cond_3f

    const/4 v3, 0x1

    .line 329
    .local v3, "isAudioOnlyPolicy":Z
    :goto_32
    if-eqz v3, :cond_9a

    .line 330
    if-nez p1, :cond_41

    .line 331
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothAudioOnly block address is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v8

    .line 328
    .end local v3    # "isAudioOnlyPolicy":Z
    :cond_3f
    const/4 v3, 0x0

    .restart local v3    # "isAudioOnlyPolicy":Z
    goto :goto_32

    .line 335
    :cond_41
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 337
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 338
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-nez v0, :cond_58

    .line 339
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothAudioOnly block btClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v8

    .line 343
    :cond_58
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "btClass.getMajorDeviceClass():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    if-nez v5, :cond_84

    .line 346
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "btClass.getMajorDeviceClass() is zero, not set...."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v9

    .line 350
    :cond_84
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    const/16 v6, 0x400

    if-ne v5, v6, :cond_98

    const/4 v2, 0x1

    .line 351
    .local v2, "isAudioBTClass":Z
    :goto_8d
    if-nez v2, :cond_9a

    .line 352
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothAudioOnly block bluetooth except audio "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v8

    .line 350
    .end local v2    # "isAudioBTClass":Z
    :cond_98
    const/4 v2, 0x0

    .restart local v2    # "isAudioBTClass":Z
    goto :goto_8d

    .line 356
    .end local v0    # "btClass":Landroid/bluetooth/BluetoothClass;
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "isAudioBTClass":Z
    :cond_9a
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothAudioOnly is false"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return v9
.end method

.method public checkBluetoothAudioOnlyForCoD(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 362
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkBluetoothAudioOnlyForCoD() address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", userHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v4

    .line 366
    .local v4, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v4, v9, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;I)I

    move-result v5

    if-ne v5, v8, :cond_3e

    const/4 v3, 0x1

    .line 367
    .local v3, "isAudioOnlyPolicy":Z
    :goto_31
    if-eqz v3, :cond_8a

    .line 368
    if-nez p1, :cond_40

    .line 369
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothAudioOnlyForCoD block address is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v8

    .line 366
    .end local v3    # "isAudioOnlyPolicy":Z
    :cond_3e
    const/4 v3, 0x0

    .restart local v3    # "isAudioOnlyPolicy":Z
    goto :goto_31

    .line 373
    :cond_40
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 375
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 376
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-nez v0, :cond_57

    .line 377
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothAudioOnlyForCoD block btClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return v8

    .line 381
    :cond_57
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "btClass.getMajorDeviceClass():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    const/16 v6, 0x400

    if-ne v5, v6, :cond_88

    const/4 v2, 0x1

    .line 388
    .local v2, "isAudioBTClass":Z
    :goto_7d
    if-nez v2, :cond_8a

    .line 389
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothAudioOnlyForCoD block bluetooth except audio "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v8

    .line 387
    .end local v2    # "isAudioBTClass":Z
    :cond_88
    const/4 v2, 0x0

    .restart local v2    # "isAudioBTClass":Z
    goto :goto_7d

    .line 393
    .end local v0    # "btClass":Landroid/bluetooth/BluetoothClass;
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "isAudioBTClass":Z
    :cond_8a
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothAudioOnlyForCoD is false"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v5, 0x0

    return v5
.end method

.method public checkBluetoothDevice(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 407
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v2

    .line 409
    .local v2, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v2, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBluetoothSearchedDeviceType(Landroid/content/ComponentName;I)I

    move-result v4

    .line 410
    .local v4, "nBluetoothDeviceType":I
    const/16 v5, 0x1f

    if-ne v4, v5, :cond_10

    .line 411
    return v8

    .line 412
    :cond_10
    if-nez v4, :cond_1b

    .line 413
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    .line 414
    const-string/jumbo v6, "checkBluetoothDevice() (nBluetoothDeviceType == LGMDMManager.LGMDMBLUETOOTH_DEVICE_NONE) "

    .line 413
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v7

    .line 418
    :cond_1b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 419
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 420
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-nez v0, :cond_32

    .line 421
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "btClass is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return v8

    .line 424
    :cond_32
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v3

    .line 426
    .local v3, "nBTMajorClass":I
    sparse-switch v3, :sswitch_data_82

    .line 452
    and-int/lit8 v5, v4, 0x10

    const/16 v6, 0x10

    if-eq v5, v6, :cond_80

    .line 453
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothDevice() disallow ETC profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v7

    .line 428
    :sswitch_48
    and-int/lit8 v5, v4, 0x1

    if-eq v5, v7, :cond_80

    .line 429
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothDevice() disallow audio profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v7

    .line 434
    :sswitch_55
    and-int/lit8 v5, v4, 0x2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_80

    .line 435
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothDevice() disallow moblie phone profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v7

    .line 440
    :sswitch_63
    and-int/lit8 v5, v4, 0x4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_80

    .line 441
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothDevice() disallow computer profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v7

    .line 446
    :sswitch_71
    and-int/lit8 v5, v4, 0x8

    const/16 v6, 0x8

    if-eq v5, v6, :cond_80

    .line 447
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkBluetoothDevice() disallow HID profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v7

    .line 459
    :cond_80
    return v8

    .line 426
    nop

    :sswitch_data_82
    .sparse-switch
        0x100 -> :sswitch_63
        0x200 -> :sswitch_55
        0x400 -> :sswitch_48
        0x500 -> :sswitch_71
    .end sparse-switch
.end method

.method public checkBluetoothPairing(Ljava/lang/String;ZI)Z
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "withToast"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 516
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkBluetoothPairing, address:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " userHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v2

    .line 519
    .local v2, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkBluetoothMacAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 520
    if-eqz p2, :cond_37

    .line 521
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_common_point:I

    .line 522
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_bluetooth_pairing_SHORT:I

    .line 521
    invoke-virtual {v2, v4, v5, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId2(III)V

    .line 524
    :cond_37
    const/4 v4, 0x1

    return v4

    .line 527
    :cond_39
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 529
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    .line 531
    .local v3, "state":I
    const/16 v4, 0xc

    if-ne v3, v4, :cond_4b

    .line 532
    const/4 v4, 0x0

    return v4

    .line 535
    :cond_4b
    const/4 v4, 0x0

    invoke-virtual {v2, v4, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothPairing(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_78

    const/4 v1, 0x0

    .line 536
    .local v1, "btPolicy":Z
    :goto_53
    if-eqz p2, :cond_5e

    if-eqz v1, :cond_5e

    .line 538
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_common_point:I

    .line 539
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_bluetooth_pairing_SHORT:I

    .line 537
    invoke-virtual {v2, v4, v5, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId2(III)V

    .line 542
    :cond_5e
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkBluetoothPairing btPolicy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return v1

    .line 535
    .end local v1    # "btPolicy":Z
    :cond_78
    const/4 v1, 0x1

    .restart local v1    # "btPolicy":Z
    goto :goto_53
.end method

.method public checkBluetoothProfileStatus(II)Z
    .registers 11
    .param p1, "nBluetoothProfile"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 463
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkBluetoothProfileStatus, nBluetoothProfile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 464
    const-string/jumbo v4, " userHandle:"

    .line 463
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 468
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v1, :cond_30

    const/4 v2, -0x1

    if-ne p1, v2, :cond_31

    .line 469
    :cond_30
    return v5

    .line 472
    :cond_31
    invoke-virtual {v1, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothProfiles(Landroid/content/ComponentName;I)I

    move-result v0

    .line 474
    .local v0, "checkMDMProfile":I
    const/16 v2, 0xf

    if-ne v0, v2, :cond_42

    .line 475
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    .line 476
    const-string/jumbo v3, "checkBluetoothProfileStatus checkMDMProfile LGMDMBLUETOOTH_PROFILE_ALL_TYPE"

    .line 475
    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return v5

    .line 478
    :cond_42
    if-nez v0, :cond_4d

    .line 479
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    .line 480
    const-string/jumbo v3, "checkBluetoothProfileStatus checkMDMProfile LGMDMBLUETOOTH_PROFILE_NONE_TYPE"

    .line 479
    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return v6

    .line 484
    :cond_4d
    and-int v2, v0, p1

    if-eq v2, p1, :cond_76

    .line 485
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkBluetoothProfileStatus checkMDMProfile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 486
    const-string/jumbo v4, ", nBluetoothProfile "

    .line 485
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return v6

    .line 489
    :cond_76
    return v5
.end method

.method public checkBluetoothProfileToast(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 494
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkBluetoothProfile, userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 499
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v1, :cond_21

    .line 500
    return-void

    .line 503
    :cond_21
    invoke-virtual {v1, v5, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothProfiles(Landroid/content/ComponentName;I)I

    move-result v0

    .line 505
    .local v0, "checkMDMProfile":I
    if-ltz v0, :cond_38

    .line 506
    const/16 v2, 0xf

    if-le v2, v0, :cond_38

    .line 507
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    .line 508
    const-string/jumbo v3, "Toast : Some Bluetooth features are unavailable by server policy."

    .line 507
    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_block_bluetooth_profile:I

    .line 509
    invoke-virtual {v1, v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 493
    :cond_38
    return-void
.end method

.method public checkBluetoothVisible(I)Z
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 547
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 548
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothVisible(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 549
    .local v1, "ret":Z
    if-eqz v1, :cond_15

    .line 550
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "BluetoothVisible is allowed"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v2, 0x0

    return v2

    .line 553
    :cond_15
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "BluetoothVisible is disallowed"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v2, 0x1

    return v2
.end method

.method public checkCIDMountServiceWhitelist(I)Z
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1228
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkCIDMountServiceWhitelist(int userHandle ) : userHandle is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v5

    .line 1231
    .local v5, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v5, :cond_2a

    .line 1232
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkCIDMountServiceWhitelist() : mdm == null"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    return v11

    .line 1236
    :cond_2a
    invoke-virtual {v5, v10, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCIDWithWhitelist(Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 1237
    const/4 v4, 0x0

    .line 1238
    .local v4, "mCIDlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5, v10, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCIDWithWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v4

    .line 1239
    .local v4, "mCIDlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getSDCARDiD()Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, "currentCID":Ljava/lang/String;
    if-nez v0, :cond_44

    .line 1241
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkCIDMountServiceWhitelist : currentCID is null"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    return v11

    .line 1244
    :cond_44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_54

    .line 1245
    sget-object v7, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    .line 1246
    const-string/jumbo v8, "checkCIDMountServiceWhitelist : currentCID.length() is not reasonable"

    .line 1245
    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    return v11

    .line 1250
    :cond_54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1251
    .local v6, "reasonableCID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1252
    .local v3, "iswhitelist":Z
    if-eqz v4, :cond_78

    .line 1253
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "iswhitelist":Z
    .local v2, "externalmemoryCID$iterator":Ljava/util/Iterator;
    :cond_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1254
    .local v1, "externalmemoryCID":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1255
    .local v3, "iswhitelist":Z
    if-eqz v3, :cond_66

    .line 1260
    .end local v1    # "externalmemoryCID":Ljava/lang/String;
    .end local v2    # "externalmemoryCID$iterator":Ljava/util/Iterator;
    .end local v3    # "iswhitelist":Z
    :cond_78
    return v3

    .line 1262
    .end local v0    # "currentCID":Ljava/lang/String;
    .end local v4    # "mCIDlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "reasonableCID":Ljava/lang/String;
    :cond_79
    return v11
.end method

.method public checkDisabledAccountManagerService(Landroid/content/Context;Landroid/accounts/Account;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userHandle"    # I

    .prologue
    .line 958
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 959
    invoke-direct {p0, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->isAccountByGoogle(Landroid/accounts/Account;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 960
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 962
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public checkDisabledLGVpn(I)Z
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 1196
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 1197
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVpn(Landroid/content/ComponentName;I)I

    move-result v1

    .line 1199
    .local v1, "vpn_mode":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    .line 1200
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    .line 1201
    :cond_f
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkDisabledVpn : Disallow mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_block_vpn_connection_point:I

    invoke-virtual {v0, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    .line 1203
    const/4 v2, 0x1

    return v2

    .line 1205
    :cond_2f
    const/4 v2, 0x0

    return v2
.end method

.method public checkDisabledMountService(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 280
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkDisabledMountService() Component:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 281
    const-string/jumbo v6, ", userHandle:"

    .line 280
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v2

    .line 285
    .local v2, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v2, p1, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowExternalMemorySlot(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_56

    .line 287
    :try_start_3a
    invoke-virtual {p0}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 288
    .local v3, "volumeinfos":[Landroid/os/storage/VolumeInfo;
    if-nez v3, :cond_46

    .line 289
    return v7

    .line 291
    :cond_46
    array-length v1, v3

    .line 292
    .local v1, "length":I
    invoke-virtual {p0, v3, v1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->isDisabledMountService([Landroid/os/storage/VolumeInfo;I)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4a} :catch_4c

    move-result v4

    return v4

    .line 293
    .end local v1    # "length":I
    .end local v3    # "volumeinfos":[Landroid/os/storage/VolumeInfo;
    :catch_4c
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    return v7

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_56
    return v7
.end method

.method public checkDisabledMountServiceUSBHostStorage(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 1169
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkDisabledMountServiceUSBHostStorage() Component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1170
    const-string/jumbo v3, ", userHandle:"

    .line 1169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 1174
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBHostStorage(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1175
    const/4 v1, 0x1

    return v1

    .line 1177
    :cond_3b
    const/4 v1, 0x0

    return v1
.end method

.method public checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mCurrentModuleName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/high16 v9, 0x2000000

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkDisabled() Component : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mCurrentModuleName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 182
    const-string/jumbo v5, ", userHandle:"

    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 186
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v0, :cond_43

    .line 187
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "LGMDMDevicePolicyManagerService is null!!, waring!!"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return v6

    .line 191
    :cond_43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 192
    return v6

    .line 195
    :cond_4a
    invoke-direct {p0, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->isModuleEASFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledSystemServiceForEAS(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    return v3

    .line 199
    :cond_55
    const-string/jumbo v3, "LGMDMGPSUIAdpater"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 200
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGPSLocation(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 201
    return v6

    .line 203
    :cond_65
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_block_gps_point:I

    invoke-virtual {v0, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 204
    return v7

    .line 205
    :cond_6b
    const-string/jumbo v3, "LGMDMWiperAdapter"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 206
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWipeData(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 207
    return v6

    .line 209
    :cond_7b
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_block_factoryreset_NORMAL:I

    invoke-virtual {v0, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 211
    return v7

    .line 212
    :cond_81
    const-string/jumbo v3, "LGMDMMobileNetworkAdapter"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 213
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 214
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_keep_data_connection_point:I

    invoke-virtual {v0, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 216
    return v7

    .line 217
    :cond_96
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMobileNetwork(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_13c

    .line 218
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_block_data_point:I

    invoke-virtual {v0, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 220
    return v7

    .line 222
    :cond_a2
    const-string/jumbo v3, "LGMDMDataRoamingAdapter"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 223
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowDataRoaming(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_13c

    .line 224
    sget v3, Lcom/lge/internal/R$string;->sp_block_data_roaming_point:I

    invoke-virtual {v0, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 226
    return v7

    .line 229
    :cond_b7
    const-string/jumbo v3, "LGMDMRestrictBackgroundDataUIAdapter"

    .line 228
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 230
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 231
    return v6

    .line 233
    :cond_c7
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "LGMDM: Disallow Background Data"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_cannot_restrict_background_data_NORMAL:I

    .line 234
    invoke-virtual {v0, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 237
    return v7

    .line 238
    :cond_d5
    const-string/jumbo v3, "LGMDMStatusBarAdapter"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 239
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowStatusBarExpansion(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 240
    return v6

    .line 242
    :cond_e5
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "LGMDM: Disallow Status Bar"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return v7

    .line 244
    :cond_ee
    const-string/jumbo v3, "LGMDMGoogleBackupUIAdapter"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 245
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGoogleBackup(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 246
    return v6

    .line 248
    :cond_fe
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "LGMDM: Disallow Google Backup Data"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_backup_my_data_point:I

    .line 251
    .local v1, "oriStringId":I
    if-le v1, v9, :cond_10f

    move v2, v1

    .line 252
    .local v2, "resouceId":I
    :goto_10b
    invoke-virtual {v0, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    .line 253
    return v7

    .line 251
    .end local v2    # "resouceId":I
    :cond_10f
    or-int v2, v1, v9

    .restart local v2    # "resouceId":I
    goto :goto_10b

    .line 254
    .end local v1    # "oriStringId":I
    .end local v2    # "resouceId":I
    :cond_112
    const-string/jumbo v3, "LGMDMMiracastUIAdapter"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 255
    invoke-virtual {v0, v8, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 256
    invoke-virtual {v0, v8, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiDirect(Landroid/content/ComponentName;I)Z

    move-result v3

    .line 255
    if-eqz v3, :cond_12e

    .line 257
    invoke-virtual {v0, v8, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMiracast(Landroid/content/ComponentName;I)Z

    move-result v3

    .line 255
    if-eqz v3, :cond_12e

    .line 258
    return v6

    .line 260
    :cond_12e
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "LGMDM: Disallow Miracast"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_block_miracast_point:I

    invoke-virtual {v0, v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    .line 262
    return v7

    .line 265
    :cond_13c
    return v6
.end method

.method public checkDisabledSystemServiceForEAS(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mCurrentModuleName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkDisabled() Component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mCurrentModuleName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    const-string/jumbo v3, ", userHandle:"

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 120
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v0, :cond_40

    .line 121
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "LGMDMDevicePolicyManagerService is null!!, waring!!"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return v4

    .line 125
    :cond_40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 126
    return v4

    .line 129
    :cond_47
    const-string/jumbo v1, "LGMDMWifiUIAdapter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 130
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 131
    return v4

    .line 133
    :cond_57
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_blockwifi_point:I

    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 134
    return v5

    .line 135
    :cond_5d
    const-string/jumbo v1, "LGMDMExternalAdapter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 137
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowExternalMemorySlot(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 138
    return v4

    .line 141
    :cond_6d
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "checkDisabled() true"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return v5

    .line 143
    :cond_76
    const-string/jumbo v1, "LGMDMEmailUIAdapter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 144
    invoke-virtual {v0, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isManualSyncCurrent(I)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 145
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "LGMDM: Manual Auto sync is true"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return v4

    .line 148
    :cond_8e
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_control_autosync_NORMAL:I

    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 150
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "LGMDM: Manual Auto sync is false"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v5

    .line 152
    :cond_9c
    const-string/jumbo v1, "LGMDMBluetoothAdapter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 154
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;I)I

    move-result v1

    if-eqz v1, :cond_c9

    .line 155
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LGMDM: Allow bluetooth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v4

    .line 158
    :cond_c9
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_bluetooth_point:I

    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 160
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "LGMDM: Disallow bluetooth "

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return v5

    .line 162
    :cond_d7
    const-string/jumbo v1, "LGMDMTetheringUIAdapter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 163
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getInstance()Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    move-result-object v1

    invoke-virtual {v1, v5, p3}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getDisallowTetheringType(II)Z

    move-result v1

    return v1

    .line 165
    :cond_e9
    const-string/jumbo v1, "LGMDMHotspotUIAdapter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 166
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getInstance()Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    move-result-object v1

    .line 167
    const/4 v2, 0x2

    .line 166
    invoke-virtual {v1, v2, p3}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getDisallowTetheringType(II)Z

    move-result v1

    return v1

    .line 169
    :cond_fc
    const-string/jumbo v1, "LGMDMBluetoothTetheringUIAdapter"

    .line 168
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 170
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getInstance()Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    move-result-object v1

    .line 171
    const/4 v2, 0x3

    .line 170
    invoke-virtual {v1, v2, p3}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getDisallowTetheringType(II)Z

    move-result v1

    return v1

    .line 172
    :cond_10f
    const-string/jumbo v1, "LGMDMUsbUIAdapter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 173
    const/4 v1, 0x7

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledUSBType(II)Z

    move-result v1

    return v1

    .line 176
    :cond_11e
    return v4
.end method

.method public checkDisabledTetherType(II)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 925
    invoke-static {}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getInstance()Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getDisallowTetheringType(II)Z

    move-result v0

    return v0
.end method

.method public checkDisabledUSBType(II)Z
    .registers 5
    .param p1, "usbType"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 920
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 921
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDisallowUSBType(II)Z

    move-result v1

    return v1
.end method

.method public checkDisabledVpn(I)Z
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    .line 1182
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 1183
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVpn(Landroid/content/ComponentName;I)I

    move-result v1

    .line 1185
    .local v1, "vpn_mode":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    .line 1186
    if-ne v1, v5, :cond_2e

    .line 1187
    :cond_f
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkDisabledVpn : Disallow mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_block_vpn_connection_point:I

    invoke-virtual {v0, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    .line 1189
    return v5

    .line 1191
    :cond_2e
    const/4 v2, 0x0

    return v2
.end method

.method public checkDisabledWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1223
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 1224
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDisallowWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public checkDisabledWifiDirect(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 1155
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 1157
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiDirect(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1158
    invoke-virtual {v0, v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1159
    :cond_11
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "checkDisabledWifiDirect :  Disallow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const/4 v1, 0x1

    return v1

    .line 1163
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method public checkDisabledWifiScanWithToast(IZ)Z
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "needToast"    # Z

    .prologue
    .line 827
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 828
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifiScan(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 829
    const/4 v1, 0x0

    return v1

    .line 832
    :cond_d
    if-eqz p2, :cond_14

    .line 833
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_wifi_scan_point:I

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    .line 835
    :cond_14
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "checkDisabledWifiScanWithToast : Disallow WiFi Scan MODE"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v1, 0x1

    return v1
.end method

.method public checkDisabledWifiSecurity(Landroid/net/wifi/WifiConfiguration;II)Z
    .registers 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netID"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 840
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 841
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getDisallowWifiSecurityLevel(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v1

    return v1
.end method

.method public checkMobileNetwork(ZI)Z
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 593
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkMobileNetwork()  enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", userHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 597
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 598
    if-nez p1, :cond_46

    .line 599
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_keep_data_connection_point:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 601
    return v4

    .line 603
    :cond_38
    invoke-virtual {v0, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMobileNetwork(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_46

    .line 604
    if-eqz p1, :cond_46

    .line 605
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_data_point:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 607
    return v4

    .line 610
    :cond_46
    const/4 v1, 0x0

    return v1
.end method

.method public checkNotifyAccountManagerService(Landroid/content/Context;Landroid/accounts/Account;[Landroid/accounts/Account;I)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accounts"    # [Landroid/accounts/Account;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 969
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v2

    .line 970
    .local v2, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v2, v5, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getNotifyRemoveGoogleAccountDisabled(Landroid/content/ComponentName;I)Z

    move-result v5

    if-nez v5, :cond_71

    .line 971
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 972
    array-length v4, p3

    .line 973
    .local v4, "totalCounts":I
    const/4 v3, 0x0

    .line 974
    .local v3, "remainGoogleAccountNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v4, :cond_2d

    .line 975
    aget-object v5, p3, v0

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 976
    add-int/lit8 v3, v3, 0x1

    .line 974
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 979
    :cond_2d
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Accounts totalCounts : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 980
    const-string/jumbo v7, " , number of remainning google account : "

    .line 979
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.lge.mdm.intent.ACTION_NOTIFY_REMOVE_GOOGLE_ACCOUNT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "remainGoogleAccountNum"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    invoke-static {}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->getInstance()Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    move-result-object v5

    if-nez v5, :cond_68

    .line 984
    invoke-static {p1}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->initialize(Landroid/content/Context;)V

    .line 986
    :cond_68
    invoke-static {}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->getInstance()Lcom/lge/mdm/util/handler/LGMDMPostRunnable;

    move-result-object v5

    invoke-virtual {v5, v1, p4}, Lcom/lge/mdm/util/handler/LGMDMPostRunnable;->sendBroadcastAsUser(Landroid/content/Intent;I)V

    .line 987
    const/4 v5, 0x1

    return v5

    .line 990
    .end local v0    # "i":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "remainGoogleAccountNum":I
    .end local v4    # "totalCounts":I
    :cond_71
    const/4 v5, 0x0

    return v5
.end method

.method public checkSimplepasswordCorrect(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 614
    const-string/jumbo v1, "abcdefghijklmnopqrstuvwxyz"

    .line 615
    .local v1, "aAlpha":Ljava/lang/String;
    const-string/jumbo v2, "0123456789012"

    .line 616
    .local v2, "aNumeric":Ljava/lang/String;
    const/4 v8, 0x1

    .line 617
    .local v8, "nRepCount":I
    const/4 v9, 0x4

    .line 618
    .local v9, "nReqLimit":I
    const/4 v5, 0x0

    .line 619
    .local v5, "currChar":C
    const/4 v11, 0x0

    .line 620
    .local v11, "prevChar":C
    const-string/jumbo v13, ""

    .line 622
    .local v13, "sRepeatedString":Ljava/lang/String;
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v7

    .line 623
    .local v7, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSimplePasswordEx(Landroid/content/ComponentName;)I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    .line 624
    const/4 v9, 0x3

    .line 628
    :cond_1d
    const/4 v6, 0x0

    .end local v5    # "currChar":C
    .end local v11    # "prevChar":C
    .local v6, "i":I
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_4d

    .line 629
    move v11, v5

    .line 630
    .local v11, "prevChar":C
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 632
    .local v5, "currChar":C
    if-ne v11, v5, :cond_44

    .line 633
    add-int/lit8 v8, v8, 0x1

    .line 634
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 640
    :goto_40
    if-lt v8, v9, :cond_4a

    .line 641
    const/4 v15, 0x1

    return v15

    .line 636
    :cond_44
    const/4 v8, 0x1

    .line 637
    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    goto :goto_40

    .line 628
    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 645
    .end local v5    # "currChar":C
    .end local v11    # "prevChar":C
    :cond_4d
    const/4 v4, 0x0

    .line 646
    .local v4, "bSeqDigit":Z
    const/4 v3, 0x0

    .line 647
    .local v3, "bSeqAlpha":Z
    const/4 v10, 0x4

    .line 648
    .local v10, "nSeqLimit":I
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSimplePasswordEx(Landroid/content/ComponentName;)I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5c

    .line 649
    const/4 v10, 0x3

    .line 652
    :cond_5c
    const/4 v6, 0x0

    :goto_5d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v10

    add-int/lit8 v15, v15, 0x1

    if-ge v6, v15, :cond_81

    .line 653
    add-int v15, v10, v6

    invoke-virtual {v1, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 654
    .local v12, "sFwd":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->strReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 656
    .local v14, "sRev":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_85

    .line 657
    const/4 v3, 0x1

    .line 667
    .end local v12    # "sFwd":Ljava/lang/String;
    .end local v14    # "sRev":Ljava/lang/String;
    :cond_81
    :goto_81
    if-eqz v3, :cond_98

    .line 668
    const/4 v15, 0x1

    return v15

    .line 661
    .restart local v12    # "sFwd":Ljava/lang/String;
    .restart local v14    # "sRev":Ljava/lang/String;
    :cond_85
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_95

    .line 662
    const/4 v3, 0x1

    .line 663
    goto :goto_81

    .line 652
    :cond_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 672
    .end local v12    # "sFwd":Ljava/lang/String;
    .end local v14    # "sRev":Ljava/lang/String;
    :cond_98
    const/4 v6, 0x0

    :goto_99
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v10

    add-int/lit8 v15, v15, 0x1

    if-ge v6, v15, :cond_bd

    .line 673
    add-int v15, v10, v6

    invoke-virtual {v2, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 674
    .restart local v12    # "sFwd":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->strReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 675
    .restart local v14    # "sRev":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_c1

    .line 676
    const/4 v4, 0x1

    .line 685
    .end local v12    # "sFwd":Ljava/lang/String;
    .end local v14    # "sRev":Ljava/lang/String;
    :cond_bd
    :goto_bd
    if-eqz v4, :cond_d4

    .line 686
    const/4 v15, 0x1

    return v15

    .line 679
    .restart local v12    # "sFwd":Ljava/lang/String;
    .restart local v14    # "sRev":Ljava/lang/String;
    :cond_c1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_d1

    .line 680
    const/4 v4, 0x1

    .line 681
    goto :goto_bd

    .line 672
    :cond_d1
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 690
    .end local v12    # "sFwd":Ljava/lang/String;
    .end local v14    # "sRev":Ljava/lang/String;
    :cond_d4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->mDictionary:Ljava/util/HashMap;

    if-nez v15, :cond_e2

    .line 691
    invoke-direct/range {p0 .. p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getDictionary(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->mDictionary:Ljava/util/HashMap;

    .line 694
    :cond_e2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->mDictionary:Ljava/util/HashMap;

    if-nez v15, :cond_f2

    .line 695
    sget-object v15, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "mDictionary is null!"

    invoke-static/range {v15 .. v16}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const/4 v15, 0x0

    return v15

    .line 699
    :cond_f2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->mDictionary:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_100

    .line 700
    const/4 v15, 0x1

    return v15

    .line 703
    :cond_100
    const/4 v15, 0x0

    return v15
.end method

.method public checkVpnSplitTunneling(IZ)Z
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "popup"    # Z

    .prologue
    .line 1313
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 1315
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowVPNSplitTunneling(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1316
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "checkVpnSplitTunneling :  Disallow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    if-eqz p2, :cond_1a

    .line 1318
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_vpn_spilt_tunneling_point:I

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    .line 1320
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 1322
    :cond_1c
    const/4 v1, 0x1

    return v1
.end method

.method public checkWirelessLocationWithWhitelist(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "calledPackageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 759
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkWirelessLocationWithWhitelist calledPackageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 760
    const-string/jumbo v7, ", userHandle:"

    .line 759
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v3

    .line 764
    .local v3, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v3, :cond_2e

    .line 765
    return v9

    .line 768
    :cond_2e
    invoke-virtual {v3, v8, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWirelessLocationWithWhitelist(Landroid/content/ComponentName;I)Z

    move-result v5

    if-nez v5, :cond_d5

    .line 770
    if-nez p1, :cond_37

    .line 771
    return v9

    .line 773
    :cond_37
    const/4 v0, 0x0

    .line 775
    .local v0, "currentTopPackage":Ljava/lang/String;
    invoke-virtual {v3, v8, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getWirelessLocationWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v4

    .line 777
    .local v4, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "systemService"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 779
    :try_start_45
    new-instance v2, Lcom/lge/mdm/util/LGMDMActivityInfo;

    invoke-direct {v2}, Lcom/lge/mdm/util/LGMDMActivityInfo;-><init>()V

    .line 780
    .local v2, "mLGMDMActivityInfo":Lcom/lge/mdm/util/LGMDMActivityInfo;
    invoke-virtual {v2, p2}, Lcom/lge/mdm/util/LGMDMActivityInfo;->getTopActivityPackageName(I)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_4d} :catch_8a

    move-result-object v0

    .line 785
    .end local v2    # "mLGMDMActivityInfo":Lcom/lge/mdm/util/LGMDMActivityInfo;
    .local v0, "currentTopPackage":Ljava/lang/String;
    :goto_4e
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "systemService callded currentTopPackage is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    if-eqz v0, :cond_74

    .line 787
    if-eqz v4, :cond_74

    .line 788
    const-string/jumbo v5, "com.google.android.apps.maps"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 794
    :cond_74
    if-nez v4, :cond_a2

    .line 795
    if-eqz v0, :cond_a2

    .line 796
    const-string/jumbo v5, "com.google.android.apps.maps"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 794
    if-eqz v5, :cond_a2

    .line 798
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "LocationService of GoogleMap was Bolcked"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return v10

    .line 782
    .local v0, "currentTopPackage":Ljava/lang/String;
    :catch_8a
    move-exception v1

    .line 783
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v3, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getTopPackageName(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "currentTopPackage":Ljava/lang/String;
    goto :goto_4e

    .line 789
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_90
    const-string/jumbo v5, "com.google.android.apps.maps"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 786
    if-eqz v5, :cond_74

    .line 791
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "LocationService of GoogleMap was Bolcked"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return v10

    .line 801
    :cond_a2
    return v9

    .line 802
    .local v0, "currentTopPackage":Ljava/lang/String;
    :cond_a3
    if-eqz v4, :cond_d4

    .line 803
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 804
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "calledPackageName In whiteList"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return v9

    .line 808
    :cond_b4
    :try_start_b4
    new-instance v2, Lcom/lge/mdm/util/LGMDMActivityInfo;

    invoke-direct {v2}, Lcom/lge/mdm/util/LGMDMActivityInfo;-><init>()V

    .line 809
    .restart local v2    # "mLGMDMActivityInfo":Lcom/lge/mdm/util/LGMDMActivityInfo;
    invoke-virtual {v2, p2}, Lcom/lge/mdm/util/LGMDMActivityInfo;->getTopActivityPackageName(I)Ljava/lang/String;
    :try_end_bc
    .catch Ljava/lang/SecurityException; {:try_start_b4 .. :try_end_bc} :catch_ce

    move-result-object v0

    .line 814
    .end local v2    # "mLGMDMActivityInfo":Lcom/lge/mdm/util/LGMDMActivityInfo;
    .local v0, "currentTopPackage":Ljava/lang/String;
    :goto_bd
    if-eqz v0, :cond_d4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 815
    sget-object v5, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "currentTopPackage In whiteList"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    return v9

    .line 811
    .local v0, "currentTopPackage":Ljava/lang/String;
    :catch_ce
    move-exception v1

    .line 812
    .restart local v1    # "e":Ljava/lang/SecurityException;
    invoke-virtual {v3, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getTopPackageName(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "currentTopPackage":Ljava/lang/String;
    goto :goto_bd

    .line 820
    .end local v0    # "currentTopPackage":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_d4
    return v10

    .line 822
    .end local v4    # "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d5
    return v9
.end method

.method public getAllowWiFiProfileManagement(II)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 1123
    const/4 v0, 0x1

    .line 1124
    .local v0, "isAllowed":Z
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 1125
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v1, :cond_a

    .line 1126
    const/4 v2, 0x1

    return v2

    .line 1128
    :cond_a
    invoke-virtual {v1, v2, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWiFiProfileManagement(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1129
    .local v0, "isAllowed":Z
    if-nez v0, :cond_19

    .line 1130
    invoke-virtual {v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPossibleManageWiFiProfile()Z

    move-result v0

    .line 1131
    if-nez v0, :cond_2c

    .line 1132
    packed-switch p1, :pswitch_data_36

    .line 1150
    :cond_19
    :goto_19
    return v0

    .line 1134
    :pswitch_1a
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_block_add_wifi_profile_NORMAL:I

    invoke-virtual {v1, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    goto :goto_19

    .line 1137
    :pswitch_20
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_block_modify_wifi_network_NORMAL:I

    invoke-virtual {v1, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    goto :goto_19

    .line 1140
    :pswitch_26
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_block_forget_wifi_network_NORMAL:I

    invoke-virtual {v1, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(I)V

    goto :goto_19

    .line 1146
    :cond_2c
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Wi-Fi profile management is called by LGMDM"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 1132
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_20
        :pswitch_26
    .end packed-switch
.end method

.method public getBluetoothVisibleDuration(II)I
    .registers 6
    .param p1, "duration"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 398
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 399
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;I)I

    move-result v1

    .line 400
    .local v1, "nMaxTime":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    if-nez v1, :cond_f

    .line 401
    :cond_e
    return p1

    .line 403
    :cond_f
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public getExternalMemoryMounted(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getStorageVolumeForSD(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 945
    .local v0, "storageVolume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_10

    .line 946
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "storageVolume is not null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/4 v1, 0x1

    return v1

    .line 949
    :cond_10
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "storageVolume is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v1, 0x0

    return v1
.end method

.method public getMountService()Landroid/os/storage/IMountService;
    .registers 4

    .prologue
    .line 269
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 270
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_e

    .line 271
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 273
    :cond_e
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "LGMDMMountService is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1107
    const/4 v0, 0x0

    .line 1108
    .local v0, "isMdmAccount":Z
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isAccountByMDM] account name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isAccountByMDM] account type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-static {p1}, Lcom/lge/mdm/util/LGMDMConfig;->isExchangeEmail(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1112
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 1113
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->isMdmAccountFromNewEmail(Landroid/accounts/Account;)Z

    move-result v0

    .line 1118
    .end local v1    # "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .local v0, "isMdmAccount":Z
    :goto_45
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isAccountByMDM] isMdmAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    return v0

    .line 1115
    .local v0, "isMdmAccount":Z
    :cond_5f
    invoke-direct {p0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->isMdmAccountFromOldEmail(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    .local v0, "isMdmAccount":Z
    goto :goto_45
.end method

.method public isDisabledMountService([Landroid/os/storage/VolumeInfo;I)Z
    .registers 10
    .param p1, "volumeinfos"    # [Landroid/os/storage/VolumeInfo;
    .param p2, "length"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 303
    if-ne p2, v6, :cond_1c

    .line 304
    aget-object v1, p1, v3

    .line 305
    .local v1, "volumeinfo":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 306
    return v6

    .line 308
    .end local v1    # "volumeinfo":Landroid/os/storage/VolumeInfo;
    :cond_1c
    if-ne p2, v2, :cond_35

    .line 309
    aget-object v1, p1, v6

    .line 310
    .restart local v1    # "volumeinfo":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 311
    return v6

    .line 313
    .end local v1    # "volumeinfo":Landroid/os/storage/VolumeInfo;
    :cond_35
    if-le p2, v2, :cond_5b

    .line 314
    array-length v4, p1

    move v2, v3

    :goto_39
    if-ge v2, v4, :cond_5b

    aget-object v0, p1, v2

    .line 315
    .local v0, "info":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    if-eqz v5, :cond_58

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 316
    return v6

    .line 314
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 320
    .end local v0    # "info":Landroid/os/storage/VolumeInfo;
    :cond_5b
    return v3
.end method

.method public notificationCIDMountServiceWhitelist(I)Z
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1266
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notificationCIDMountServiceWhitelist(int userHandle ) : userHandle is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 1269
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v0, :cond_2a

    .line 1270
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notificationCIDMountServiceWhitelist() : mdm == null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    return v4

    .line 1274
    :cond_2a
    invoke-virtual {v0, v5, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->notificationCIDMountServiceWhitelist(Landroid/content/ComponentName;I)Z

    .line 1275
    return v4
.end method

.method public recevieIMEIntent(Ljava/lang/String;)Z
    .registers 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1215
    const-string/jumbo v0, "com.lge.mdm.intent.action.HIDE_IME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1216
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recevie MDM Intent() action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const/4 v0, 0x1

    return v0

    .line 1219
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public recevieMDMUsbIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 578
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 579
    :cond_9
    return-object v4

    .line 581
    :cond_a
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recevieMDMUsbIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.lge.mdm.intent.action.USB_FORCE_DISABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 583
    const-string/jumbo v1, "DISCONNECTED"

    return-object v1

    .line 584
    :cond_38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.lge.mdm.intent.action.USB_FORCE_ENABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 585
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "state":Ljava/lang/String;
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recevieMDMUsbIntent usbState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-object v0

    .line 589
    .end local v0    # "state":Ljava/lang/String;
    :cond_66
    return-object v4
.end method

.method public recevieWifiP2pIntent(Ljava/lang/String;)Z
    .registers 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 564
    const-string/jumbo v0, "com.lge.mdm.intent.action.WIFIP2P_FORCE_DISABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 565
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recevie MDM Intent() action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x1

    return v0

    .line 568
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public removeDisallowFunction(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 845
    const/16 v6, 0x8

    invoke-virtual {p0, v6, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledUSBType(II)Z

    move-result v4

    .line 846
    .local v4, "usbAsNoneEnforced":Z
    const/4 v6, 0x7

    invoke-virtual {p0, v6, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledUSBType(II)Z

    move-result v5

    .line 847
    .local v5, "usbDisallowed":Z
    const/4 v6, 0x4

    invoke-virtual {p0, v6, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledUSBType(II)Z

    move-result v3

    .line 848
    .local v3, "tetherDisallowed":Z
    const/4 v6, 0x1

    invoke-virtual {p0, v6, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledUSBType(II)Z

    move-result v1

    .line 849
    .local v1, "mtpDisallowed":Z
    const/4 v6, 0x2

    invoke-virtual {p0, v6, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledUSBType(II)Z

    move-result v2

    .line 850
    .local v2, "ptpDisallowed":Z
    const/4 v6, 0x6

    invoke-virtual {p0, v6, p2}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkDisabledUSBType(II)Z

    move-result v0

    .line 851
    .local v0, "adbDisallowed":Z
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeDisallowFunction :  old functions = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    if-eqz v1, :cond_4a

    const-string/jumbo v6, "mtp"

    invoke-direct {p0, p1, v6}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 854
    const-string/jumbo v6, "mtp"

    invoke-static {p1, v6}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 856
    :cond_4a
    if-eqz v2, :cond_5c

    const-string/jumbo v6, "ptp"

    invoke-direct {p0, p1, v6}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 857
    const-string/jumbo v6, "ptp"

    invoke-static {p1, v6}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 859
    :cond_5c
    if-eqz v3, :cond_6e

    const-string/jumbo v6, "rndis"

    invoke-direct {p0, p1, v6}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 860
    const-string/jumbo v6, "rndis"

    invoke-static {p1, v6}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 862
    :cond_6e
    if-eqz v0, :cond_80

    const-string/jumbo v6, "adb"

    invoke-direct {p0, p1, v6}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 863
    const-string/jumbo v6, "adb"

    invoke-static {p1, v6}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 865
    :cond_80
    if-eqz v5, :cond_85

    .line 866
    const-string/jumbo p1, "charge_only"

    .line 868
    :cond_85
    if-eqz v4, :cond_8a

    .line 869
    const-string/jumbo p1, "none"

    .line 871
    :cond_8a
    sget-object v6, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeDisallowFunction :  new functions = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-object p1
.end method
