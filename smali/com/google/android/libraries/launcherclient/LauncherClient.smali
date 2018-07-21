.class public Lcom/google/android/libraries/launcherclient/LauncherClient;
.super Ljava/lang/Object;
.source "LauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;,
        Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;,
        Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.android.launcher3.WINDOW_OVERLAY"

.field private static final DEBUG:Z = false

.field static final GSA_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final HIDE_WINDOW_WHEN_OVERLAY_OPEN:Z = false

.field private static final OPTIONS_FLAG_DEFAULT:I = 0x3

.field private static final OPTIONS_FLAG_HOTWORD:I = 0x2

.field private static final OPTIONS_FLAG_OVERLAY:I = 0x1

.field private static final OVERLAY_OPTION_FLAG_ANIMATE:I = 0x1

.field private static final OVERLAY_OPTION_FLAG_IMMEDIATE:I = 0x0

.field private static final SERVICE_STATUS_DEFAULT:I = 0x0

.field private static final SERVICE_STATUS_HOTWORD_ACTIVE:I = 0x2

.field private static final SERVICE_STATUS_OVERLAY_ATTACHED:I = 0x1

.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_CONNECTING:I = 0x2

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrawerOverlayClient"

.field private static final VERSION:I

.field private static sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCurrentCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

.field private mDestroyed:Z

.field private mIsResumed:Z

.field private final mLauncherClientCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

.field protected mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field private final mServiceConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;

.field private mServiceConnectionOptions:I

.field private final mServiceIntent:Landroid/content/Intent;

.field private mServiceStatus:I

.field private mState:I

.field private final mUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowAttrs:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 122
    new-instance v0, Lcom/google/android/libraries/launcherclient/LauncherClientCallbacksAdapter;

    invoke-direct {v0}, Lcom/google/android/libraries/launcherclient/LauncherClientCallbacksAdapter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;)V
    .registers 4

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;Z)V

    .line 127
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;Ljava/lang/String;Z)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/google/android/libraries/launcherclient/LauncherClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/LauncherClient$1;-><init>(Lcom/google/android/libraries/launcherclient/LauncherClient;)V

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-boolean v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mIsResumed:Z

    .line 113
    iput-boolean v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceStatus:I

    .line 146
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    .line 147
    invoke-static {p1, p3}, Lcom/google/android/libraries/launcherclient/LauncherClient;->getServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceIntent:Landroid/content/Intent;

    .line 148
    iput-object p2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mLauncherClientCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

    .line 149
    iput v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mState:I

    .line 151
    new-instance v0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;-><init>(Lcom/google/android/libraries/launcherclient/LauncherClient;Lcom/google/android/libraries/launcherclient/LauncherClient$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;

    .line 152
    if-eqz p4, :cond_45

    const/4 v0, 0x3

    :goto_29
    iput v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceConnectionOptions:I

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p3, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 158
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->reconnect()V

    .line 161
    return-void

    .line 152
    :cond_45
    const/4 v0, 0x2

    goto :goto_29
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;Z)V
    .registers 5

    .prologue
    .line 137
    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/libraries/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/launcherclient/LauncherClient;I)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->notifyStatusChanged(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/libraries/launcherclient/LauncherClient;I)I
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/libraries/launcherclient/LauncherClient;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/launcherclient/LauncherClient;)V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->applyWindowToken()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/libraries/launcherclient/LauncherClient;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/libraries/launcherclient/LauncherClient;)I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceStatus:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mLauncherClientCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;)Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;
    .registers 1

    .prologue
    .line 66
    sput-object p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    return-object p0
.end method

.method private applyWindowToken()V
    .registers 5

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_28

    .line 339
    :try_start_4
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    if-nez v0, :cond_f

    .line 340
    new-instance v0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-direct {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    .line 342
    :cond_f
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->setClient(Lcom/google/android/libraries/launcherclient/LauncherClient;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    iget v3, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceConnectionOptions:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    .line 344
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mIsResumed:Z

    if-eqz v0, :cond_29

    .line 345
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    .line 353
    :cond_28
    :goto_28
    return-void

    .line 347
    :cond_29
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2e} :catch_2f

    goto :goto_28

    .line 349
    :catch_2f
    move-exception v0

    goto :goto_28
.end method

.method private connectSafely(Landroid/content/Context;Landroid/content/ServiceConnection;I)Z
    .registers 7

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceIntent:Landroid/content/Intent;

    or-int/lit8 v1, p3, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 318
    :goto_8
    return v0

    .line 316
    :catch_9
    move-exception v0

    .line 317
    const-string v1, "DrawerOverlayClient"

    const-string v2, "Unable to connect to overlay service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static getServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "app://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "v"

    const/4 v2, 0x0

    .line 482
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 484
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private isConnected()Z
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyStatusChanged(I)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 469
    iget v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceStatus:I

    if-eq v2, p1, :cond_16

    .line 470
    iput p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceStatus:I

    .line 471
    iget-object v3, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mLauncherClientCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_17

    move v2, v0

    :goto_f
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_19

    :goto_13
    invoke-interface {v3, v2, v0}, Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;->onServiceStateChanged(ZZ)V

    .line 475
    :cond_16
    return-void

    :cond_17
    move v2, v1

    .line 471
    goto :goto_f

    :cond_19
    move v0, v1

    goto :goto_13
.end method

.method private removeClient(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    .line 259
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    if-eqz v0, :cond_1d

    .line 262
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->clear()V

    .line 263
    iput-object v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    .line 265
    :cond_1d
    if-eqz p1, :cond_30

    sget-object v0, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    if-eqz v0, :cond_30

    .line 266
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 267
    sput-object v2, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    .line 269
    :cond_30
    return-void
.end method

.method private setWindowAttrs(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 324
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_a

    .line 325
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->applyWindowToken()V

    .line 334
    :cond_9
    :goto_9
    return-void

    .line 326
    :cond_a
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_9

    .line 328
    :try_start_e
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowDetached(Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1d

    .line 332
    :goto_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    goto :goto_9

    .line 329
    :catch_1d
    move-exception v0

    goto :goto_19
.end method


# virtual methods
.method public disconnect()V
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->removeClient(Z)V

    .line 236
    return-void
.end method

.method public endMove()V
    .registers 2

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 382
    :try_start_6
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->endScroll()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 387
    :cond_b
    :goto_b
    return-void

    .line 383
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public hideOverlay(Z)V
    .registers 4

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_c

    .line 414
    :try_start_4
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_d

    .line 415
    const/4 v0, 0x1

    .line 414
    :goto_9
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_f

    .line 420
    :cond_c
    :goto_c
    return-void

    .line 415
    :cond_d
    const/4 v0, 0x0

    goto :goto_9

    .line 416
    :catch_f
    move-exception v0

    goto :goto_c
.end method

.method public final onAttachedToWindow()V
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 172
    :goto_4
    return-void

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->setWindowAttrs(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_4
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->removeClient(Z)V

    .line 228
    return-void

    .line 227
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 183
    :goto_4
    return-void

    .line 182
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->setWindowAttrs(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_4
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 220
    :cond_4
    :goto_4
    return-void

    .line 212
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mIsResumed:Z

    .line 213
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_4

    .line 215
    :try_start_10
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_4

    .line 216
    :catch_16
    move-exception v0

    goto :goto_4
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 202
    :cond_4
    :goto_4
    return-void

    .line 193
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->reconnect()V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mIsResumed:Z

    .line 195
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_4

    .line 197
    :try_start_13
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_4

    .line 198
    :catch_19
    move-exception v0

    goto :goto_4
.end method

.method public reconnect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_6

    .line 311
    :cond_5
    :goto_5
    return-void

    .line 279
    :cond_6
    iget v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mState:I

    if-nez v0, :cond_5

    .line 280
    sget-object v0, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    iget-object v0, v0, Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceIntent:Landroid/content/Intent;

    .line 281
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 283
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 284
    sput-object v3, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    .line 287
    :cond_2b
    sget-object v0, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    if-nez v0, :cond_4e

    .line 288
    new-instance v0, Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    .line 289
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;->connectSafely(Landroid/content/Context;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 291
    sput-object v3, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    .line 295
    :cond_4e
    sget-object v0, Lcom/google/android/libraries/launcherclient/LauncherClient;->sApplicationConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$AppServiceConnection;

    if-eqz v0, :cond_64

    .line 296
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mState:I

    .line 297
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceConnection:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayServiceConnection;

    const/16 v2, 0x80

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;->connectSafely(Landroid/content/Context;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_64

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mState:I

    .line 302
    :cond_64
    iget v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mState:I

    if-nez v0, :cond_5

    .line 303
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/libraries/launcherclient/LauncherClient$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/launcherclient/LauncherClient$2;-><init>(Lcom/google/android/libraries/launcherclient/LauncherClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method public requestHotwordDetection(Z)V
    .registers 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_9

    .line 443
    :try_start_4
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->requestVoiceDetection(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 448
    :cond_9
    :goto_9
    return-void

    .line 444
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public setOverlayEnabled(Z)V
    .registers 4

    .prologue
    .line 248
    if-eqz p1, :cond_11

    const/4 v0, 0x3

    .line 249
    :goto_3
    iget v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceConnectionOptions:I

    if-eq v0, v1, :cond_10

    .line 250
    iput v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceConnectionOptions:I

    .line 251
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_10

    .line 252
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->applyWindowToken()V

    .line 255
    :cond_10
    return-void

    .line 248
    :cond_11
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public showOverlay(Z)V
    .registers 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_c

    .line 429
    :try_start_4
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->openOverlay(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_f

    .line 434
    :cond_c
    :goto_c
    return-void

    .line 429
    :cond_d
    const/4 v0, 0x0

    goto :goto_9

    .line 430
    :catch_f
    move-exception v0

    goto :goto_c
.end method

.method public startMove()V
    .registers 2

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 367
    :try_start_6
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startScroll()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 372
    :cond_b
    :goto_b
    return-void

    .line 368
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public updateMove(F)V
    .registers 3

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 400
    :try_start_6
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onScroll(F)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 405
    :cond_b
    :goto_b
    return-void

    .line 401
    :catch_c
    move-exception v0

    goto :goto_b
.end method
