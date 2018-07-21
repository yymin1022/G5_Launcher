.class public Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIMessageAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string/jumbo v0, "LGMDMUIMessageAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;

    .line 35
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;

    return-object v0
.end method


# virtual methods
.method public isAllowSendMMS(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 89
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAllowSendMMS, userHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 92
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSendingSMS(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 93
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ALLOW::LGMDMDevicePolicyManager true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x1

    return v1

    .line 96
    :cond_2d
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DISALLOW::LGMDMDevicePolicyManager false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget v1, Lcom/lge/internal/R$string;->sp_block_sending_message_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 99
    const/4 v1, 0x0

    return v1
.end method

.method public isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;I)Z
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    .line 67
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAllowSendMessage, userHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 70
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSendingSMS(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 71
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ALLOW::sendTextMessage LGMDMDevicePolicyManager true"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return v5

    .line 74
    :cond_2d
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DISALLOW::sendTextMessage LGMDMDevicePolicyManager false"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget v2, Lcom/lge/internal/R$string;->sp_block_sending_message_NORMAL:I

    invoke-virtual {v1, v2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 77
    if-eqz p2, :cond_40

    .line 79
    const/4 v2, 0x1

    :try_start_3d
    invoke-virtual {p2, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_40
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3d .. :try_end_40} :catch_42

    .line 84
    :cond_40
    :goto_40
    const/4 v2, 0x0

    return v2

    .line 80
    :catch_42
    move-exception v0

    .line 81
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error for something"

    invoke-static {v2, v3, v0}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method public isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;I)Z
    .registers 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v7, 0x1

    .line 43
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAllowSendMessage, userHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 46
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSendingSMS(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 47
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ALLOW::sendMultiTextMessage LGMDMDevicePolicyManager true"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return v7

    .line 50
    :cond_2d
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "DISALLOW::sendTextMessage LGMDMDevicePolicyManager false"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget v4, Lcom/lge/internal/R$string;->sp_block_sending_message_NORMAL:I

    invoke-virtual {v1, v4, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 53
    if-eqz p2, :cond_5b

    .line 54
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pi$iterator":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 56
    .local v2, "pi":Landroid/app/PendingIntent;
    const/4 v4, 0x1

    :try_start_4d
    invoke-virtual {v2, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_50
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_40

    .line 57
    :catch_51
    move-exception v0

    .line 58
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUIMessageAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error for something"

    invoke-static {v4, v5, v0}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    .line 62
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "pi$iterator":Ljava/util/Iterator;
    :cond_5b
    const/4 v4, 0x0

    return v4
.end method
