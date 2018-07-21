.class public Lcom/lge/launcher3/theme/FontServerConnection;
.super Ljava/lang/Object;
.source "FontServerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final FONT_SERVER_CLASS:Ljava/lang/String; = ".FontServer"

.field public static final FONT_SERVER_CONNECTED:I = 0x3f2

.field private static final FONT_SERVER_PACKAGE:Ljava/lang/String; = "com.hy.system.fontserver"

.field public static final FONT_SERVER_TIMEOUT:I = 0x3f3

.field private static final MESSAGE_CALL_ERROR:Ljava/lang/String; = "An error occured during the call."

.field private static final SYSTEM_FONTSERVER_BIND_ACTION:Ljava/lang/String; = "android.intent.action.SYSTEM_FONTSERVER_BIND_ACTION"

.field private static final TAG:Ljava/lang/String; = "HyFontServerConnection"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final parent:Landroid/content/Context;

.field private service:Lcom/hy/system/fontserver/IFontServerRemoteService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    .line 52
    iput-object p1, p0, Lcom/lge/launcher3/theme/FontServerConnection;->parent:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/lge/launcher3/theme/FontServerConnection;->handler:Landroid/os/Handler;

    .line 55
    return-void
.end method


# virtual methods
.method public connectFontServerService()V
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v0, :cond_2e

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYSTEM_FONTSERVER_BIND_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v1, "com.hy.system.fontserver"

    const-string v2, "com.hy.system.fontserver.FontServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/lge/launcher3/theme/FontServerConnection;->parent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 89
    iget-object v1, p0, Lcom/lge/launcher3/theme/FontServerConnection;->parent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 90
    const-string v0, "HyFontServerConnection"

    const-string v1, "FontServer Connecting.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3b

    .line 99
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 101
    :cond_3b
    return-void

    .line 93
    :cond_3c
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/FontServerConnection;->disconnectFontServerService()V

    .line 94
    const-string v0, "HyFontServerConnection"

    const-string v1, "parent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public disconnectFontServerService()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_10

    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->parent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    .line 80
    :cond_10
    const-string v0, "HyFontServerConnection"

    const-string v1, "FontServer Disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public getAllFallbackNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 329
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getAllFallbackNames()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 335
    :goto_a
    return-object v0

    .line 331
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAllFontFullPath()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 221
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getAllFontFullPath()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 227
    :goto_a
    return-object v0

    .line 223
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAllFontNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 197
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getAllFontNames()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 203
    :goto_a
    return-object v0

    .line 199
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAllFontWebFaceNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 209
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getAllFontWebFaceNames()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 215
    :goto_a
    return-object v0

    .line 211
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDefaultTypefaceIndex()I
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 149
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getDefaultTypefaceIndex()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 155
    :goto_a
    return v0

    .line 151
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDownloadFontDstPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 257
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getDownloadFontDstPath()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 263
    :goto_a
    return-object v0

    .line 259
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDownloadFontSrcPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 245
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getDownloadFontSrcPath()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 251
    :goto_a
    return-object v0

    .line 247
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFallbackFullPath(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 317
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0, p1}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getFallbackFullPath(I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 323
    :goto_a
    return-object v0

    .line 319
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFallbackIndex()I
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 305
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getFallbackIndex()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 311
    :goto_a
    return v0

    .line 307
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFallbackSummary()Ljava/lang/String;
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 293
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getFallbackSummary()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 299
    :goto_a
    return-object v0

    .line 295
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFontFullPath(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 233
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0, p1}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getFontFullPath(I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 239
    :goto_a
    return-object v0

    .line 235
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNumAllFonts()I
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 161
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getNumAllFonts()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 167
    :goto_a
    return v0

    .line 163
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNumEmbeddedFonts()I
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 173
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getNumEmbeddedFonts()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 179
    :goto_a
    return v0

    .line 175
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSummary()Ljava/lang/String;
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 185
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getSummary()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 191
    :goto_a
    return-object v0

    .line 187
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSystemDefaultTypefaceIndex()I
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_13

    .line 269
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getSystemDefaultTypefaceIndex()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 275
    :goto_a
    return v0

    .line 271
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 62
    invoke-static {p2}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hy/system/fontserver/IFontServerRemoteService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    :cond_18
    const-string v0, "HyFontServerConnection"

    const-string v1, "FontServer Connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    .line 73
    return-void
.end method

.method public selectDefaultTypeface(I)V
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v0, :cond_5

    .line 126
    :goto_4
    return-void

    .line 122
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0, p1}, Lcom/hy/system/fontserver/IFontServerRemoteService;->selectDefaultTypeface(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 124
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public selectFallback(I)V
    .registers 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_9

    .line 282
    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0, p1}, Lcom/hy/system/fontserver/IFontServerRemoteService;->selectFallback(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 288
    :cond_9
    :goto_9
    return-void

    .line 284
    :catch_a
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setDefault()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v1, :cond_6

    .line 140
    :goto_5
    return v0

    .line 136
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v1}, Lcom/hy/system/fontserver/IFontServerRemoteService;->setDefault()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_5

    .line 138
    :catch_d
    move-exception v1

    const-string v1, "HyFontServerConnection"

    const-string v2, "An error occured during the call."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public updateFontServer()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v0, :cond_5

    .line 115
    :goto_4
    return-void

    .line 111
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/lge/launcher3/theme/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v0}, Lcom/hy/system/fontserver/IFontServerRemoteService;->updateFontServer()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 113
    :catch_b
    move-exception v0

    const-string v0, "HyFontServerConnection"

    const-string v1, "An error occured during the call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
