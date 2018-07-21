.class public Lcom/lge/mrg/service/lib/ActionManager;
.super Ljava/lang/Object;
.source "ActionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;,
        Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;
    }
.end annotation


# static fields
.field public static final ACTION_APPEND_USER_LOG:Ljava/lang/String; = "com.lge.mrg.service.intent.action.APPEND_USER_LOG"

.field public static final ACTION_BOARD_STATE_CHANGED:Ljava/lang/String; = "com.lge.mrg.service.BOARD_STATE_CHANGED"

.field public static final ACTION_CARD_COMMAND:Ljava/lang/String; = "com.lge.mrg.service.action.CARD_COMMAND"

.field public static final ACTION_FEATURE_USER_LOG:Ljava/lang/String; = "com.lge.mrg.service.FEATURE_USER_LOG"

.field private static final ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

.field public static final ACTION_NOTIFY_CARD_ACTION:Ljava/lang/String; = "com.lge.mrg.service.action.NOTIFY_CARD_ACTION"

.field public static final ACTION_REGISTER_LISTENER:Ljava/lang/String; = "com.lge.mrg.service.intent.action.REG_LISTENER"

.field public static final ACTION_REVIVE_SERVICE:Ljava/lang/String; = "com.lge.mrg.service.REVIVE_SERVICE"

.field public static final BUNDLE_CARD_ACTION_URI:Ljava/lang/String; = "bundle_card_action_uri"

.field public static final CARD_CMD_ADD:I = 0x0

.field public static final CARD_CMD_REMOVE:I = 0x1

.field public static final CARD_CMD_UPDATE:I = 0x2

.field public static final EXTRA_ACTION_ID_MASK:Ljava/lang/String; = "extra_action_id_mask"

.field public static final EXTRA_BOARD_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_BOARD_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_CARD_ACTION_URI_PREFIX:Ljava/lang/String; = "extra_card_action_prefix"

.field public static final EXTRA_CARD_CATEGORY:Ljava/lang/String; = "extra_card_category"

.field public static final EXTRA_CARD_INFO:Ljava/lang/String; = "extra_card_info"

.field public static final EXTRA_CARD_URI:Ljava/lang/String; = "extra_card_uri"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "extra_cls_name"

.field public static final EXTRA_COMMAND:Ljava/lang/String; = "extra_cmd"

.field public static final EXTRA_LISTENER:Ljava/lang/String; = "extra_listener"

.field public static final EXTRA_MULTI_USER_LOGS:Ljava/lang/String; = "extra_multi_user_logs"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "extra_pkg_name"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionManager"

.field public static final MSG_CARD_ACTION:I = 0x3e9

.field public static final MSG_SERVICE_CONNECTED:I = 0x3ea

.field public static final MSG_SERVICE_DISCONNECTED:I = 0x3eb

.field public static final MSG_USER_LOG:I = 0x3e8


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private mActionIdMask:J

.field private mBIC:Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

.field private mCallback:Landroid/os/Messenger;

.field private mCardActionURIPrefix:[Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mService:Lcom/lge/mrg/service/IActionManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    new-instance v0, Landroid/content/ComponentName;

    .line 30
    const-string v1, "com.lge.mrg.service"

    const-string v2, "com.lge.mrg.service.internal.ActionManagerService"

    .line 29
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/mrg/service/lib/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 217
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/lge/mrg/service/lib/ActionManager;-><init>(Landroid/content/Context;Landroid/os/Messenger;J)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Messenger;J)V
    .registers 12

    .prologue
    .line 237
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/lge/mrg/service/lib/ActionManager;-><init>(Landroid/content/Context;Landroid/os/Messenger;J[Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Messenger;J[Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mBIC:Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    .line 464
    new-instance v0, Lcom/lge/mrg/service/lib/ActionManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mrg/service/lib/ActionManager$1;-><init>(Lcom/lge/mrg/service/lib/ActionManager;)V

    iput-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->connection:Landroid/content/ServiceConnection;

    .line 259
    iput-object p1, p0, Lcom/lge/mrg/service/lib/ActionManager;->mContext:Landroid/content/Context;

    .line 260
    iput-object p2, p0, Lcom/lge/mrg/service/lib/ActionManager;->mCallback:Landroid/os/Messenger;

    .line 261
    iput-wide p3, p0, Lcom/lge/mrg/service/lib/ActionManager;->mActionIdMask:J

    .line 262
    iput-object p5, p0, Lcom/lge/mrg/service/lib/ActionManager;->mCardActionURIPrefix:[Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mPackageName:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mClassName:Ljava/lang/String;

    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    sget-object v1, Lcom/lge/mrg/service/lib/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/lge/mrg/service/lib/ActionManager;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 270
    const-string v0, "ActionManager"

    const-string v1, "failed to connect to ActionManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_3f
    return-void

    .line 272
    :cond_40
    const-string v0, "ActionManager"

    const-string v1, "connecting to ActionManagerService..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method static synthetic access$0(Lcom/lge/mrg/service/lib/ActionManager;Lcom/lge/mrg/service/IActionManagerService;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/lge/mrg/service/lib/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/mrg/service/lib/ActionManager;)Landroid/os/Messenger;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mCallback:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/mrg/service/lib/ActionManager;)Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mBIC:Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/mrg/service/lib/ActionManager;)Lcom/lge/mrg/service/IActionManagerService;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    return-object v0
.end method

.method static synthetic access$4()Landroid/content/ComponentName;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/lge/mrg/service/lib/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/mrg/service/lib/ActionManager;)J
    .registers 3

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mActionIdMask:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/lge/mrg/service/lib/ActionManager;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mCardActionURIPrefix:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/mrg/service/lib/ActionManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/mrg/service/lib/ActionManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lge/mrg/service/lib/ActionManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static appendUserLog(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 325
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.intent.action.APPEND_USER_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    sget-object v1, Lcom/lge/mrg/service/lib/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 327
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 329
    return-void
.end method

.method public static appendUserLog(Landroid/content/Context;[Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.intent.action.APPEND_USER_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    sget-object v1, Lcom/lge/mrg/service/lib/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 341
    const-string v1, "extra_multi_user_logs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 343
    return-void
.end method

.method private checkServiceConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    if-nez v0, :cond_c

    .line 290
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ActionManager is not Ready"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_c
    return-void
.end method

.method public static executeCardCommand(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.action.CARD_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    sget-object v1, Lcom/lge/mrg/service/lib/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 400
    const-string v1, "extra_cmd"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string v1, "extra_card_uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "extra_card_category"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    if-eqz p4, :cond_22

    .line 405
    const-string v1, "extra_card_info"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    :cond_22
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 409
    return-void
.end method

.method public static isActionManagerAvailable(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 457
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 458
    sget-object v2, Lcom/lge/mrg/service/lib/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 461
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public static makeIntentForCardAction(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.action.NOTIFY_CARD_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 443
    const-string v2, "bundle_card_action_uri"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v2, Lcom/lge/mrg/service/lib/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 448
    return-object v0
.end method


# virtual methods
.method public appendUserLog(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/lge/mrg/service/lib/ActionManager;->checkServiceConnection()V

    .line 314
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    invoke-interface {v0, p1}, Lcom/lge/mrg/service/IActionManagerService;->appendUserLog(Landroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method public executeCardCommand(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/mrg/service/lib/ActionManager;->executeCardCommand(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public executeCardCommand(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/lge/mrg/service/lib/ActionManager;->checkServiceConnection()V

    .line 380
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lge/mrg/service/IActionManagerService;->executeCardCommand(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public finalize()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 417
    const-string v0, "ActionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finalize() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/mrg/service/lib/ActionManager;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/mrg/service/lib/ActionManager;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 419
    iput-object v3, p0, Lcom/lge/mrg/service/lib/ActionManager;->connection:Landroid/content/ServiceConnection;

    .line 420
    iput-object v3, p0, Lcom/lge/mrg/service/lib/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    .line 422
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mBIC:Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    if-eqz v0, :cond_2d

    .line 423
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mBIC:Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    invoke-static {v0, v3}, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;->access$0(Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;)V

    .line 424
    iput-object v3, p0, Lcom/lge/mrg/service/lib/ActionManager;->mBIC:Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    .line 426
    :cond_2d
    return-void
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setBackupSizeReporter(Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    invoke-direct {v0, p0, p1}, Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;-><init>(Lcom/lge/mrg/service/lib/ActionManager;Lcom/lge/mrg/service/lib/ActionManager$BackupSizeReporter;)V

    iput-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mBIC:Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    .line 283
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    if-eqz v0, :cond_12

    .line 284
    iget-object v0, p0, Lcom/lge/mrg/service/lib/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    iget-object v1, p0, Lcom/lge/mrg/service/lib/ActionManager;->mBIC:Lcom/lge/mrg/service/lib/ActionManager$BackupInfoCollectorImpl;

    invoke-interface {v0, v1}, Lcom/lge/mrg/service/IActionManagerService;->registerBackupInfoCollector(Lcom/lge/mrg/service/IBackupInfoReporter;)V

    .line 286
    :cond_12
    return-void
.end method
