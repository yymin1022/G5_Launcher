.class public Lcom/lge/mdm/controller/LGMDMMicrophoneController;
.super Ljava/lang/Object;
.source "LGMDMMicrophoneController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;,
        Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;,
        Lcom/lge/mdm/controller/LGMDMMicrophoneController$2;
    }
.end annotation


# static fields
.field static final ACTION_CALL_STATE:Ljava/lang/String; = "com.lge.mdm.action.CHANGE_CALL_STATE"

.field static final CAMERA_PACKAGE:Ljava/lang/String; = "com.lge.camera"

.field static final INPUT_METHOD_SUBTYPE_SEPARATER:Ljava/lang/String; = ":"

.field static final PHONE_PACKAGENAME:Ljava/lang/String; = "com.android.incallui"

.field static final QMEMO_PACKAGE:Ljava/lang/String; = "com.lge.qmemoplus"

.field private static final TAG:Ljava/lang/String; = "MicrophoneController"

.field private static instance:Lcom/lge/mdm/controller/LGMDMMicrophoneController;


# instance fields
.field final GOOGLE_VOICE_SEARCH:Ljava/lang/String;

.field final VOICE_SEARCH_PACKAGENAME:Ljava/lang/String;

.field mBTAudioStateReceiver:Landroid/content/BroadcastReceiver;

.field private mCallState:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field mCallStateReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mCurrIMEid:Ljava/lang/String;

.field private mCurrentCallNumber:Ljava/lang/String;

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private mMicPackage:Ljava/lang/String;

.field private mSpeechPackage:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCallState:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrentCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCallState:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/lge/mdm/controller/LGMDMMicrophoneController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrentCallNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)I
    .registers 2

    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getAudioMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/lge/mdm/controller/LGMDMMicrophoneController;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->displayEnforcedMuteToast(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->instance:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v1, "com.google.android.voicesearch"

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->VOICE_SEARCH_PACKAGENAME:Ljava/lang/String;

    .line 39
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->GOOGLE_VOICE_SEARCH:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrIMEid:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrentCallNumber:Ljava/lang/String;

    .line 53
    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->IDLE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCallState:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    .line 59
    new-instance v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;-><init>(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$2;

    invoke-direct {v1, p0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$2;-><init>(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)V

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mBTAudioStateReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 128
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.lge.mdm.action.CHANGE_CALL_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentfilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v0    # "intentfilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mBTAudioStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    :cond_5a
    return-void
.end method

.method private checkRunningMicrophonePackage(ILjava/util/List;)V
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 482
    invoke-direct {p0, p2, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->needToHideCurrentIME(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 483
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrIMEid:Ljava/lang/String;

    .line 484
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->showToast(I)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->hideVoiceIME(I)V

    .line 487
    :cond_10
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 488
    if-eqz p2, :cond_1e

    .line 489
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->checkMicPackageInWhitelist(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 490
    :cond_1e
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->showToast(I)V

    .line 491
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->forceStopPackage(Ljava/lang/String;II)V

    .line 492
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    .line 494
    :cond_2c
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    if-eqz v0, :cond_48

    .line 495
    if-eqz p2, :cond_3a

    .line 496
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->checkMicPackageInWhitelist(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 497
    :cond_3a
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->showToast(I)V

    .line 498
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->forceStopPackage(Ljava/lang/String;II)V

    .line 499
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    .line 481
    :cond_48
    return-void
.end method

.method private displayEnforcedMuteToast(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 596
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    .line 597
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_enforce_mute_during_call:I

    .line 596
    invoke-virtual {v0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 595
    return-void
.end method

.method private getAudioMode()I
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 602
    const-string/jumbo v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 603
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 605
    .local v2, "sService":Landroid/media/IAudioService;
    if-nez v2, :cond_f

    .line 606
    return v4

    .line 610
    :cond_f
    :try_start_f
    invoke-interface {v2}, Landroid/media/IAudioService;->getMode()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_14

    move-result v3

    return v3

    .line 611
    :catch_14
    move-exception v1

    .line 612
    .local v1, "e":Ljava/lang/Exception;
    return v4
.end method

.method private getGlobalMicrophoneWhitelist(I)Ljava/util/List;
    .registers 12
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    const/4 v5, 0x0

    .line 233
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 235
    .local v6, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 237
    .local v6, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v7, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 238
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admins$iterator":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 239
    .local v0, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    if-nez v7, :cond_11

    .line 243
    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    if-eqz v7, :cond_11

    .line 244
    iget-object v7, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "packageName$iterator":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    const-string/jumbo v7, "MicrophoneController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getGlobalmicrophonewhitelist add package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 251
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageName$iterator":Ljava/util/Iterator;
    :cond_55
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_60

    .line 252
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 254
    :cond_60
    return-object v5
.end method

.method private getImeListForMicrophone(I)[Ljava/lang/String;
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getSettingDatabaseForMicrophone(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "enabledInputMethodsStr":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 340
    return-object v1

    .line 342
    :cond_8
    const-string/jumbo v1, "MicrophoneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Input Method enabledInputMethodsStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMMicrophoneController;
    .registers 1

    .prologue
    .line 140
    sget-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->instance:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    if-nez v0, :cond_b

    .line 141
    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->instance:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    .line 143
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->instance:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    return-object v0
.end method

.method private getRunningPackagesFormPid(I)[Ljava/lang/String;
    .registers 10
    .param p1, "pid"    # I

    .prologue
    const/4 v7, 0x0

    .line 360
    const/4 v4, 0x1

    if-ge p1, v4, :cond_1f

    .line 361
    const-string/jumbo v4, "MicrophoneController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFormPid : pid check fail : pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-object v7

    .line 364
    :cond_1f
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 365
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_47

    .line 366
    const-string/jumbo v4, "MicrophoneController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFormPid : null check fail : ActivityManager = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-object v7

    .line 370
    :cond_47
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 371
    .local v1, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_68

    .line 372
    const-string/jumbo v4, "MicrophoneController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFormPid : null check fail : processList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-object v7

    .line 377
    :cond_68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rapi$iterator":Ljava/util/Iterator;
    :cond_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 378
    .local v2, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_6c

    .line 379
    const-string/jumbo v4, "MicrophoneController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRunningPackagesFormPid : found packages = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    return-object v4

    .line 383
    .end local v2    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_9e
    const-string/jumbo v4, "MicrophoneController"

    const-string/jumbo v5, "getRunningPackagesFormPid : not found packages"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-object v7
.end method

.method private getSettingDatabaseForMicrophone(I)Ljava/lang/String;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 348
    const-string/jumbo v1, "enabled_input_methods"

    .line 347
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isTablet()Z
    .registers 3

    .prologue
    .line 617
    const-string/jumbo v0, "tablet"

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 618
    const/4 v0, 0x1

    return v0

    .line 620
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private needToHideCurrentIME(Ljava/util/List;I)Z
    .registers 8
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrIMEid:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 465
    return v3

    .line 468
    :cond_8
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrIMEid:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->checkMicPackageInWhitelist(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 469
    :cond_12
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrIMEid:Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.voicesearch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 470
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrIMEid:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 469
    if-eqz v0, :cond_2e

    .line 471
    :cond_2b
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    .line 472
    return v4

    .line 473
    :cond_2e
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrIMEid:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 474
    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    .line 475
    return v4

    .line 478
    :cond_3f
    return v3
.end method

.method private setMicrophoePrestatusSecureSettingValue(Lcom/lge/mdm/admin/LGMDMadminlist;I)V
    .registers 8
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0, v2, p2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getAllowMicrophone(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 309
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getSettingDatabaseForMicrophone(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "enabledInputMethodsStr":Ljava/lang/String;
    if-eqz v1, :cond_5b

    .line 311
    const-string/jumbo v2, "MicrophoneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input Method enabledInputMethodsStr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    move-object v0, v1

    .line 313
    .local v0, "builderString":Ljava/lang/String;
    iget-object v2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->mMicrophoneIMEPackageName:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 314
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 315
    iget-object v0, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->mMicrophoneIMEPackageName:Ljava/lang/String;

    .line 321
    :cond_3e
    :goto_3e
    const-string/jumbo v2, "MicrophoneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input Method builder ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0, v0, p2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->setSettingDatabaseForMicrophone(Ljava/lang/String;I)V

    .line 307
    .end local v0    # "builderString":Ljava/lang/String;
    .end local v1    # "enabledInputMethodsStr":Ljava/lang/String;
    :cond_5b
    return-void

    .line 317
    .restart local v0    # "builderString":Ljava/lang/String;
    .restart local v1    # "enabledInputMethodsStr":Ljava/lang/String;
    :cond_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->mMicrophoneIMEPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method

.method private setMicrophoeSecureSettingValue(Lcom/lge/mdm/admin/LGMDMadminlist;I)V
    .registers 11
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "userHandle"    # I

    .prologue
    .line 284
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getImeListForMicrophone(I)[Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "enabledInputMethodArray":[Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 286
    .local v0, "builderString":Ljava/lang/String;
    const-string/jumbo v3, ""

    iput-object v3, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->mMicrophoneIMEPackageName:Ljava/lang/String;

    .line 287
    if-nez v1, :cond_f

    .line 288
    return-void

    .line 291
    :cond_f
    const/4 v3, 0x0

    array-length v4, v1

    :goto_11
    if-ge v3, v4, :cond_61

    aget-object v2, v1, v3

    .line 292
    .local v2, "inputMethod":Ljava/lang/String;
    const-string/jumbo v5, "com.google.android.voicesearch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 293
    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 294
    move-object v0, v2

    .line 298
    :goto_28
    const-string/jumbo v5, "MicrophoneController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Input Method building : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 296
    :cond_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 300
    :cond_5e
    iput-object v2, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->mMicrophoneIMEPackageName:Ljava/lang/String;

    goto :goto_42

    .line 303
    .end local v2    # "inputMethod":Ljava/lang/String;
    :cond_61
    const-string/jumbo v3, "MicrophoneController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Input Method builder ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, v0, p2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->setSettingDatabaseForMicrophone(Ljava/lang/String;I)V

    .line 283
    return-void
.end method

.method private setSettingDatabaseForMicrophone(Ljava/lang/String;I)V
    .registers 7
    .param p1, "builderString"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 330
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 331
    const-string/jumbo v3, "enabled_input_methods"

    .line 330
    invoke-static {v2, v3, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    return-void

    .line 332
    :catchall_14
    move-exception v2

    .line 333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    throw v2
.end method

.method private showToast(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 459
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    .line 460
    sget v1, Lcom/lge/internal/R$string;->sp_block_microphone_NORMAL:I

    .line 459
    invoke-virtual {v0, v1, p1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendToastMessage(II)V

    .line 458
    return-void
.end method


# virtual methods
.method protected checkEnforceMuteDuringCall(I)Z
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getAudioMode()I

    move-result v0

    .line 571
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 572
    return v2

    .line 575
    :cond_e
    invoke-virtual {p0, v4, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getEnforceMuteDuringCall(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 576
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 577
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->displayEnforcedMuteToast(I)V

    .line 578
    return v3

    .line 581
    :cond_1e
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrentCallNumber:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 582
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrentCallNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 581
    if-eqz v1, :cond_2b

    .line 583
    return v2

    .line 585
    :cond_2b
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCallState:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    sget-object v2, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->ACTIVE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    if-ne v1, v2, :cond_34

    .line 587
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->displayEnforcedMuteToast(I)V

    .line 589
    :cond_34
    return v3

    .line 592
    :cond_35
    return v2
.end method

.method public checkMicPackageInWhitelist(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 211
    const/4 v3, 0x1

    .line 212
    .local v3, "result":Z
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v4, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 213
    .local v2, "adminlist":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 214
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    if-nez v4, :cond_b

    .line 217
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    if-nez v4, :cond_21

    .line 218
    const/4 v3, 0x0

    .line 228
    .end local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_20
    :goto_20
    return v3

    .line 221
    .restart local v0    # "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_21
    iget-object v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 222
    const/4 v3, 0x1

    goto :goto_b

    .line 224
    :cond_2b
    const/4 v3, 0x0

    .line 225
    goto :goto_20
.end method

.method public checkPackageNameFromPID(II)Ljava/lang/String;
    .registers 6
    .param p1, "pid"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getRunningPackagesFormPid(I)[Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "packagelist":[Ljava/lang/String;
    if-eqz v0, :cond_e

    aget-object v1, v0, v2

    if-eqz v1, :cond_e

    .line 354
    aget-object v1, v0, v2

    return-object v1

    .line 356
    :cond_e
    const-string/jumbo v1, ""

    return-object v1
.end method

.method protected getAllowMicrophone(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 149
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 150
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    :cond_e
    return v4

    .line 153
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 154
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

    .line 155
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    if-nez v5, :cond_19

    .line 156
    const/4 v4, 0x0

    return v4

    .line 159
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method public getAppVersionCode(Ljava/lang/String;)I
    .registers 7
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 444
    const/4 v1, 0x0

    .line 446
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_2
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_10

    move-result-object v1

    .line 451
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    return v2

    .line 447
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :catch_10
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MicrophoneController"

    const-string/jumbo v3, "getCameraAppVersion failed"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return v4
.end method

.method public getCurrIMEPackage(I)Ljava/lang/String;
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrIMEid:Ljava/lang/String;

    return-object v0
.end method

.method protected getEnforceMuteDuringCall(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 556
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 557
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMuteDuringCall:Z

    :cond_e
    return v4

    .line 560
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 561
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

    .line 562
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMuteDuringCall:Z

    if-eqz v5, :cond_19

    .line 563
    const/4 v4, 0x1

    return v4

    .line 566
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method public getMicrophonePackage(ZI)Ljava/lang/String;
    .registers 4
    .param p1, "bSpeech"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 436
    if-eqz p1, :cond_5

    .line 437
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    return-object v0

    .line 439
    :cond_5
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    return-object v0
.end method

.method protected getMicrophoneWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
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
    const/4 v1, 0x0

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 204
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 205
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    :cond_e
    return-object v1

    .line 207
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getGlobalMicrophoneWhitelist(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected hasToStopMicrophone(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    .line 397
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 398
    return v1

    .line 399
    :cond_6
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 400
    return v1

    .line 403
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public hideVoiceIME(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 455
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.HIDE_IME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    return-void
.end method

.method protected setAllowMicrophone(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 165
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    if-ne v2, p2, :cond_15

    .line 166
    const-string/jumbo v2, "MicrophoneController"

    const-string/jumbo v3, "setAllowMicrophone : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 170
    :cond_15
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.MICROPHONE_POLICY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    .line 174
    iput-object v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    .line 175
    if-nez p2, :cond_2d

    .line 176
    invoke-direct {p0, p3, v3}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->checkRunningMicrophonePackage(ILjava/util/List;)V

    .line 162
    :cond_2d
    return-void
.end method

.method protected setBootCompleteIME(I)V
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 258
    invoke-virtual {p0, v4, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getMicrophoneWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3

    .line 259
    .local v3, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_11

    const-string/jumbo v4, "com.google.android.googlequicksearchbox"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 260
    return-void

    .line 263
    :cond_11
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getImeListForMicrophone(I)[Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "enabledInputMethodArray":[Ljava/lang/String;
    if-nez v1, :cond_18

    .line 265
    return-void

    .line 267
    :cond_18
    const-string/jumbo v0, ""

    .line 269
    .local v0, "builderString":Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v1

    :goto_1d
    if-ge v4, v5, :cond_6a

    aget-object v2, v1, v4

    .line 270
    .local v2, "inputMethod":Ljava/lang/String;
    const-string/jumbo v6, "com.google.android.voicesearch"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 271
    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 272
    move-object v0, v2

    .line 276
    :goto_34
    const-string/jumbo v6, "MicrophoneController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Input Method building : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 274
    :cond_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 279
    .end local v2    # "inputMethod":Ljava/lang/String;
    :cond_6a
    const-string/jumbo v4, "MicrophoneController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Input Method builder ; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, v0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->setSettingDatabaseForMicrophone(Ljava/lang/String;I)V

    .line 257
    return-void
.end method

.method public setCurrIMEPackage(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 388
    const-string/jumbo v0, "MicrophoneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrIMEPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrIMEid:Ljava/lang/String;

    .line 387
    return-void
.end method

.method protected setEnforceMuteDuringCall(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 525
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 527
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMuteDuringCall:Z

    if-ne v2, p2, :cond_15

    .line 528
    const-string/jumbo v2, "MicrophoneController"

    const-string/jumbo v3, "setEnforceMuteDuringCall : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void

    .line 532
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMuteDuringCall:Z

    .line 535
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->isTablet()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrentCallNumber:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 536
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mCurrentCallNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 535
    if-eqz v2, :cond_2a

    .line 537
    return-void

    .line 540
    :cond_2a
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getAudioMode()I

    move-result v1

    .line 542
    .local v1, "mode":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_34

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3a

    .line 543
    :cond_34
    if-eqz p2, :cond_3b

    .line 544
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->setMicrophoneMute(Z)V

    .line 524
    :cond_3a
    :goto_3a
    return-void

    .line 546
    :cond_3b
    invoke-virtual {p0, v3, p3}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getEnforceMuteDuringCall(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 547
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->setMicrophoneMute(Z)V

    goto :goto_3a
.end method

.method public setMicrophoneMute(Z)V
    .registers 5
    .param p1, "state"    # Z

    .prologue
    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mdm.intent.action.ACTION_MUTE_DURING_CALL_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 507
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/mdm/controller/LGMDMMicrophoneController$3;

    invoke-direct {v2, p0, p1}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$3;-><init>(Lcom/lge/mdm/controller/LGMDMMicrophoneController;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 503
    return-void
.end method

.method public setMicrophonePackage(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bSpeech"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 408
    if-eqz p1, :cond_18

    const-string/jumbo v0, "com.lge.camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 409
    const-string/jumbo v0, "com.lge.camera"

    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getAppVersionCode(Ljava/lang/String;)I

    move-result v0

    const v1, 0x29f6300

    if-lt v0, v1, :cond_18

    .line 410
    return-void

    .line 414
    :cond_18
    if-eqz p1, :cond_30

    const-string/jumbo v0, "com.lge.qmemoplus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 415
    const-string/jumbo v0, "com.lge.qmemoplus"

    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getAppVersionCode(Ljava/lang/String;)I

    move-result v0

    const v1, 0x1ad2748e

    if-lt v0, v1, :cond_30

    .line 416
    return-void

    .line 420
    :cond_30
    if-eqz p1, :cond_48

    const-string/jumbo v0, "com.android.incallui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 421
    const-string/jumbo v0, "com.android.incallui"

    invoke-virtual {p0, v0}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getAppVersionCode(Ljava/lang/String;)I

    move-result v0

    const v1, 0x2faf080

    if-lt v0, v1, :cond_48

    .line 422
    return-void

    .line 426
    :cond_48
    const-string/jumbo v0, "MicrophoneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMicrophonePackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    const-string/jumbo v2, ", speech:"

    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    const-string/jumbo v2, ", userHandle:"

    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    if-eqz p2, :cond_7d

    .line 429
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mSpeechPackage:Ljava/lang/String;

    .line 406
    :goto_7c
    return-void

    .line 431
    :cond_7d
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mMicPackage:Ljava/lang/String;

    goto :goto_7c
.end method

.method protected setMicrophoneWhitelist(Landroid/content/ComponentName;ZLjava/util/List;I)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 184
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    if-ne v2, p2, :cond_14

    .line 185
    const-string/jumbo v2, "MicrophoneController"

    const-string/jumbo v3, "setMicrophoneWhitelist : same policy is called"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void

    .line 189
    :cond_14
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mdm.intent.action.MICROPHONE_POLICY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMHandler;->getInstance()Lcom/lge/mdm/controller/LGMDMHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/controller/LGMDMHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    .line 193
    if-nez p2, :cond_2d

    .line 194
    iput-object p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    .line 195
    invoke-direct {p0, p4, p3}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->checkRunningMicrophonePackage(ILjava/util/List;)V

    .line 181
    :goto_2c
    return-void

    .line 197
    :cond_2d
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    goto :goto_2c
.end method
