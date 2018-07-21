.class public Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIMicrophoneAdapter.java"


# static fields
.field static final CAMERA_PACKAGE:Ljava/lang/String; = "com.lge.camera"

.field static final GOOGLE_VOICE_SEARCH:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field static final PHONE_PACKAGENAME:Ljava/lang/String; = "com.android.incallui"

.field static final QMEMO_PACKAGE:Ljava/lang/String; = "com.lge.qmemoplus"

.field private static TAG:Ljava/lang/String; = null

.field static final VOICE_SEARCH_PACKAGENAME:Ljava/lang/String; = "com.google.android.voicesearch"

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "LGMDMUIMicrophoneAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkActivityStatus(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-nez p1, :cond_5

    .line 116
    return v1

    .line 118
    :cond_5
    if-nez p2, :cond_10

    .line 119
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "white list null"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return v2

    .line 121
    :cond_10
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 122
    return v2

    .line 124
    :cond_17
    return v1
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;

    .line 43
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;

    return-object v0
.end method

.method private showToast(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 128
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "microphone is blocked by whitelist"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v2

    .line 132
    .local v2, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const-string/jumbo v3, ""

    .line 134
    .local v3, "packageName":Ljava/lang/String;
    :try_start_f
    new-instance v1, Lcom/lge/mdm/util/LGMDMActivityInfo;

    invoke-direct {v1}, Lcom/lge/mdm/util/LGMDMActivityInfo;-><init>()V

    .line 135
    .local v1, "mLGMDMActivityInfo":Lcom/lge/mdm/util/LGMDMActivityInfo;
    invoke-virtual {v1, p1}, Lcom/lge/mdm/util/LGMDMActivityInfo;->getTopActivityPackageName(I)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_17} :catch_27

    move-result-object v3

    .line 140
    .end local v1    # "mLGMDMActivityInfo":Lcom/lge/mdm/util/LGMDMActivityInfo;
    :goto_18
    const-string/jumbo v4, "com.android.incallui"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 141
    sget v4, Lcom/lge/internal/R$string;->sp_lgmdm_block_voice_record_NORMAL:I

    invoke-virtual {v2, v4, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 127
    :goto_26
    return-void

    .line 136
    :catch_27
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getTopPackageName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    .line 143
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2d
    sget v4, Lcom/lge/internal/R$string;->sp_block_microphone_NORMAL:I

    invoke-virtual {v2, v4, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_26
.end method


# virtual methods
.method public checkAllowMicrophone(ZZI)Z
    .registers 15
    .param p1, "bOpen"    # Z
    .param p2, "bSpeech"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 55
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v2

    .line 56
    .local v2, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v5, 0x0

    .line 58
    .local v5, "whitehlistcheck":Z
    if-eqz p2, :cond_24

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 59
    .local v4, "pid":I
    :goto_e
    invoke-virtual {v2, v4, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkPackageNameFromPID(II)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "packageNameFromPID":Ljava/lang/String;
    if-nez p1, :cond_29

    .line 62
    invoke-virtual {v2, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getMicrophonePackage(ZI)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "currentPackage":Ljava/lang/String;
    if-eqz v0, :cond_23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 64
    invoke-virtual {v2, v10, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setMicrophonePackage(Ljava/lang/String;ZI)V

    .line 66
    :cond_23
    return v6

    .line 58
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v3    # "packageNameFromPID":Ljava/lang/String;
    .end local v4    # "pid":I
    :cond_24
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .restart local v4    # "pid":I
    goto :goto_e

    .line 69
    .restart local v3    # "packageNameFromPID":Ljava/lang/String;
    :cond_29
    const-string/jumbo v8, "com.lge.camera"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 70
    const-string/jumbo v8, "com.lge.camera"

    invoke-virtual {v2, v8}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAppVersionCode(Ljava/lang/String;)I

    move-result v8

    const v9, 0x29f6300

    if-lt v8, v9, :cond_3f

    .line 71
    return v6

    .line 75
    :cond_3f
    const-string/jumbo v8, "com.lge.qmemoplus"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 76
    const-string/jumbo v8, "com.lge.qmemoplus"

    invoke-virtual {v2, v8}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAppVersionCode(Ljava/lang/String;)I

    move-result v8

    const v9, 0x1ad2748e

    if-lt v8, v9, :cond_55

    .line 77
    return v6

    .line 81
    :cond_55
    const-string/jumbo v8, "com.android.incallui"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 82
    const-string/jumbo v8, "com.android.incallui"

    invoke-virtual {v2, v8}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAppVersionCode(Ljava/lang/String;)I

    move-result v8

    const v9, 0x2faf080

    if-lt v8, v9, :cond_6b

    .line 83
    return v6

    .line 87
    :cond_6b
    invoke-virtual {v2, v10, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMicrophone(Landroid/content/ComponentName;I)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 88
    invoke-virtual {v2, v3, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setMicrophonePackage(Ljava/lang/String;ZI)V

    .line 89
    return v6

    .line 92
    :cond_75
    invoke-virtual {v2, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkMicPackageInWhitelist(Ljava/lang/String;I)Z

    move-result v5

    .line 94
    .local v5, "whitehlistcheck":Z
    if-nez v5, :cond_a8

    .line 95
    invoke-direct {p0, p3}, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->showToast(I)V

    .line 96
    invoke-virtual {v2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCurrIMEPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "imePackage":Ljava/lang/String;
    if-eqz v1, :cond_9b

    .line 98
    const-string/jumbo v8, "com.google.android.voicesearch"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_93

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 98
    if-eqz v8, :cond_9b

    .line 100
    :cond_93
    invoke-virtual {v2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->hideVoiceIME(I)V

    .line 101
    if-eqz v5, :cond_99

    :goto_98
    return v6

    :cond_99
    move v6, v7

    goto :goto_98

    .line 104
    :cond_9b
    invoke-virtual {v2, v3, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setMicrophonePackage(Ljava/lang/String;ZI)V

    .line 105
    const/4 v8, -0x1

    invoke-virtual {v2, v3, v8, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->forceStopPackage(Ljava/lang/String;II)V

    .line 106
    invoke-virtual {v2, v10, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setMicrophonePackage(Ljava/lang/String;ZI)V

    .line 111
    .end local v1    # "imePackage":Ljava/lang/String;
    :goto_a5
    if-eqz v5, :cond_ac

    :goto_a7
    return v6

    .line 108
    :cond_a8
    invoke-virtual {v2, v3, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setMicrophonePackage(Ljava/lang/String;ZI)V

    goto :goto_a5

    :cond_ac
    move v6, v7

    .line 111
    goto :goto_a7
.end method

.method public checkMicrophoneApplicationEnable(Ljava/lang/String;I)I
    .registers 11
    .param p1, "mPackageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 148
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v3

    .line 150
    .local v3, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const-string/jumbo v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 151
    const-string/jumbo v4, "com.google.android.voicesearch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 150
    if-eqz v4, :cond_64

    .line 152
    :cond_18
    invoke-virtual {v3, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMicrophone(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 153
    return v7

    .line 155
    :cond_1f
    invoke-virtual {v3, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getMicrophoneWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "mMicWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_61

    .line 157
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mMicApplication$iterator":Ljava/util/Iterator;
    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, "mMicApplication":Ljava/lang/String;
    sget-object v4, Lcom/lge/mdm/frameworks/LGMDMUIMicrophoneAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "white app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 160
    const-string/jumbo v4, "com.google.android.voicesearch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 159
    if-eqz v4, :cond_29

    .line 161
    :cond_60
    return v7

    .line 165
    .end local v0    # "mMicApplication":Ljava/lang/String;
    .end local v1    # "mMicApplication$iterator":Ljava/util/Iterator;
    :cond_61
    const/16 v4, -0x6d

    return v4

    .line 167
    .end local v2    # "mMicWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_64
    return v7
.end method

.method public setCurrIMEpackage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 51
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setCurrIMEPackage(Ljava/lang/String;I)V

    .line 49
    return-void
.end method
