.class public Lcom/lge/mdm/controller/LGMDMATClientConnector;
.super Ljava/lang/Object;
.source "LGMDMATClientConnector.java"


# static fields
.field private static final LGCMD_GET_KSWITCH:I = 0x1069

.field private static final LGCMD_SET_KSWITCH:I = 0x1068

.field private static final REQ_DATA_VIA_AUDIOPORT_N:Ljava/lang/String; = "08:1"

.field private static final REQ_DATA_VIA_AUDIOPORT_Y:Ljava/lang/String; = "08:0"

.field private static final REQ_DOWNLOAD_MODE_N:Ljava/lang/String; = "02:1"

.field private static final REQ_DOWNLOAD_MODE_Y:Ljava/lang/String; = "02:0"

.field private static final REQ_HW_FACTORY_RESET_N:Ljava/lang/String; = "01:1"

.field private static final REQ_HW_FACTORY_RESET_Y:Ljava/lang/String; = "01:0"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string/jumbo v0, "LGMDMATClientConnector"

    sput-object v0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 31
    return-void
.end method


# virtual methods
.method protected connectATService()V
    .registers 3

    .prologue
    .line 37
    new-instance v0, Lcom/lge/android/atservice/client/LGATCMDClient;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/android/atservice/client/LGATCMDClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 38
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    if-nez v0, :cond_16

    .line 39
    sget-object v0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "LGATCMDClient request error: mATClient is null!!!."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 42
    :cond_16
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-virtual {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->bindService()V

    .line 36
    return-void
.end method

.method protected disconnectATService()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    if-nez v0, :cond_d

    .line 47
    sget-object v0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "LGATCMDClient request error: mATClient is null!!!."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 50
    :cond_d
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-virtual {v0}, Lcom/lge/android/atservice/client/LGATCMDClient;->unbindService()V

    .line 45
    return-void
.end method

.method protected getATClinet(I)I
    .registers 10
    .param p1, "atCmdType"    # I

    .prologue
    const/4 v6, 0x0

    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-virtual {v5}, Lcom/lge/android/atservice/client/LGATCMDClient;->checkmBound()Z

    move-result v5

    if-nez v5, :cond_f

    .line 186
    :cond_e
    return v6

    .line 188
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 190
    .local v2, "identity":J
    packed-switch p1, :pswitch_data_98

    .line 227
    :pswitch_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    return v6

    .line 192
    :pswitch_1a
    :try_start_1a
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 193
    const/4 v6, 0x1

    .line 192
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v7, 0x1069

    invoke-virtual {v5, v7, v6}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v1

    .line 210
    .end local v1    # "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :goto_2b
    :pswitch_2b
    if-eqz v1, :cond_91

    .line 211
    iget v5, v1, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->result:I

    if-nez v5, :cond_8f

    .line 212
    iget v5, v1, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->length:I

    if-lez v5, :cond_8d

    .line 214
    new-instance v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->data:[B

    iget v6, v1, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->length:I

    const/4 v7, 0x0

    invoke-direct {v0, v5, v7, v6}, Ljava/lang/String;-><init>([BII)V

    .line 215
    .local v0, "buf":Ljava/lang/String;
    sget-object v5, Lcom/lge/mdm/controller/LGMDMATClientConnector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get response("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_1a .. :try_end_63} :catchall_93

    .line 216
    const/4 v4, 0x1

    .line 227
    .end local v0    # "buf":Ljava/lang/String;
    .local v4, "ret":I
    :goto_64
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    return v4

    .line 196
    .end local v4    # "ret":I
    .restart local v1    # "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :pswitch_68
    :try_start_68
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 197
    const/4 v6, 0x2

    .line 196
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v7, 0x1069

    invoke-virtual {v5, v7, v6}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v1

    .local v1, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    goto :goto_2b

    .line 203
    .local v1, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :pswitch_7a
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 204
    const/16 v6, 0x8

    .line 203
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v7, 0x1069

    invoke-virtual {v5, v7, v6}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :try_end_8b
    .catchall {:try_start_68 .. :try_end_8b} :catchall_93

    move-result-object v1

    .local v1, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    goto :goto_2b

    .line 218
    .end local v1    # "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :cond_8d
    const/4 v4, -0x1

    .restart local v4    # "ret":I
    goto :goto_64

    .line 221
    .end local v4    # "ret":I
    :cond_8f
    const/4 v4, -0x1

    .restart local v4    # "ret":I
    goto :goto_64

    .line 224
    .end local v4    # "ret":I
    :cond_91
    const/4 v4, -0x1

    .restart local v4    # "ret":I
    goto :goto_64

    .line 226
    .end local v4    # "ret":I
    :catchall_93
    move-exception v5

    .line 227
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    throw v5

    .line 190
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_68
        :pswitch_16
        :pswitch_2b
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_7a
    .end packed-switch
.end method

.method protected getATClinet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string/jumbo v0, ""

    .line 106
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method protected setATClient(Ljava/lang/String;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 77
    .local v0, "ret":I
    return v0
.end method

.method protected setATClinet(IZ)I
    .registers 10
    .param p1, "atCmdType"    # I
    .param p2, "allow"    # Z

    .prologue
    const/4 v5, 0x0

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    invoke-virtual {v4}, Lcom/lge/android/atservice/client/LGATCMDClient;->checkmBound()Z

    move-result v4

    if-nez v4, :cond_f

    .line 119
    :cond_e
    return v5

    .line 122
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 124
    .local v0, "identity":J
    packed-switch p1, :pswitch_data_b8

    .line 169
    :pswitch_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    return v5

    .line 126
    :pswitch_1a
    if-eqz p2, :cond_58

    .line 127
    :try_start_1c
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 128
    const-string/jumbo v5, "01:0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 127
    const/16 v6, 0x1068

    invoke-virtual {v4, v6, v5}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .line 162
    .end local v2    # "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_b0

    .line 163
    sget-object v4, Lcom/lge/mdm/controller/LGMDMATClientConnector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set response ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") result :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/lge/android/atservice/client/LGATCMDClient$Response;->result:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_1c .. :try_end_53} :catchall_b2

    .line 164
    const/4 v3, 0x1

    .line 169
    .local v3, "ret":I
    :goto_54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    return v3

    .line 130
    .end local v3    # "ret":I
    .restart local v2    # "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :cond_58
    :try_start_58
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 131
    const-string/jumbo v5, "01:1"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 130
    const/16 v6, 0x1068

    invoke-virtual {v4, v6, v5}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    goto :goto_2b

    .line 135
    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :pswitch_68
    if-eqz p2, :cond_7a

    .line 136
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 137
    const-string/jumbo v5, "02:0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 136
    const/16 v6, 0x1068

    invoke-virtual {v4, v6, v5}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    goto :goto_2b

    .line 139
    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :cond_7a
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 140
    const-string/jumbo v5, "02:1"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 139
    const/16 v6, 0x1068

    invoke-virtual {v4, v6, v5}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    goto :goto_2b

    .line 144
    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :pswitch_8a
    if-eqz p2, :cond_2b

    goto :goto_2b

    .line 151
    :pswitch_8d
    if-eqz p2, :cond_9f

    .line 152
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 153
    const-string/jumbo v5, "08:0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 152
    const/16 v6, 0x1068

    invoke-virtual {v4, v6, v5}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;

    move-result-object v2

    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    goto :goto_2b

    .line 155
    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :cond_9f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMATClientConnector;->mATClient:Lcom/lge/android/atservice/client/LGATCMDClient;

    .line 156
    const-string/jumbo v5, "08:1"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 155
    const/16 v6, 0x1068

    invoke-virtual {v4, v6, v5}, Lcom/lge/android/atservice/client/LGATCMDClient;->request(I[B)Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :try_end_ad
    .catchall {:try_start_58 .. :try_end_ad} :catchall_b2

    move-result-object v2

    .local v2, "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    goto/16 :goto_2b

    .line 166
    .end local v2    # "response":Lcom/lge/android/atservice/client/LGATCMDClient$Response;
    :cond_b0
    const/4 v3, -0x1

    .restart local v3    # "ret":I
    goto :goto_54

    .line 168
    .end local v3    # "ret":I
    :catchall_b2
    move-exception v4

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    throw v4

    .line 124
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_68
        :pswitch_16
        :pswitch_8a
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_8d
    .end packed-switch
.end method
