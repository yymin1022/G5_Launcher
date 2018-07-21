.class public Lcom/google/android/hotword/client/HotwordServiceClient;
.super Ljava/lang/Object;
.source "HotwordServiceClient.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;,
        Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final GSA_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final HOTWORD_SERVICE:Ljava/lang/String; = "com.google.android.googlequicksearchbox.HOTWORD_SERVICE"

.field private static final TAG:Ljava/lang/String; = "HotwordServiceClient"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mFocusObserver:Landroid/view/WindowId$FocusObserver;

.field mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

.field private mHotwordStart:Z

.field private mIsAvailable:Z

.field mIsBound:Z

.field mIsFocused:Z

.field private mIsRequested:Z

.field private mIsStarted:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsRequested:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsFocused:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsStarted:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    .line 55
    new-instance v0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;

    invoke-direct {v0, p0}, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;-><init>(Lcom/google/android/hotword/client/HotwordServiceClient;)V

    iput-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mConnection:Landroid/content/ServiceConnection;

    .line 56
    new-instance v0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;

    invoke-direct {v0, p0}, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;-><init>(Lcom/google/android/hotword/client/HotwordServiceClient;)V

    iput-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mFocusObserver:Landroid/view/WindowId$FocusObserver;

    .line 57
    return-void
.end method

.method private assertMainThread()V
    .registers 3

    .prologue
    .line 180
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_16
    return-void
.end method

.method private internalBind()V
    .registers 5

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    if-eqz v0, :cond_9

    .line 204
    :cond_8
    :goto_8
    return-void

    .line 198
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.googlequicksearchbox.HOTWORD_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    .line 200
    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    .line 201
    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    if-nez v0, :cond_8

    .line 202
    const-string v0, "HotwordServiceClient"

    const-string v1, "Hotword service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private isPreKitKatDevice()Z
    .registers 3

    .prologue
    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_f

    .line 187
    const-string v0, "HotwordServiceClient"

    const-string v1, "Hotword service isn\'t usable on pre-Kitkat devices"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public final getVoiceSearchLanguage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->assertMainThread()V

    .line 167
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    if-nez v0, :cond_a

    .line 168
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalBind()V

    .line 170
    :cond_a
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

    if-eqz v0, :cond_1d

    .line 171
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

    invoke-interface {v0}, Lcom/google/android/hotword/service/IHotwordService;->getVoiceSearchLanguage()Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_15

    move-result-object v0

    .line 176
    :goto_14
    return-object v0

    .line 173
    :catch_15
    move-exception v0

    .line 174
    const-string v1, "HotwordServiceClient"

    const-string v2, "getVoiceSearchLanguage - remote call failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_1d
    const/4 v0, 0x0

    goto :goto_14
.end method

.method internalRequestHotword()V
    .registers 4

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsStarted:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsFocused:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsRequested:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 215
    :goto_d
    iget-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordStart:Z

    if-ne v1, v0, :cond_14

    .line 228
    :cond_11
    :goto_11
    return-void

    .line 211
    :cond_12
    const/4 v0, 0x0

    goto :goto_d

    .line 219
    :cond_14
    :try_start_14
    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordStart:Z

    .line 220
    iget-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    if-nez v1, :cond_27

    .line 221
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalBind()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 225
    :catch_1e
    move-exception v0

    .line 226
    const-string v1, "HotwordServiceClient"

    const-string v2, "requestHotwordDetection - remote call failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 222
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

    if-eqz v1, :cond_11

    .line 223
    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

    iget-object v2, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/hotword/service/IHotwordService;->requestHotwordDetection(Ljava/lang/String;Z)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_36} :catch_1e

    goto :goto_11
.end method

.method public final onAttachedToWindow()V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->isPreKitKatDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    :goto_6
    return-void

    .line 70
    :cond_7
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->assertMainThread()V

    .line 72
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1f

    .line 74
    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mFocusObserver:Landroid/view/WindowId$FocusObserver;

    invoke-virtual {v0, v1}, Landroid/view/WindowId;->registerFocusObserver(Landroid/view/WindowId$FocusObserver;)V

    .line 76
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalBind()V

    goto :goto_6
.end method

.method public final onDetachedFromWindow()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->isPreKitKatDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    :cond_6
    :goto_6
    return-void

    .line 125
    :cond_7
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->assertMainThread()V

    .line 127
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    .line 128
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mFocusObserver:Landroid/view/WindowId$FocusObserver;

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/WindowId;->unregisterFocusObserver(Landroid/view/WindowId$FocusObserver;)V

    .line 132
    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    if-eqz v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    goto :goto_6
.end method

.method public final onStart()V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->isPreKitKatDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    :goto_6
    return-void

    .line 90
    :cond_7
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->assertMainThread()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsStarted:Z

    .line 93
    invoke-virtual {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalRequestHotword()V

    goto :goto_6
.end method

.method public final onStop()V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->isPreKitKatDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    :goto_6
    return-void

    .line 107
    :cond_7
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->assertMainThread()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsStarted:Z

    .line 110
    invoke-virtual {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalRequestHotword()V

    goto :goto_6
.end method

.method onWindowFocusChanged(Z)V
    .registers 2

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsFocused:Z

    .line 232
    invoke-virtual {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalRequestHotword()V

    .line 233
    return-void
.end method

.method public final requestHotwordDetection(Z)V
    .registers 3

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->isPreKitKatDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    :goto_6
    return-void

    .line 149
    :cond_7
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->assertMainThread()V

    .line 150
    iput-boolean p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsRequested:Z

    .line 152
    invoke-virtual {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalRequestHotword()V

    goto :goto_6
.end method
