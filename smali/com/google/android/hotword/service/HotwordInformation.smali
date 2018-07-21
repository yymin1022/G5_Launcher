.class public Lcom/google/android/hotword/service/HotwordInformation;
.super Ljava/lang/Object;
.source "HotwordInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/hotword/service/HotwordInformation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HotwordInformation"


# instance fields
.field private mAdapatationThreshold:F

.field private mAlwaysOnAvailable:Z

.field private mAlwaysOnEnabled:Z

.field private mCleanRmsBoundaries:[F

.field private mDumpHotwordAudioToFile:Z

.field private mFromAnyScreenAvailable:Z

.field private mFromAnyScreenEnabled:Z

.field private mHotwordAvailable:Z

.field private mHotwordEnabled:Z

.field private mHotwordModel:[B

.field private mHotwordModelLocation:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mHotwordRmsBoundaries:[F

.field private mIsHotwordInInteractorDspEnabled:Z

.field private mIsHotwordInInteractorFromAnyScreen:Z

.field private mSpeakerIdModel:Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mVerificationThreshold:[F

.field private mVoiceLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 337
    new-instance v0, Lcom/google/android/hotword/service/HotwordInformation$1;

    invoke-direct {v0}, Lcom/google/android/hotword/service/HotwordInformation$1;-><init>()V

    sput-object v0, Lcom/google/android/hotword/service/HotwordInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "HotwordInformation"

    const-string v3, "HotwordInformation#Constructor(Parcel in)"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_97

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordAvailable:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_9a

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordEnabled:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_9c

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnAvailable:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_9e

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnEnabled:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_a0

    move v0, v1

    :goto_39
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenAvailable:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_a2

    move v0, v1

    :goto_42
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenEnabled:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModelLocation:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAdapatationThreshold:F

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVerificationThreshold:[F

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordRmsBoundaries:[F

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mCleanRmsBoundaries:[F

    .line 108
    const-class v0, Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mSpeakerIdModel:Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVoiceLocale:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModel:[B

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_a4

    move v0, v1

    :goto_83
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mDumpHotwordAudioToFile:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_a6

    move v0, v1

    :goto_8c
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorDspEnabled:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_a8

    :goto_94
    iput-boolean v1, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorFromAnyScreen:Z

    .line 114
    return-void

    :cond_97
    move v0, v2

    .line 97
    goto/16 :goto_15

    :cond_9a
    move v0, v2

    .line 98
    goto :goto_1e

    :cond_9c
    move v0, v2

    .line 99
    goto :goto_27

    :cond_9e
    move v0, v2

    .line 100
    goto :goto_30

    :cond_a0
    move v0, v2

    .line 101
    goto :goto_39

    :cond_a2
    move v0, v2

    .line 102
    goto :goto_42

    :cond_a4
    move v0, v2

    .line 111
    goto :goto_83

    :cond_a6
    move v0, v2

    .line 112
    goto :goto_8c

    :cond_a8
    move v1, v2

    .line 113
    goto :goto_94
.end method

.method public constructor <init>(ZZZZZZLjava/lang/String;F[F[F[FLcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;Ljava/lang/String;[BZZZ)V
    .registers 22
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v1, "HotwordInformation"

    const-string v2, "HotwordInformation#Constructor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iput-boolean p1, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordAvailable:Z

    .line 75
    iput-boolean p2, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordEnabled:Z

    .line 76
    iput-boolean p3, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnAvailable:Z

    .line 77
    iput-boolean p4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnEnabled:Z

    .line 78
    iput-boolean p5, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenAvailable:Z

    .line 79
    iput-boolean p6, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenEnabled:Z

    .line 80
    iput-object p7, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModelLocation:Ljava/lang/String;

    .line 81
    iput p8, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAdapatationThreshold:F

    .line 82
    iput-object p9, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVerificationThreshold:[F

    .line 83
    iput-object p10, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordRmsBoundaries:[F

    .line 84
    iput-object p11, p0, Lcom/google/android/hotword/service/HotwordInformation;->mCleanRmsBoundaries:[F

    .line 85
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mSpeakerIdModel:Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    .line 86
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVoiceLocale:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModel:[B

    .line 88
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mDumpHotwordAudioToFile:Z

    .line 89
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorDspEnabled:Z

    .line 90
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorFromAnyScreen:Z

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public dumpHotwordAudioToFile()Z
    .registers 6

    .prologue
    .line 305
    const-string v0, "HotwordInformation"

    const-string v1, "#dumpHotwordAudioToFile: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mDumpHotwordAudioToFile:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mDumpHotwordAudioToFile:Z

    return v0
.end method

.method public getAdaptationThreshold()F
    .registers 6

    .prologue
    .line 233
    const-string v0, "HotwordInformation"

    const-string v1, "#getAdaptationThreshold: %f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAdapatationThreshold:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAdapatationThreshold:F

    return v0
.end method

.method public getCleanRmsBoundaries()[F
    .registers 6

    .prologue
    .line 263
    const-string v0, "HotwordInformation"

    const-string v1, "#getCleanRmsBoundaries: %f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mCleanRmsBoundaries:[F

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mCleanRmsBoundaries:[F

    return-object v0
.end method

.method public getHotwordModel()[B
    .registers 6

    .prologue
    .line 298
    const-string v1, "HotwordInformation"

    const-string v2, "#getHotwordModel: %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModel:[B

    if-nez v0, :cond_16

    const-string v0, "null"

    :goto_e
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModel:[B

    return-object v0

    .line 298
    :cond_16
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModel:[B

    goto :goto_e
.end method

.method public getHotwordModelLocation()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 220
    const-string v1, "HotwordInformation"

    const-string v2, "#getHotwordModelLocation: %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModelLocation:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 223
    const-string v0, "null"

    :goto_e
    aput-object v0, v3, v4

    .line 220
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModelLocation:Ljava/lang/String;

    return-object v0

    .line 223
    :cond_16
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModelLocation:Ljava/lang/String;

    goto :goto_e
.end method

.method public getHotwordRmsBoundaries()[F
    .registers 6

    .prologue
    .line 253
    const-string v0, "HotwordInformation"

    const-string v1, "#getHotwordRmsBoundaries: %f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordRmsBoundaries:[F

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordRmsBoundaries:[F

    return-object v0
.end method

.method public getSpeakerIdModel()Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 281
    const-string v1, "HotwordInformation"

    const-string v2, "#getSpeakerIdModel: %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mSpeakerIdModel:Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    if-nez v0, :cond_16

    const-string v0, "null"

    :goto_e
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mSpeakerIdModel:Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    return-object v0

    .line 281
    :cond_16
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mSpeakerIdModel:Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    goto :goto_e
.end method

.method public getVerificationThreshold()[F
    .registers 6

    .prologue
    .line 243
    const-string v0, "HotwordInformation"

    const-string v1, "#getAdaptationThreshold: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVerificationThreshold:[F

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVerificationThreshold:[F

    return-object v0
.end method

.method public getVoiceLocale()Ljava/lang/String;
    .registers 6

    .prologue
    .line 288
    const-string v0, "HotwordInformation"

    const-string v1, "#getVoiceLocale: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVoiceLocale:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVoiceLocale:Ljava/lang/String;

    return-object v0
.end method

.method public isAlwaysOnAvailable()Z
    .registers 6

    .prologue
    .line 169
    const-string v0, "HotwordInformation"

    const-string v1, "#isAlwaysOnAvailable: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnAvailable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnAvailable:Z

    return v0
.end method

.method public isAlwaysOnEnabled()Z
    .registers 6

    .prologue
    .line 179
    const-string v0, "HotwordInformation"

    const-string v1, "#isAlwaysOnEnabled: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnEnabled:Z

    return v0
.end method

.method public isFromAnyScreenAvailable()Z
    .registers 6

    .prologue
    .line 199
    const-string v0, "HotwordInformation"

    const-string v1, "#isFromAnyScreenAvailable: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenAvailable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenAvailable:Z

    return v0
.end method

.method public isFromAnyScreenEnabled()Z
    .registers 6

    .prologue
    .line 209
    const-string v0, "HotwordInformation"

    const-string v1, "#isFromAnyScreenEnabled: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenEnabled:Z

    return v0
.end method

.method public isHotwordAvailable()Z
    .registers 6

    .prologue
    .line 149
    const-string v0, "HotwordInformation"

    const-string v1, "#isHotwordAvailable: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordAvailable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordAvailable:Z

    return v0
.end method

.method public isHotwordEnabled()Z
    .registers 6

    .prologue
    .line 159
    const-string v0, "HotwordInformation"

    const-string v1, "#isHotwordEnabled: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordEnabled:Z

    return v0
.end method

.method public isHotwordInInteractorDspEnabled()Z
    .registers 6

    .prologue
    .line 312
    const-string v0, "HotwordInformation"

    const-string v1, "#hotwordInInteractorDspEnabled: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorDspEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorDspEnabled:Z

    return v0
.end method

.method public isHotwordInInteractorFromAnyScreenEnabled()Z
    .registers 6

    .prologue
    .line 320
    const-string v0, "HotwordInformation"

    const-string v1, "#isHotwordInInteractorFromAnyScreen: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorFromAnyScreen:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorFromAnyScreen:Z

    return v0
.end method

.method public setAlwaysOnEnabled(Z)V
    .registers 7

    .prologue
    .line 189
    const-string v0, "HotwordInformation"

    const-string v1, "#setAlwaysOnEnabled: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iput-boolean p1, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnEnabled:Z

    .line 192
    return-void
.end method

.method public setHotwordModel([B)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModel:[B

    .line 335
    return-void
.end method

.method public setSpeakerIdModel(Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;)V
    .registers 5

    .prologue
    .line 270
    const-string v0, "HotwordInformation"

    const-string v1, "#setSpeakerIdModel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iput-object p1, p0, Lcom/google/android/hotword/service/HotwordInformation;->mSpeakerIdModel:Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    .line 273
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 22

    .prologue
    .line 357
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordAvailable:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnAvailable:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenAvailable:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenEnabled:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModelLocation:Ljava/lang/String;

    if-eqz v1, :cond_17a

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModelLocation:Ljava/lang/String;

    :goto_22
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/hotword/service/HotwordInformation;->mAdapatationThreshold:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/hotword/service/HotwordInformation;->mVerificationThreshold:[F

    .line 375
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordRmsBoundaries:[F

    .line 377
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/hotword/service/HotwordInformation;->mCleanRmsBoundaries:[F

    .line 379
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/hotword/service/HotwordInformation;->mSpeakerIdModel:Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    if-nez v2, :cond_17e

    .line 381
    const-string v2, "not available"

    :goto_52
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/hotword/service/HotwordInformation;->mVoiceLocale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModel:[B

    if-nez v3, :cond_182

    .line 385
    const-string v3, "not available"

    :goto_5e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/hotword/service/HotwordInformation;->mDumpHotwordAudioToFile:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorDspEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorFromAnyScreen:Z

    move/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x1cd

    move/from16 v19, v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v19, "HotwordInformation[ hotwordAvailable: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " hotwordEnabled: "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alwaysOnAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alwaysOnEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fromAnyScreenAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fromAnyScreenEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hotwordModelLocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " adaptationThreshold: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " verificationThreshold: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " hotwordRmsBoundaries: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " cleanRmsBoundaries: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " speakerIdModel: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " voiceLocale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hotwordModel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dumpHotwordAudioToFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hotwordInInteractorDspEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hotwordInInteractorFromAnyScreenEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    return-object v1

    .line 371
    :cond_17a
    const-string v1, "null"

    goto/16 :goto_22

    .line 381
    :cond_17e
    const-string v2, "available"

    goto/16 :goto_52

    .line 385
    :cond_182
    const-string v3, "available"

    goto/16 :goto_5e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    const-string v0, "HotwordInformation"

    const-string v3, "#writeToParcel"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/gsa/shared/util/common/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordAvailable:Z

    if-eqz v0, :cond_83

    move v0, v1

    :goto_10
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordEnabled:Z

    if-eqz v0, :cond_85

    move v0, v1

    :goto_19
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnAvailable:Z

    if-eqz v0, :cond_87

    move v0, v1

    :goto_22
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAlwaysOnEnabled:Z

    if-eqz v0, :cond_89

    move v0, v1

    :goto_2b
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenAvailable:Z

    if-eqz v0, :cond_8b

    move v0, v1

    :goto_34
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mFromAnyScreenEnabled:Z

    if-eqz v0, :cond_8d

    move v0, v1

    :goto_3d
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordModelLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mAdapatationThreshold:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 129
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVerificationThreshold:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 130
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mHotwordRmsBoundaries:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 131
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mCleanRmsBoundaries:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 132
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mSpeakerIdModel:Lcom/google/android/apps/gsa/shared/speech/speakerid/SpeakerIdModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mVoiceLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mDumpHotwordAudioToFile:Z

    if-eqz v0, :cond_8f

    move v0, v1

    :goto_6d
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 140
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorDspEnabled:Z

    if-eqz v0, :cond_91

    move v0, v1

    :goto_76
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 141
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordInformation;->mIsHotwordInInteractorFromAnyScreen:Z

    if-eqz v0, :cond_93

    :goto_7e
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    return-void

    :cond_83
    move v0, v2

    .line 121
    goto :goto_10

    :cond_85
    move v0, v2

    .line 122
    goto :goto_19

    :cond_87
    move v0, v2

    .line 123
    goto :goto_22

    :cond_89
    move v0, v2

    .line 124
    goto :goto_2b

    :cond_8b
    move v0, v2

    .line 125
    goto :goto_34

    :cond_8d
    move v0, v2

    .line 126
    goto :goto_3d

    :cond_8f
    move v0, v2

    .line 139
    goto :goto_6d

    :cond_91
    move v0, v2

    .line 140
    goto :goto_76

    :cond_93
    move v1, v2

    .line 141
    goto :goto_7e
.end method
