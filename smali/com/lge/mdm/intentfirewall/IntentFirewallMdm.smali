.class public Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;
.super Ljava/lang/Object;
.source "IntentFirewallMdm.java"


# static fields
.field protected static final RULES_DIR:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "IntentFirewallMdm"

.field protected static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field protected static final TAG_BROADCAST:Ljava/lang/String; = "broadcast"

.field protected static final TAG_RULES:Ljava/lang/String; = "rules"

.field protected static final TAG_SERVICE:Ljava/lang/String; = "service"

.field protected static final TYPE_ACTIVITY:I = 0x0

.field protected static final TYPE_BROADCAST:I = 0x1

.field protected static final TYPE_SERVICE:I = 0x2


# instance fields
.field private fileName:Ljava/lang/String;

.field private final mRuleActivity:Lcom/lge/mdm/intentfirewall/Rules;

.field private final mRuleBroadcast:Lcom/lge/mdm/intentfirewall/Rules;

.field private final mRuleService:Lcom/lge/mdm/intentfirewall/Rules;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "ifw"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->RULES_DIR:Ljava/io/File;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/lge/mdm/intentfirewall/Rules;

    const-string/jumbo v1, "activity"

    invoke-direct {v0, v1}, Lcom/lge/mdm/intentfirewall/Rules;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleActivity:Lcom/lge/mdm/intentfirewall/Rules;

    .line 110
    new-instance v0, Lcom/lge/mdm/intentfirewall/Rules;

    const-string/jumbo v1, "broadcast"

    invoke-direct {v0, v1}, Lcom/lge/mdm/intentfirewall/Rules;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleBroadcast:Lcom/lge/mdm/intentfirewall/Rules;

    .line 111
    new-instance v0, Lcom/lge/mdm/intentfirewall/Rules;

    const-string/jumbo v1, "service"

    invoke-direct {v0, v1}, Lcom/lge/mdm/intentfirewall/Rules;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleService:Lcom/lge/mdm/intentfirewall/Rules;

    .line 36
    iput-object p1, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->fileName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private _addActivityComponent(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 137
    if-nez p1, :cond_3

    .line 138
    return-void

    .line 141
    :cond_3
    new-instance v0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;

    invoke-direct {v0, p1}, Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;-><init>(Landroid/content/ComponentName;)V

    .line 142
    .local v0, "b":Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;
    iget-object v1, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleActivity:Lcom/lge/mdm/intentfirewall/Rules;

    invoke-virtual {v0}, Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;->build()Lcom/lge/mdm/intentfirewall/Rule;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/mdm/intentfirewall/Rules;->add(Lcom/lge/mdm/intentfirewall/Rule;)V

    .line 136
    return-void
.end method

.method private _addActivityIntentFilter(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    if-nez p1, :cond_3

    .line 123
    return-void

    .line 126
    :cond_3
    new-instance v0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;

    invoke-direct {v0}, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;-><init>()V

    .line 128
    .local v0, "b":Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->setCategories(Ljava/util/Set;)V

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->setSchema(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->setType(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleActivity:Lcom/lge/mdm/intentfirewall/Rules;

    invoke-virtual {v0}, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->build()Lcom/lge/mdm/intentfirewall/Rule;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/mdm/intentfirewall/Rules;->add(Lcom/lge/mdm/intentfirewall/Rule;)V

    .line 121
    return-void
.end method


# virtual methods
.method public addActivity(ZZLandroid/content/Intent;)V
    .registers 6
    .param p1, "isBlock"    # Z
    .param p2, "log"    # Z
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleActivity:Lcom/lge/mdm/intentfirewall/Rules;

    invoke-virtual {v1, p2}, Lcom/lge/mdm/intentfirewall/Rules;->setLogging(Z)V

    .line 115
    iget-object v1, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleActivity:Lcom/lge/mdm/intentfirewall/Rules;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/intentfirewall/Rules;->setBlocked(Z)V

    .line 117
    invoke-direct {p0, p3}, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->_addActivityIntentFilter(Landroid/content/Intent;)V

    .line 118
    if-nez p3, :cond_14

    :goto_10
    invoke-direct {p0, v0}, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->_addActivityComponent(Landroid/content/ComponentName;)V

    .line 113
    return-void

    .line 118
    :cond_14
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_10
.end method

.method public remove()Z
    .registers 5

    .prologue
    .line 54
    sget-object v1, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->RULES_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 55
    const/4 v1, 0x0

    return v1

    .line 58
    :cond_a
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->RULES_DIR:Ljava/io/File;

    iget-object v3, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 59
    .local v0, "isDeleted":Z
    const-string/jumbo v1, "IntentFirewallMdm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is deleted ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x1

    return v1
.end method

.method public save()Z
    .registers 5

    .prologue
    .line 41
    :try_start_0
    sget-object v1, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->RULES_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    sget-object v1, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->RULES_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_25

    .line 42
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Fail to create the rule dir."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_19

    .line 46
    :catch_19
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "IntentFirewallMdm"

    const-string/jumbo v2, "Error at save()"

    invoke-static {v1, v2, v0}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    const/4 v1, 0x0

    return v1

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :cond_25
    :try_start_25
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->RULES_DIR:Ljava/io/File;

    iget-object v3, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->writeToXml(Ljava/io/File;)Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_31} :catch_19

    move-result v1

    return v1
.end method

.method protected writeToXml(Ljava/io/File;)Z
    .registers 12
    .param p1, "rulesFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const-string/jumbo v7, "IntentFirewallMdm"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1f

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 68
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Fail to create the rule file."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 71
    :cond_1f
    const/4 v2, 0x0

    .line 73
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_25} :catch_52

    .line 79
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 82
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v7, 0x0

    :try_start_2a
    invoke-interface {v6, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v7, "rules"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    iget-object v7, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleActivity:Lcom/lge/mdm/intentfirewall/Rules;

    invoke-virtual {v7, v6}, Lcom/lge/mdm/intentfirewall/Rules;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)Lcom/lge/mdm/intentfirewall/Filter;

    .line 86
    iget-object v7, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleBroadcast:Lcom/lge/mdm/intentfirewall/Rules;

    invoke-virtual {v7, v6}, Lcom/lge/mdm/intentfirewall/Rules;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)Lcom/lge/mdm/intentfirewall/Filter;

    .line 87
    iget-object v7, p0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->mRuleService:Lcom/lge/mdm/intentfirewall/Rules;

    invoke-virtual {v7, v6}, Lcom/lge/mdm/intentfirewall/Rules;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)Lcom/lge/mdm/intentfirewall/Filter;

    .line 89
    const-string/jumbo v7, "rules"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_4d} :catch_c5
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_4d} :catch_97
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4d} :catch_69
    .catchall {:try_start_2a .. :try_end_4d} :catchall_f5

    .line 99
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_5e

    .line 106
    :goto_50
    const/4 v7, 0x1

    return v7

    .line 74
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_52
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string/jumbo v7, "IntentFirewallMdm"

    const-string/jumbo v8, "FileNotFoundException"

    invoke-static {v7, v8, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const/4 v7, 0x0

    return v7

    .line 100
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_5e
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "IntentFirewallMdm"

    const-string/jumbo v8, "at cloased() "

    invoke-static {v7, v8, v0}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :catch_69
    move-exception v4

    .line 96
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_6a
    const-string/jumbo v7, "IntentFirewallMdm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error writing file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_6a .. :try_end_88} :catchall_f5

    .line 99
    :try_start_88
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_50

    .line 100
    :catch_8c
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "IntentFirewallMdm"

    const-string/jumbo v8, "at cloased() "

    invoke-static {v7, v8, v0}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_97
    move-exception v5

    .line 94
    .local v5, "ise":Ljava/lang/IllegalStateException;
    :try_start_98
    const-string/jumbo v7, "IntentFirewallMdm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error writing file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_98 .. :try_end_b6} :catchall_f5

    .line 99
    :try_start_b6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_50

    .line 100
    :catch_ba
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "IntentFirewallMdm"

    const-string/jumbo v8, "at cloased() "

    invoke-static {v7, v8, v0}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "ise":Ljava/lang/IllegalStateException;
    :catch_c5
    move-exception v3

    .line 92
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_c6
    const-string/jumbo v7, "IntentFirewallMdm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error writing file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_c6 .. :try_end_e4} :catchall_f5

    .line 99
    :try_start_e4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e9

    goto/16 :goto_50

    .line 100
    :catch_e9
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "IntentFirewallMdm"

    const-string/jumbo v8, "at cloased() "

    invoke-static {v7, v8, v0}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catchall_f5
    move-exception v7

    .line 99
    :try_start_f6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fa

    .line 97
    :goto_f9
    throw v7

    .line 100
    :catch_fa
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "IntentFirewallMdm"

    const-string/jumbo v9, "at cloased() "

    invoke-static {v8, v9, v0}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f9
.end method
