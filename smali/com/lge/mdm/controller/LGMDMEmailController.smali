.class public Lcom/lge/mdm/controller/LGMDMEmailController;
.super Ljava/lang/Object;
.source "LGMDMEmailController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMEmailController$Record;,
        Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;,
        Lcom/lge/mdm/controller/LGMDMEmailController$1;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static COMPONENT_NAME:Ljava/lang/String; = null

.field private static final DEFAULT_DELAY:I = 0x2710

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final IMAP_ACCOUNT_TYPE:I = 0x2

.field private static final MDM_PROJECTION:[Ljava/lang/String;

.field private static final MDM_PROVIDER:Ljava/lang/String; = "content://com.lge.email.provider/mdmPolicy"

.field private static final NEW_EMAIL_PROVIDER:Ljava/lang/String; = "content://com.lge.email.provider/account"

.field private static final OLD_EMAIL_PROVIDER:Ljava/lang/String; = "content://com.lge.providers.lgemail/account"

.field private static final POP_ACCOUNT_TYPE:I = 0x1

.field public static final RETURN_ALLOW:I = 0x2

.field public static final RETURN_ALLOW_AND_PRESTATE_FALSE:I = 0x4

.field public static final RETURN_ALLOW_AND_PRESTATE_TRUE:I = 0x3

.field public static final RETURN_DISALLOW:I = 0x1

.field public static final RETURN_ERROR:I = -0x1

.field public static final RETURN_NO_CHANGE:I = 0x0

.field private static final SELECTION:Ljava/lang/String; = "EASLoginComplete = 1"

.field private static final TAG:Ljava/lang/String; = "EmailController"

.field private static mInstance:Lcom/lge/mdm/controller/LGMDMEmailController;


# instance fields
.field filter:Landroid/content/IntentFilter;

.field private final mAutoSyncChangeReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/controller/LGMDMEmailController$Record;",
            ">;"
        }
    .end annotation
.end field

.field notiHandler:Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;


# direct methods
.method static synthetic -get0(Lcom/lge/mdm/controller/LGMDMEmailController;)Lcom/lge/mdm/admin/LGMDMadministrator;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/lge/mdm/controller/LGMDMEmailController;)Z
    .registers 2

    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->isRoaming()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const-string/jumbo v0, "COMPONENT_NAME"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMEmailController;->COMPONENT_NAME:Ljava/lang/String;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "emailAddress"

    aput-object v1, v0, v3

    const-string/jumbo v1, "accountType"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/mdm/controller/LGMDMEmailController;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "AccountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/mdm/controller/LGMDMEmailController;->MDM_PROJECTION:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "accountID"

    aput-object v1, v0, v2

    const-string/jumbo v1, "mailAddress"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/mdm/controller/LGMDMEmailController;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    .line 789
    new-instance v0, Lcom/lge/mdm/controller/LGMDMEmailController$1;

    invoke-direct {v0, p0}, Lcom/lge/mdm/controller/LGMDMEmailController$1;-><init>(Lcom/lge/mdm/controller/LGMDMEmailController;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mAutoSyncChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 73
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;-><init>(Lcom/lge/mdm/controller/LGMDMEmailController;Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->notiHandler:Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->filter:Landroid/content/IntentFilter;

    .line 76
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->filter:Landroid/content/IntentFilter;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mAutoSyncChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method private getAllEmailAccountFromNew()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMEmailAccountState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    const/4 v15, 0x0

    .line 883
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    const/4 v2, 0x0

    .line 884
    .local v2, "email_account_uri":Landroid/net/Uri;
    const/16 v18, 0x0

    .line 885
    .local v18, "mdm_account_uri":Landroid/net/Uri;
    const/4 v14, 0x0

    .line 886
    .local v14, "email_cursor":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 888
    .local v19, "mdm_cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 889
    .local v9, "accountId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 890
    .local v10, "accountKey":Ljava/lang/String;
    const/4 v13, 0x0

    .line 891
    .local v13, "emailCnt":I
    const/16 v17, 0x0

    .line 893
    .local v17, "mdmCnt":I
    const-string/jumbo v1, "EmailController"

    const-string/jumbo v3, "[getEmailAccountFromNew] start."

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :try_start_15
    const-string/jumbo v1, "content://com.lge.email.provider/account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 896
    .local v2, "email_account_uri":Landroid/net/Uri;
    const-string/jumbo v1, "content://com.lge.email.provider/mdmPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 898
    .local v18, "mdm_account_uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 899
    sget-object v3, Lcom/lge/mdm/controller/LGMDMEmailController;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "EASLoginComplete = 1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 898
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 900
    .local v14, "email_cursor":Landroid/database/Cursor;
    if-nez v14, :cond_4f

    .line 901
    const-string/jumbo v1, "EmailController"

    const-string/jumbo v3, "email_cursor is null!"

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_41} :catch_244
    .catchall {:try_start_15 .. :try_end_41} :catchall_242

    .line 882
    const/4 v1, 0x0

    .line 961
    if-eqz v14, :cond_4a

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 902
    :cond_4a
    :goto_4a
    return-object v1

    .line 962
    :cond_4b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    .line 904
    :cond_4f
    :try_start_4f
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 905
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "email_cursor count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 908
    sget-object v5, Lcom/lge/mdm/controller/LGMDMEmailController;->MDM_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, v18

    .line 907
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 909
    .local v19, "mdm_cursor":Landroid/database/Cursor;
    if-nez v19, :cond_a5

    .line 910
    const-string/jumbo v1, "EmailController"

    const-string/jumbo v3, "mdm_cursor is null!"

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_8b} :catch_244
    .catchall {:try_start_4f .. :try_end_8b} :catchall_242

    .line 882
    const/4 v1, 0x0

    .line 961
    if-eqz v14, :cond_94

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 965
    :cond_94
    :goto_94
    if-eqz v19, :cond_9c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 911
    :cond_9c
    :goto_9c
    return-object v1

    .line 962
    :cond_9d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_94

    .line 966
    :cond_a1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_9c

    .line 913
    :cond_a5
    :try_start_a5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 914
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mdm_cursor count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    if-lez v13, :cond_1c7

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 917
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_d2} :catch_244
    .catchall {:try_start_a5 .. :try_end_d2} :catchall_242

    .line 921
    .end local v9    # "accountId":Ljava/lang/String;
    .end local v10    # "accountKey":Ljava/lang/String;
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    :cond_d2
    :try_start_d2
    new-instance v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;

    invoke-direct {v12}, Lcom/lge/mdm/config/LGMDMEmailAccountState;-><init>()V

    .line 923
    .local v12, "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 924
    .local v9, "accountId":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    .line 927
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 928
    const-string/jumbo v1, "com.android.exchange"

    iput-object v1, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    .line 936
    :goto_f6
    const/4 v1, 0x0

    iput v1, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 937
    if-lez v17, :cond_14c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 939
    :goto_101
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 940
    .local v10, "accountKey":Ljava/lang/String;
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AccountKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_226

    .line 943
    const/4 v1, 0x1

    iput v1, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 944
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is MDM Account"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    .end local v10    # "accountKey":Ljava/lang/String;
    :cond_14c
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Email: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accountType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "is MDM account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_1c2} :catch_1ed
    .catchall {:try_start_d2 .. :try_end_1c2} :catchall_212

    move-result v1

    if-nez v1, :cond_d2

    move-object/from16 v15, v16

    .line 961
    .end local v9    # "accountId":Ljava/lang/String;
    .end local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    :cond_1c7
    if-eqz v14, :cond_1cf

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_22e

    .line 965
    :cond_1cf
    :goto_1cf
    if-eqz v19, :cond_1d7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_232

    .line 970
    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v14    # "email_cursor":Landroid/database/Cursor;
    .end local v18    # "mdm_account_uri":Landroid/net/Uri;
    .end local v19    # "mdm_cursor":Landroid/database/Cursor;
    :cond_1d7
    :goto_1d7
    return-object v15

    .line 929
    .restart local v2    # "email_account_uri":Landroid/net/Uri;
    .restart local v9    # "accountId":Ljava/lang/String;
    .restart local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .restart local v14    # "email_cursor":Landroid/database/Cursor;
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .restart local v18    # "mdm_account_uri":Landroid/net/Uri;
    .restart local v19    # "mdm_cursor":Landroid/database/Cursor;
    :cond_1d8
    const/4 v1, 0x2

    :try_start_1d9
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20d

    .line 930
    const-string/jumbo v1, "com.lge.email.account"

    iput-object v1, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1eb} :catch_1ed
    .catchall {:try_start_1d9 .. :try_end_1eb} :catchall_212

    goto/16 :goto_f6

    .line 958
    .end local v9    # "accountId":Ljava/lang/String;
    .end local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    :catch_1ed
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v15, v16

    .line 959
    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v14    # "email_cursor":Landroid/database/Cursor;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .end local v18    # "mdm_account_uri":Landroid/net/Uri;
    .end local v19    # "mdm_cursor":Landroid/database/Cursor;
    :goto_1f0
    :try_start_1f0
    const-string/jumbo v1, "EmailController"

    const-string/jumbo v3, "catch Exception CHECK Exchange Provider !!"

    invoke-static {v1, v3, v11}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f9
    .catchall {:try_start_1f0 .. :try_end_1f9} :catchall_242

    .line 961
    if-eqz v14, :cond_201

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_236

    .line 965
    :cond_201
    :goto_201
    if-eqz v19, :cond_1d7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1d7

    .line 966
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_1d7

    .line 932
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "email_account_uri":Landroid/net/Uri;
    .restart local v9    # "accountId":Ljava/lang/String;
    .restart local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .restart local v14    # "email_cursor":Landroid/database/Cursor;
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .restart local v18    # "mdm_account_uri":Landroid/net/Uri;
    .restart local v19    # "mdm_cursor":Landroid/database/Cursor;
    :cond_20d
    const/4 v1, 0x0

    :try_start_20e
    iput-object v1, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_210} :catch_1ed
    .catchall {:try_start_20e .. :try_end_210} :catchall_212

    goto/16 :goto_f6

    .line 960
    .end local v9    # "accountId":Ljava/lang/String;
    .end local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    :catchall_212
    move-exception v1

    move-object/from16 v15, v16

    .line 961
    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v14    # "email_cursor":Landroid/database/Cursor;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .end local v18    # "mdm_account_uri":Landroid/net/Uri;
    .end local v19    # "mdm_cursor":Landroid/database/Cursor;
    :goto_215
    if-eqz v14, :cond_21d

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_23a

    .line 965
    :cond_21d
    :goto_21d
    if-eqz v19, :cond_225

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_23e

    .line 960
    :cond_225
    :goto_225
    throw v1

    .line 947
    .restart local v2    # "email_account_uri":Landroid/net/Uri;
    .restart local v9    # "accountId":Ljava/lang/String;
    .restart local v10    # "accountKey":Ljava/lang/String;
    .restart local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .restart local v14    # "email_cursor":Landroid/database/Cursor;
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .restart local v18    # "mdm_account_uri":Landroid/net/Uri;
    .restart local v19    # "mdm_cursor":Landroid/database/Cursor;
    :cond_226
    :try_start_226
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_229} :catch_1ed
    .catchall {:try_start_226 .. :try_end_229} :catchall_212

    move-result v1

    if-eqz v1, :cond_14c

    goto/16 :goto_101

    .line 962
    .end local v9    # "accountId":Ljava/lang/String;
    .end local v10    # "accountKey":Ljava/lang/String;
    .end local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    :cond_22e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1cf

    .line 966
    :cond_232
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_1d7

    .line 962
    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v14    # "email_cursor":Landroid/database/Cursor;
    .end local v18    # "mdm_account_uri":Landroid/net/Uri;
    .end local v19    # "mdm_cursor":Landroid/database/Cursor;
    .restart local v11    # "e":Ljava/lang/Exception;
    :cond_236
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_201

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_23a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_21d

    .line 966
    :cond_23e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_225

    .line 960
    :catchall_242
    move-exception v1

    goto :goto_215

    .line 958
    .local v9, "accountId":Ljava/lang/String;
    .local v10, "accountKey":Ljava/lang/String;
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    :catch_244
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    goto :goto_1f0
.end method

.method private getEmailAccountFromNew(I)Ljava/util/List;
    .registers 9
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMEmailAccountState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 830
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->getAllEmailAccountFromNew()Ljava/util/List;

    move-result-object v2

    .line 831
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    const/4 v4, 0x0

    .line 833
    .local v4, "retList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    if-eqz v2, :cond_67

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_67

    .line 834
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "retList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v4, "retList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;

    .line 837
    .local v0, "account":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    new-instance v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;

    invoke-direct {v3}, Lcom/lge/mdm/config/LGMDMEmailAccountState;-><init>()V

    .line 839
    .local v3, "retAccount":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    if-nez p1, :cond_3e

    .line 840
    iget v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    if-nez v5, :cond_17

    .line 841
    iget-object v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    iput-object v5, v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    .line 842
    iget-object v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    iput-object v5, v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    .line 843
    iget v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    iput v5, v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 844
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 846
    :cond_3e
    if-ne p1, v6, :cond_54

    .line 847
    iget v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    if-ne v5, v6, :cond_17

    .line 848
    iget-object v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    iput-object v5, v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    .line 849
    iget-object v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    iput-object v5, v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    .line 850
    iget v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    iput v5, v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 851
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 853
    :cond_54
    const/4 v5, 0x2

    if-ne p1, v5, :cond_17

    .line 854
    iget-object v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    iput-object v5, v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    .line 855
    iget-object v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    iput-object v5, v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    .line 856
    iget v5, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    iput v5, v3, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 857
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 862
    .end local v0    # "account":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    .end local v3    # "retAccount":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .end local v4    # "retList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    :cond_67
    return-object v4
.end method

.method private getEmailAccountFromOld(I)Ljava/util/List;
    .registers 22
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMEmailAccountState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 974
    const/16 v16, 0x0

    .line 975
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    const/4 v2, 0x0

    .line 976
    .local v2, "email_account_uri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 977
    .local v19, "nc_email_accouct_uri":Landroid/net/Uri;
    const/4 v14, 0x0

    .line 978
    .local v14, "email_normal_account_uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 979
    .local v10, "cursor":Landroid/database/Cursor;
    move/from16 v15, p1

    .line 981
    .local v15, "fromAccount":I
    const-string/jumbo v1, "EmailController"

    const-string/jumbo v3, "[getEmailAccountFromOld] start."

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :try_start_12
    const-string/jumbo v1, "content://com.lge.providers.lgemail/account/mdm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 984
    .local v2, "email_account_uri":Landroid/net/Uri;
    const-string/jumbo v1, "content://com.lge.email.providers.content/account/mdm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 985
    .local v19, "nc_email_accouct_uri":Landroid/net/Uri;
    const-string/jumbo v1, "content://com.lge.providers.lgemail/account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 986
    .local v14, "email_normal_account_uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 987
    sget-object v3, Lcom/lge/mdm/controller/LGMDMEmailController;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 986
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 988
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_99

    .line 989
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "use Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 991
    sget-object v5, Lcom/lge/mdm/controller/LGMDMEmailController;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, v19

    .line 990
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 992
    if-nez v10, :cond_99

    .line 993
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "use Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 995
    sget-object v5, Lcom/lge/mdm/controller/LGMDMEmailController;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "EASLoginComplete = 1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v14

    .line 994
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 999
    :cond_99
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cursor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    if-eqz v10, :cond_d3

    .line 1001
    const-string/jumbo v1, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cursor count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_d3
    if-eqz v10, :cond_111

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 1005
    const/4 v9, 0x0

    .line 1006
    .local v9, "accountType":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1007
    .local v13, "emailAddress":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1008
    .local v18, "mdmAccount":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_e4} :catch_16f
    .catchall {:try_start_12 .. :try_end_e4} :catchall_16d

    .line 1011
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v13    # "emailAddress":Ljava/lang/String;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    :cond_e4
    :try_start_e4
    new-instance v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;

    invoke-direct {v12}, Lcom/lge/mdm/config/LGMDMEmailAccountState;-><init>()V

    .line 1013
    .local v12, "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1014
    .local v9, "accountType":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1015
    .local v13, "emailAddress":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1017
    if-nez v15, :cond_11a

    .line 1018
    if-nez v18, :cond_109

    .line 1019
    iput-object v9, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    .line 1020
    iput-object v13, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    .line 1021
    move/from16 v0, v18

    iput v0, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 1022
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    :cond_109
    :goto_109
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_10c} :catch_130
    .catchall {:try_start_e4 .. :try_end_10c} :catchall_159

    move-result v1

    if-nez v1, :cond_e4

    move-object/from16 v16, v17

    .line 1042
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .end local v13    # "emailAddress":Ljava/lang/String;
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .end local v18    # "mdmAccount":I
    :cond_111
    if-eqz v10, :cond_119

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_165

    .line 1047
    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "email_normal_account_uri":Landroid/net/Uri;
    .end local v19    # "nc_email_accouct_uri":Landroid/net/Uri;
    :cond_119
    :goto_119
    return-object v16

    .line 1024
    .restart local v2    # "email_account_uri":Landroid/net/Uri;
    .restart local v9    # "accountType":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .restart local v13    # "emailAddress":Ljava/lang/String;
    .restart local v14    # "email_normal_account_uri":Landroid/net/Uri;
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .restart local v18    # "mdmAccount":I
    .restart local v19    # "nc_email_accouct_uri":Landroid/net/Uri;
    :cond_11a
    const/4 v1, 0x1

    if-ne v15, v1, :cond_148

    .line 1025
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_109

    .line 1026
    :try_start_122
    iput-object v9, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    .line 1027
    iput-object v13, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    .line 1028
    move/from16 v0, v18

    iput v0, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 1029
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_12f} :catch_130
    .catchall {:try_start_122 .. :try_end_12f} :catchall_159

    goto :goto_109

    .line 1039
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .end local v13    # "emailAddress":Ljava/lang/String;
    :catch_130
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    .line 1040
    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "email_normal_account_uri":Landroid/net/Uri;
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .end local v18    # "mdmAccount":I
    .end local v19    # "nc_email_accouct_uri":Landroid/net/Uri;
    :goto_133
    :try_start_133
    const-string/jumbo v1, "EmailController"

    const-string/jumbo v3, "catch Exception CHECK Provider !!"

    invoke-static {v1, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_16d

    .line 1042
    if-eqz v10, :cond_119

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_119

    .line 1043
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_119

    .line 1031
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "email_account_uri":Landroid/net/Uri;
    .restart local v9    # "accountType":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .restart local v13    # "emailAddress":Ljava/lang/String;
    .restart local v14    # "email_normal_account_uri":Landroid/net/Uri;
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .restart local v18    # "mdmAccount":I
    .restart local v19    # "nc_email_accouct_uri":Landroid/net/Uri;
    :cond_148
    const/4 v1, 0x2

    if-ne v15, v1, :cond_109

    .line 1032
    :try_start_14b
    iput-object v9, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    .line 1033
    iput-object v13, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    .line 1034
    move/from16 v0, v18

    iput v0, v12, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 1035
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_158} :catch_130
    .catchall {:try_start_14b .. :try_end_158} :catchall_159

    goto :goto_109

    .line 1041
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v12    # "emailAccountState":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .end local v13    # "emailAddress":Ljava/lang/String;
    :catchall_159
    move-exception v1

    move-object/from16 v16, v17

    .line 1042
    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "email_normal_account_uri":Landroid/net/Uri;
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    .end local v18    # "mdmAccount":I
    .end local v19    # "nc_email_accouct_uri":Landroid/net/Uri;
    :goto_15c
    if-eqz v10, :cond_164

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_169

    .line 1041
    :cond_164
    :goto_164
    throw v1

    .line 1043
    .restart local v2    # "email_account_uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "email_normal_account_uri":Landroid/net/Uri;
    .restart local v19    # "nc_email_accouct_uri":Landroid/net/Uri;
    :cond_165
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_119

    .end local v2    # "email_account_uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "email_normal_account_uri":Landroid/net/Uri;
    .end local v19    # "nc_email_accouct_uri":Landroid/net/Uri;
    :cond_169
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_164

    .line 1041
    :catchall_16d
    move-exception v1

    goto :goto_15c

    .line 1039
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    :catch_16f
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    goto :goto_133
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMEmailController;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/lge/mdm/controller/LGMDMEmailController;->mInstance:Lcom/lge/mdm/controller/LGMDMEmailController;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Lcom/lge/mdm/controller/LGMDMEmailController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMEmailController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMEmailController;->mInstance:Lcom/lge/mdm/controller/LGMDMEmailController;

    .line 84
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMEmailController;->mInstance:Lcom/lge/mdm/controller/LGMDMEmailController;

    return-object v0
.end method

.method private isRoaming()Z
    .registers 7

    .prologue
    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 319
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 320
    .local v1, "isRoaming":Z
    const-string/jumbo v3, "EmailController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRoaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 321
    return v1

    .line 322
    .end local v1    # "isRoaming":Z
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_2a
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EmailController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRoaming(), TelephonyManager Error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v3, 0x0

    return v3
.end method

.method private makeComponentName(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "config"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 567
    if-nez p1, :cond_6

    .line 568
    return v4

    .line 571
    :cond_6
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, v5}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 572
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_f

    .line 573
    return v4

    .line 576
    :cond_f
    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v1

    .line 577
    .local v1, "info":Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
    if-nez v1, :cond_16

    .line 578
    return v4

    .line 581
    :cond_16
    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 582
    .local v2, "who":Landroid/content/ComponentName;
    if-nez v2, :cond_1d

    .line 583
    return v4

    .line 586
    :cond_1d
    instance-of v3, p1, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    if-eqz v3, :cond_26

    .line 587
    check-cast p1, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .end local p1    # "config":Ljava/lang/Object;
    iput-object v2, p1, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->admin:Landroid/content/ComponentName;

    .line 588
    return v6

    .line 589
    .restart local p1    # "config":Ljava/lang/Object;
    :cond_26
    instance-of v3, p1, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    if-eqz v3, :cond_2f

    .line 590
    check-cast p1, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .end local p1    # "config":Ljava/lang/Object;
    iput-object v2, p1, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->admin:Landroid/content/ComponentName;

    .line 591
    return v6

    .line 592
    .restart local p1    # "config":Ljava/lang/Object;
    :cond_2f
    instance-of v3, p1, Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    if-eqz v3, :cond_38

    .line 593
    check-cast p1, Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    .end local p1    # "config":Ljava/lang/Object;
    iput-object v2, p1, Lcom/lge/mdm/config/LGMDMEmailCertConfig;->admin:Landroid/content/ComponentName;

    .line 594
    return v6

    .line 597
    .restart local p1    # "config":Ljava/lang/Object;
    :cond_38
    return v4
.end method

.method private sendHandleMessage(Landroid/os/Message;J)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delay"    # J

    .prologue
    .line 782
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->notiHandler:Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;

    if-eqz v0, :cond_c

    .line 783
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->notiHandler:Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p1, v2, v3}, Lcom/lge/mdm/controller/LGMDMEmailController$NotiffyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 781
    :goto_b
    return-void

    .line 785
    :cond_c
    const-string/jumbo v0, "EmailController"

    const-string/jumbo v1, "[Error] Email message handler is null. CHECK!!!!!"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private sendStartServiceIntent()V
    .registers 4

    .prologue
    .line 776
    const-string/jumbo v0, "EmailController"

    const-string/jumbo v1, "send start service Intent"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    .line 778
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.EMAIL_ACCOUNT_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 775
    return-void
.end method


# virtual methods
.method protected getActiveSyncID(Landroid/content/ComponentName;II)Ljava/lang/String;
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 373
    const/4 v6, 0x0

    .line 374
    .local v6, "DeviceId":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, ""

    aput-object v0, v2, v4

    .line 375
    .local v2, "arrString":[Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 377
    .local v3, "nullString":Ljava/lang/String;
    const-string/jumbo v0, "content://com.android.exchange.directory.provider/deviceId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 378
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 380
    .local v7, "c":Landroid/database/Cursor;
    :try_start_15
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 381
    .local v7, "c":Landroid/database/Cursor;
    const-string/jumbo v0, "EmailController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getActiveSyncID c ====> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    if-eqz v7, :cond_48

    .line 383
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 384
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_47} :catch_6f
    .catchall {:try_start_15 .. :try_end_47} :catchall_85

    move-result-object v6

    .line 390
    .end local v6    # "DeviceId":Ljava/lang/String;
    :cond_48
    if-eqz v7, :cond_50

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 394
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_50
    :goto_50
    const-string/jumbo v0, "EmailController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DeviceId ====> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-object v6

    .line 391
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_6b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_50

    .line 387
    .end local v7    # "c":Landroid/database/Cursor;
    .restart local v6    # "DeviceId":Ljava/lang/String;
    :catch_6f
    move-exception v8

    .line 388
    .local v8, "e":Ljava/lang/Exception;
    :try_start_70
    const-string/jumbo v0, "EmailController"

    const-string/jumbo v4, "Failed talking with LGMDM controller"

    invoke-static {v0, v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_85

    .line 390
    if-eqz v7, :cond_50

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_50

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_50

    .line 389
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_85
    move-exception v0

    .line 390
    if-eqz v7, :cond_8e

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 389
    :cond_8e
    :goto_8e
    throw v0

    .line 391
    :cond_8f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_8e
.end method

.method protected getAllowAutoSync(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1125
    const/4 v0, 0x0

    .line 1126
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_10

    .line 1127
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1128
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_f

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoSync:Z

    :cond_f
    return v4

    .line 1131
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_10
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v6}, Lcom/lge/mdm/admin/LGMDMadministrator;->getAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1132
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 1133
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoSync:Z

    if-nez v5, :cond_1a

    .line 1134
    return v6

    .line 1137
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowConsumerEmail(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 121
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 122
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    :cond_e
    return v4

    .line 125
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 126
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

    .line 127
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    if-nez v5, :cond_19

    .line 128
    const/4 v4, 0x0

    return v4

    .line 131
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 202
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 203
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    :cond_e
    return v4

    .line 206
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 207
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

    .line 208
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    if-nez v5, :cond_19

    .line 209
    const/4 v4, 0x0

    return v4

    .line 212
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getBlockingConsumerEmailList(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_15

    .line 153
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 154
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_f

    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mConsumerEmailList:Ljava/util/ArrayList;

    :goto_e
    return-object v7

    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e

    .line 156
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_15
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, p2, v8}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(IZ)I

    move-result v4

    .line 157
    .local v4, "listSize":I
    if-nez v4, :cond_2c

    .line 158
    const-string/jumbo v7, "EmailController"

    const-string/jumbo v8, "admin list size is zero "

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    return-object v7

    .line 161
    :cond_2c
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 162
    .local v6, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v3, "i":I
    :goto_32
    if-ge v3, v4, :cond_55

    .line 163
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, v3, p2, v8}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(IIZ)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 164
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_3f

    .line 162
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 167
    :cond_3f
    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mConsumerEmailList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "consumerEmail$iterator":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, "consumerEmail":Ljava/lang/String;
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 171
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v1    # "consumerEmail":Ljava/lang/String;
    .end local v2    # "consumerEmail$iterator":Ljava/util/Iterator;
    :cond_55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v5
.end method

.method protected getEmailAccountList(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mdm/config/LGMDMEmailAccountState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1051
    const/4 v0, 0x0

    .line 1052
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1054
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    const/4 v1, 0x0

    .line 1056
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    const-string/jumbo v2, "EmailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getEmailAccountList] flags:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    if-eqz v0, :cond_30

    .line 1058
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/mdm/util/LGMDMConfig;->isExchangeEmail(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1059
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMEmailController;->getEmailAccountFromNew(I)Ljava/util/List;

    move-result-object v1

    .line 1065
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    :cond_30
    :goto_30
    if-nez v1, :cond_3b

    .line 1066
    const-string/jumbo v2, "EmailController"

    const-string/jumbo v3, "[getEmailAccountList] list is null!!"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_3b
    return-object v1

    .line 1061
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    :cond_3c
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMEmailController;->getEmailAccountFromOld(I)Ljava/util/List;

    move-result-object v1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    goto :goto_30
.end method

.method protected getManualSyncWhenRoaming(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 342
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 343
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    :cond_e
    return v3

    .line 345
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2, v3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminListsize(IZ)I

    move-result v2

    .line 346
    .local v2, "listSize":I
    if-nez v2, :cond_21

    .line 347
    const-string/jumbo v4, "EmailController"

    const-string/jumbo v5, "admin list size is zero  "

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return v3

    .line 351
    :cond_21
    const/4 v1, 0x0

    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    .local v1, "i":I
    :goto_22
    if-ge v1, v2, :cond_33

    .line 352
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, v1, p2, v3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMadminList(IIZ)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 353
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    if-eqz v4, :cond_30

    .line 354
    const/4 v3, 0x1

    return v3

    .line 351
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 357
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_33
    return v3
.end method

.method protected getManualSyncWhenRoamingAsUser(I)Z
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 329
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminListsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 330
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 332
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    if-eqz v3, :cond_a

    .line 333
    const/4 v3, 0x1

    return v3

    .line 336
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_1c
    const/4 v3, 0x0

    return v3
.end method

.method protected handleManualSync(Landroid/content/ComponentName;I)V
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 291
    .local v0, "identity":J
    :try_start_4
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 292
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 293
    .local v6, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 294
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget p2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 295
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    .line 296
    .local v2, "masterAutosync":Z
    const-string/jumbo v7, "EmailController"

    const-string/jumbo v8, "handle manual sync"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, p2}, Lcom/lge/mdm/controller/LGMDMEmailController;->getManualSyncWhenRoamingAsUser(I)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 300
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->isRoaming()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 301
    if-eqz v2, :cond_17

    .line 302
    const/4 v7, 0x0

    invoke-static {v7, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 303
    const-string/jumbo v7, "EmailController"

    const-string/jumbo v8, "set master sync auto: false"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4e

    goto :goto_17

    .line 311
    .end local v2    # "masterAutosync":Z
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "user$iterator":Ljava/util/Iterator;
    .end local v6    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_4e
    move-exception v7

    .line 312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    throw v7

    .line 306
    .restart local v2    # "masterAutosync":Z
    .restart local v3    # "um":Landroid/os/UserManager;
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    .restart local v5    # "user$iterator":Ljava/util/Iterator;
    .restart local v6    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_53
    :try_start_53
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getPreAutoSync(I)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 307
    const/4 v7, 0x1

    invoke-static {v7, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_4e

    goto :goto_17

    .line 312
    .end local v2    # "masterAutosync":Z
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    return-void
.end method

.method protected handleSetManualSyncWhenRoaming(II)V
    .registers 7
    .param p1, "retValue"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x1

    .line 274
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 276
    .local v0, "identity":J
    if-nez p1, :cond_18

    .line 277
    const/4 v2, 0x0

    :try_start_8
    invoke-static {v2, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 278
    const-string/jumbo v2, "EmailController"

    const-string/jumbo v3, "set master sync auto: false"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_28

    .line 284
    :cond_14
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    return-void

    .line 279
    :cond_18
    if-ne p1, v2, :cond_14

    .line 280
    const/4 v2, 0x1

    :try_start_1b
    invoke-static {v2, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 281
    const-string/jumbo v2, "EmailController"

    const-string/jumbo v3, "set master sync auto: true"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_28

    goto :goto_14

    .line 283
    :catchall_28
    move-exception v2

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    throw v2
.end method

.method protected isManualSyncCurrent(I)Z
    .registers 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 361
    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMEmailController;->getAllowAutoSync(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 362
    const-string/jumbo v0, "EmailController"

    const-string/jumbo v1, "Manual sync current because auto-sync is not allowed."

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return v2

    .line 366
    :cond_12
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1, p1}, Lcom/lge/mdm/controller/LGMDMEmailController;->getManualSyncWhenRoaming(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 367
    return v2

    .line 369
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method protected isMdmAccountFromNewEmail(Landroid/accounts/Account;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 866
    const/4 v3, 0x1

    .line 867
    .local v3, "mdmEmailFlag":I
    invoke-direct {p0, v3}, Lcom/lge/mdm/controller/LGMDMEmailController;->getEmailAccountFromNew(I)Ljava/util/List;

    move-result-object v2

    .line 869
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMEmailAccountState;>;"
    if-eqz v2, :cond_2e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2e

    .line 870
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accountList$iterator":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;

    .line 871
    .local v0, "accountList":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    iget-object v4, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 872
    iget v4, v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    if-ne v4, v7, :cond_13

    .line 873
    return v7

    .line 878
    .end local v0    # "accountList":Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .end local v1    # "accountList$iterator":Ljava/util/Iterator;
    :cond_2e
    return v6
.end method

.method protected listen(Ljava/lang/String;Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;IZI)V
    .registers 15
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .param p5, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    if-eqz p3, :cond_5d

    .line 405
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 407
    const/4 v3, 0x0

    .line 409
    .local v3, "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :try_start_6
    invoke-interface {p2}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 410
    .local v1, "b":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_5a

    move-result v0

    .line 411
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    .local v4, "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :goto_12
    if-ge v2, v0, :cond_28

    .line 412
    :try_start_14
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_86

    .line 413
    .end local v4    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    .local v3, "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :try_start_1c
    iget-object v5, v3, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_24

    .line 424
    :goto_20
    iput p3, v3, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->events:I
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_5a

    monitor-exit v6

    .line 400
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :goto_23
    return-void

    .line 411
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v3    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    .restart local v4    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    goto :goto_12

    .line 417
    :cond_28
    :try_start_28
    new-instance v3, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    invoke-direct {v3}, Lcom/lge/mdm/controller/LGMDMEmailController$Record;-><init>()V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_86

    .line 418
    .end local v4    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    .restart local v3    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :try_start_2d
    iput-object v1, v3, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    .line 419
    iput-object p2, v3, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    .line 420
    iput-object p1, v3, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->pkgForDebug:Ljava/lang/String;

    .line 421
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const-string/jumbo v5, "EmailController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " listen success"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_2d .. :try_end_59} :catchall_5a

    goto :goto_20

    .line 405
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_5a
    move-exception v5

    :goto_5b
    monitor-exit v6

    throw v5

    .line 427
    :cond_5d
    invoke-interface {p2}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->remove(Landroid/os/IBinder;)V

    .line 428
    const-string/jumbo v5, "EmailController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " remove Callback"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 405
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v4    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    :catchall_86
    move-exception v5

    move-object v3, v4

    .end local v4    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    .restart local v3    # "r":Lcom/lge/mdm/controller/LGMDMEmailController$Record;
    goto :goto_5b
.end method

.method protected notifyAddEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;I)V
    .registers 9
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 495
    :try_start_3
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMEmailController;->makeComponentName(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v2

    .line 496
    return-void

    .line 498
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendStartServiceIntent()V

    .line 499
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 500
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 501
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v0, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_20

    monitor-exit v2

    .line 493
    return-void

    .line 494
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected notifyAddEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;I)V
    .registers 9
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEmailCertConfig;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 540
    :try_start_3
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMEmailController;->makeComponentName(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v2

    .line 541
    return-void

    .line 543
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendStartServiceIntent()V

    .line 544
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 545
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x100

    iput v1, v0, Landroid/os/Message;->what:I

    .line 546
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 547
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v0, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_20

    monitor-exit v2

    .line 538
    return-void

    .line 539
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected notifyAddPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;I)V
    .registers 9
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 446
    :try_start_3
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMEmailController;->makeComponentName(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1f

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v2

    .line 447
    return-void

    .line 449
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendStartServiceIntent()V

    .line 450
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 451
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 452
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 453
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v0, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1f

    monitor-exit v2

    .line 444
    return-void

    .line 445
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected notifyDeleteEXCHANGEConfig(Ljava/lang/String;I)V
    .registers 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 521
    :try_start_3
    new-instance v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;-><init>()V

    .line 522
    .local v0, "config":Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    iput-object p1, v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->userEmail:Ljava/lang/String;

    .line 523
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMEmailController;->makeComponentName(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_37

    move-result v2

    if-nez v2, :cond_12

    monitor-exit v3

    .line 524
    return-void

    .line 526
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendStartServiceIntent()V

    .line 527
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 528
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x20

    iput v2, v1, Landroid/os/Message;->what:I

    .line 529
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 530
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v1, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V

    .line 531
    new-instance v1, Landroid/os/Message;

    .end local v1    # "msg":Landroid/os/Message;
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 532
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x80

    iput v2, v1, Landroid/os/Message;->what:I

    .line 533
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 534
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v1, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_37

    monitor-exit v3

    .line 519
    return-void

    .line 520
    .end local v0    # "config":Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_37
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected notifyDeleteEmailCertConfig(Ljava/lang/String;I)V
    .registers 9
    .param p1, "sEmailCertID"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 553
    :try_start_3
    new-instance v0, Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMEmailCertConfig;-><init>()V

    .line 554
    .local v0, "config":Lcom/lge/mdm/config/LGMDMEmailCertConfig;
    iput-object p1, v0, Lcom/lge/mdm/config/LGMDMEmailCertConfig;->sEmailCertID:Ljava/lang/String;

    .line 555
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMEmailController;->makeComponentName(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_27

    move-result v2

    if-nez v2, :cond_12

    monitor-exit v3

    .line 556
    return-void

    .line 558
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendStartServiceIntent()V

    .line 559
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 560
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x200

    iput v2, v1, Landroid/os/Message;->what:I

    .line 561
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 562
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v1, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_27

    monitor-exit v3

    .line 551
    return-void

    .line 552
    .end local v0    # "config":Lcom/lge/mdm/config/LGMDMEmailCertConfig;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected notifyDeletePOPIMAPConfig(Ljava/lang/String;II)V
    .registers 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 472
    :try_start_3
    new-instance v0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;-><init>()V

    .line 473
    .local v0, "config":Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    iput-object p1, v0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->userEmail:Ljava/lang/String;

    .line 474
    const/4 v2, 0x1

    if-eq p2, v2, :cond_10

    const/4 v2, 0x2

    if-ne p2, v2, :cond_12

    .line 475
    :cond_10
    iput p2, v0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->accountType:I

    .line 477
    :cond_12
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMEmailController;->makeComponentName(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3e

    move-result v2

    if-nez v2, :cond_1a

    monitor-exit v3

    .line 478
    return-void

    .line 480
    :cond_1a
    :try_start_1a
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendStartServiceIntent()V

    .line 481
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 482
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 483
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 484
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v1, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V

    .line 486
    new-instance v1, Landroid/os/Message;

    .end local v1    # "msg":Landroid/os/Message;
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 487
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x40

    iput v2, v1, Landroid/os/Message;->what:I

    .line 488
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v1, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_3e

    monitor-exit v3

    .line 470
    return-void

    .line 471
    .end local v0    # "config":Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected notifyModifyEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;I)V
    .registers 9
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 508
    :try_start_3
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMEmailController;->makeComponentName(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v2

    .line 509
    return-void

    .line 511
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendStartServiceIntent()V

    .line 512
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 513
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 514
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 515
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v0, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_20

    monitor-exit v2

    .line 506
    return-void

    .line 507
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected notifyModifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;I)V
    .registers 9
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 459
    :try_start_3
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMEmailController;->makeComponentName(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1f

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v2

    .line 460
    return-void

    .line 462
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendStartServiceIntent()V

    .line 463
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 464
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 465
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 466
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v0, v4, v5}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendHandleMessage(Landroid/os/Message;J)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1f

    monitor-exit v2

    .line 457
    return-void

    .line 458
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected remove(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 433
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 434
    :try_start_3
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 435
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_22

    .line 436
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;

    iget-object v2, v2, Lcom/lge/mdm/controller/LGMDMEmailController$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1f

    .line 437
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_24

    monitor-exit v3

    .line 438
    return-void

    .line 435
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_22
    monitor-exit v3

    .line 432
    return-void

    .line 433
    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected sendIntent(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "sIntent"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "broadcastIntent":Landroid/content/Intent;
    sget-object v1, Lcom/lge/mdm/controller/LGMDMEmailController;->COMPONENT_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    const-string/jumbo v1, "EmailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "who.getPackageName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "EmailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected setAllowAutoSync(Landroid/content/ComponentName;ZI)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1081
    const/4 v1, -0x1

    .line 1084
    .local v1, "autoSyncPolicyChange":I
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 1087
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoSync:Z

    if-ne v3, p2, :cond_16

    .line 1088
    const-string/jumbo v3, "EmailController"

    const-string/jumbo v6, "setAllowAutoSync : same policy is called"

    invoke-static {v3, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    return v7

    .line 1093
    :cond_16
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoSync:Z

    .line 1094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1096
    .local v4, "identity":J
    if-nez p2, :cond_7b

    .line 1097
    :try_start_1e
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    iput-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preMasterAutoSync:Z
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_84

    .line 1098
    const/4 v1, 0x1

    .line 1109
    :goto_25
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.lge.mdm.intent.action.EMAIL_MANUAL_SYNC_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v2, "broadcastIntent":Landroid/content/Intent;
    sget-object v3, Lcom/lge/mdm/controller/LGMDMEmailController;->COMPONENT_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    invoke-virtual {v3, v2, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcastAsUser(Landroid/content/Intent;I)V

    .line 1118
    const-string/jumbo v3, "EmailController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "who.getPackageName(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string/jumbo v3, "EmailController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAllowAutoSync:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoSync:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    return v1

    .line 1100
    .end local v2    # "broadcastIntent":Landroid/content/Intent;
    :cond_7b
    :try_start_7b
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preMasterAutoSync:Z

    if-eqz v3, :cond_89

    .line 1101
    const/4 v1, 0x3

    .line 1106
    :goto_80
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preMasterAutoSync:Z
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_84

    goto :goto_25

    .line 1108
    :catchall_84
    move-exception v3

    .line 1109
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    throw v3

    .line 1103
    :cond_89
    const/4 v1, 0x4

    goto :goto_80
.end method

.method protected setAllowConsumerEmail(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 98
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    if-ne v1, p2, :cond_15

    .line 99
    const-string/jumbo v1, "EmailController"

    const-string/jumbo v2, "setAllowConsumerEmail : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 103
    :cond_15
    invoke-virtual {p0, v2, p3}, Lcom/lge/mdm/controller/LGMDMEmailController;->getAllowConsumerEmail(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 104
    if-nez p2, :cond_27

    .line 105
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    .line 106
    const-string/jumbo v1, "com.lge.mdm.intent.action.EMAIL_CONSUMER_CHANGED"

    .line 107
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    .line 106
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendIntent(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 95
    :cond_27
    :goto_27
    return-void

    .line 110
    :cond_28
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    .line 111
    invoke-virtual {p0, v2, p3}, Lcom/lge/mdm/controller/LGMDMEmailController;->getAllowConsumerEmail(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 112
    const-string/jumbo v1, "com.lge.mdm.intent.action.EMAIL_CONSUMER_CHANGED"

    .line 113
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    .line 112
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendIntent(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    goto :goto_27
.end method

.method protected setAllowPOPIMAPEmail(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 179
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    if-ne v1, p2, :cond_15

    .line 180
    const-string/jumbo v1, "EmailController"

    const-string/jumbo v2, "setAllowPOPIMAPEmail : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 184
    :cond_15
    invoke-virtual {p0, v2, p3}, Lcom/lge/mdm/controller/LGMDMEmailController;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 185
    if-nez p2, :cond_27

    .line 186
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    .line 187
    const-string/jumbo v1, "com.lge.mdm.intent.action.EMAIL_BLOCK_POPIMAP_CHANGED"

    .line 188
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    .line 187
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendIntent(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 176
    :cond_27
    :goto_27
    return-void

    .line 191
    :cond_28
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    .line 192
    invoke-virtual {p0, v2, p3}, Lcom/lge/mdm/controller/LGMDMEmailController;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 193
    const-string/jumbo v1, "com.lge.mdm.intent.action.EMAIL_BLOCK_POPIMAP_CHANGED"

    .line 194
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    .line 193
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/controller/LGMDMEmailController;->sendIntent(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    goto :goto_27
.end method

.method protected setBlockingConsumerEmailList(Landroid/content/ComponentName;Ljava/util/List;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "consumerEmailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 137
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mConsumerEmailList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mConsumerEmailList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 138
    const-string/jumbo v2, "EmailController"

    const-string/jumbo v3, "setBlockingConsumerEmailList : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 142
    :cond_1c
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "consumerEmailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mConsumerEmailList:Ljava/util/ArrayList;

    .line 143
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    if-nez v2, :cond_33

    .line 144
    new-instance v1, Landroid/content/Intent;

    .line 145
    const-string/jumbo v2, "com.lge.mdm.intent.action.EMAIL_BLOCK_CONSUMER_LIST_CHANGED"

    .line 144
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "broadcastIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_33
    return-void
.end method

.method protected setManualSyncWhenRoaming(Landroid/content/ComponentName;I)I
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 254
    const/4 v4, -0x1

    .line 255
    .local v4, "retValue":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 257
    .local v2, "identity":J
    :try_start_5
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 258
    .local v1, "masterAutosync":Z
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, v1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->setPreAutoSync(ZI)V

    .line 259
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMEmailController;->isRoaming()Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_33

    move-result v5

    if-eqz v5, :cond_17

    .line 260
    if-eqz v1, :cond_17

    .line 261
    const/4 v4, 0x0

    .line 265
    :cond_17
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.lge.mdm.intent.action.EMAIL_MANUAL_SYNC_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "broadcastIntent":Landroid/content/Intent;
    sget-object v5, Lcom/lge/mdm/controller/LGMDMEmailController;->COMPONENT_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v5

    invoke-virtual {v5, v0, p2}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcastAsUser(Landroid/content/Intent;I)V

    .line 270
    return v4

    .line 264
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "masterAutosync":Z
    :catchall_33
    move-exception v5

    .line 265
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    throw v5
.end method

.method protected setManualSyncWhenRoaming(Landroid/content/ComponentName;ZI)I
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 216
    const/4 v2, -0x1

    .line 218
    .local v2, "retValue":I
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p1, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 219
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-nez v0, :cond_b

    .line 220
    return v2

    .line 223
    :cond_b
    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    if-ne v3, p2, :cond_19

    .line 224
    const-string/jumbo v3, "EmailController"

    const-string/jumbo v4, "setManualSyncWhenRoaming : same policy is called"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return v2

    .line 228
    :cond_19
    invoke-virtual {p0, v4, p3}, Lcom/lge/mdm/controller/LGMDMEmailController;->getManualSyncWhenRoaming(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_25

    .line 229
    if-eqz p2, :cond_97

    .line 230
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    .line 231
    const/4 v2, 0x2

    .line 232
    return v2

    .line 235
    :cond_25
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    .line 236
    invoke-virtual {p0, v4, p3}, Lcom/lge/mdm/controller/LGMDMEmailController;->getManualSyncWhenRoaming(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_97

    .line 237
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->getPreAutoSync(I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 238
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMEmailController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p3}, Lcom/lge/mdm/admin/LGMDMadministrator;->setPreAutoSync(ZI)V

    .line 239
    const-string/jumbo v3, "EmailController"

    const-string/jumbo v4, "restore preAutoSync"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x1

    .line 242
    :cond_45
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.lge.mdm.intent.action.EMAIL_MANUAL_SYNC_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "broadcastIntent":Landroid/content/Intent;
    sget-object v3, Lcom/lge/mdm/controller/LGMDMEmailController;->COMPONENT_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v3

    invoke-virtual {v3, v1, p3}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcastAsUser(Landroid/content/Intent;I)V

    .line 245
    const-string/jumbo v3, "EmailController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "who.getPackageName(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v3, "EmailController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setManualSyncWhenRoaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_97
    return v2
.end method

.method setMasterSyncAutomatically(II)V
    .registers 7
    .param p1, "autoSyncPolicyChange"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 1141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1143
    .local v0, "identity":J
    packed-switch p1, :pswitch_data_3a

    .line 1160
    :goto_7
    :pswitch_7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    return-void

    .line 1145
    :pswitch_b
    const/4 v2, 0x0

    :try_start_c
    invoke-static {v2, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1146
    const-string/jumbo v2, "EmailController"

    const-string/jumbo v3, "When disallowing auto-sync, set master sync auto to false"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_19

    goto :goto_7

    .line 1159
    :catchall_19
    move-exception v2

    .line 1160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1159
    throw v2

    .line 1149
    :pswitch_1e
    const/4 v2, 0x1

    :try_start_1f
    invoke-static {v2, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1150
    const-string/jumbo v2, "EmailController"

    const-string/jumbo v3, "When allowing auto-sync, set master sync auto to true"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1153
    :pswitch_2c
    const/4 v2, 0x0

    invoke-static {v2, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1154
    const-string/jumbo v2, "EmailController"

    const-string/jumbo v3, "When allowing auto-sync, set master sync auto to false"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_19

    goto :goto_7

    .line 1143
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_7
        :pswitch_1e
        :pswitch_2c
    .end packed-switch
.end method
