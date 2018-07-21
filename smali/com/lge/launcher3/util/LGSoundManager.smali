.class public Lcom/lge/launcher3/util/LGSoundManager;
.super Ljava/lang/Object;
.source "LGSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/util/LGSoundManager$SoundType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$util$LGSoundManager$SoundType:[I = null

.field private static final MAX_SIMULTANIOUS_STREAM_NUM:I = 0x5

.field private static final STREAM_TYPE:I = 0x1

.field private static final SYSTEM_AUDIO_PATH:Ljava/lang/String; = "/system/media/audio/ui/"

.field private static final TAG:Ljava/lang/String; = "Util.LGSoundManager"

.field private static sInstance:Lcom/lge/launcher3/util/LGSoundManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/launcher3/util/LGSoundManager$SoundType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$util$LGSoundManager$SoundType()[I
    .registers 3

    .prologue
    .line 31
    sget-object v0, Lcom/lge/launcher3/util/LGSoundManager;->$SWITCH_TABLE$com$lge$launcher3$util$LGSoundManager$SoundType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/util/LGSoundManager$SoundType;->values()[Lcom/lge/launcher3/util/LGSoundManager$SoundType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/util/LGSoundManager$SoundType;->SOUND_INDEX_REMOVE:Lcom/lge/launcher3/util/LGSoundManager$SoundType;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGSoundManager$SoundType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/util/LGSoundManager$SoundType;->SOUND_INDEX_UNINSTALL:Lcom/lge/launcher3/util/LGSoundManager$SoundType;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGSoundManager$SoundType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/util/LGSoundManager;->$SWITCH_TABLE$com$lge$launcher3$util$LGSoundManager$SoundType:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/LGSoundManager;->sInstance:Lcom/lge/launcher3/util/LGSoundManager;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    iput-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 45
    iput-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    .line 55
    iput-object p1, p0, Lcom/lge/launcher3/util/LGSoundManager;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 57
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 58
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/lge/launcher3/util/LGSoundManager$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/util/LGSoundManager$1;-><init>(Lcom/lge/launcher3/util/LGSoundManager;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/util/LGSoundManager;I)V
    .registers 2

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/lge/launcher3/util/LGSoundManager;->play(I)V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGSoundManager;
    .registers 2

    .prologue
    .line 78
    sget-object v0, Lcom/lge/launcher3/util/LGSoundManager;->sInstance:Lcom/lge/launcher3/util/LGSoundManager;

    if-nez v0, :cond_b

    .line 79
    new-instance v0, Lcom/lge/launcher3/util/LGSoundManager;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/util/LGSoundManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/util/LGSoundManager;->sInstance:Lcom/lge/launcher3/util/LGSoundManager;

    .line 81
    :cond_b
    sget-object v0, Lcom/lge/launcher3/util/LGSoundManager;->sInstance:Lcom/lge/launcher3/util/LGSoundManager;

    return-object v0
.end method

.method private play(I)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 133
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    .line 134
    int-to-float v0, v7

    int-to-float v1, v8

    div-float v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 138
    const-string v0, "Util.LGSoundManager"

    const-string v1, "Play a sound %d with %d(%d) volume"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public add(Lcom/lge/launcher3/util/LGSoundManager$SoundType;I)I
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 91
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    if-eqz v0, :cond_43

    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    :goto_18
    return v0

    .line 96
    :cond_19
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/lge/launcher3/util/LGSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 97
    if-eqz v0, :cond_43

    .line 98
    iget-object v2, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "Util.LGSoundManager"

    const-string v3, "Load a res sound %s(%d) from resources"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_43
    move v0, v1

    .line 103
    goto :goto_18
.end method

.method public add(Lcom/lge/launcher3/util/LGSoundManager$SoundType;Ljava/lang/String;)I
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 113
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    if-eqz v0, :cond_41

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    :goto_18
    return v0

    .line 118
    :cond_19
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p2, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 119
    if-eqz v0, :cond_41

    .line 120
    iget-object v2, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, "Util.LGSoundManager"

    const-string v3, "Load a sound %s(%d) frome system media path"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_41
    move v0, v1

    .line 125
    goto :goto_18
.end method

.method public loadSoundResource(Lcom/lge/launcher3/util/LGSoundManager$SoundType;)Z
    .registers 4

    .prologue
    .line 164
    invoke-static {}, Lcom/lge/launcher3/util/LGSoundManager;->$SWITCH_TABLE$com$lge$launcher3$util$LGSoundManager$SoundType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/launcher3/util/LGSoundManager$SoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_e
    return v0

    .line 166
    :pswitch_f
    const-string v0, "/system/media/audio/ui/Homescreen_Uninstall.ogg"

    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/util/LGSoundManager;->add(Lcom/lge/launcher3/util/LGSoundManager$SoundType;Ljava/lang/String;)I

    move-result v0

    .line 167
    if-nez v0, :cond_1d

    .line 168
    const v0, 0x7f080001

    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/util/LGSoundManager;->add(Lcom/lge/launcher3/util/LGSoundManager$SoundType;I)I

    .line 182
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    goto :goto_e

    .line 173
    :pswitch_1f
    const-string v0, "/system/media/audio/ui/Homescreen_Remove.ogg"

    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/util/LGSoundManager;->add(Lcom/lge/launcher3/util/LGSoundManager$SoundType;Ljava/lang/String;)I

    move-result v0

    .line 174
    if-nez v0, :cond_1d

    .line 175
    const/high16 v0, 0x7f080000

    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/util/LGSoundManager;->add(Lcom/lge/launcher3/util/LGSoundManager$SoundType;I)I

    goto :goto_1d

    .line 164
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1f
    .end packed-switch
.end method

.method public pause(Lcom/lge/launcher3/util/LGSoundManager$SoundType;)V
    .registers 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 202
    if-nez v0, :cond_b

    .line 207
    :goto_a
    return-void

    .line 206
    :cond_b
    iget-object v1, p0, Lcom/lge/launcher3/util/LGSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_a
.end method

.method public play(Lcom/lge/launcher3/util/LGSoundManager$SoundType;)V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 146
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/util/LGSoundManager;->loadSoundResource(Lcom/lge/launcher3/util/LGSoundManager$SoundType;)Z

    .line 156
    :cond_b
    :goto_b
    return-void

    .line 150
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 151
    if-eqz v0, :cond_b

    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/util/LGSoundManager;->play(I)V

    goto :goto_b
.end method

.method public stop(Lcom/lge/launcher3/util/LGSoundManager$SoundType;)V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 190
    if-nez v0, :cond_b

    .line 195
    :goto_a
    return-void

    .line 194
    :cond_b
    iget-object v1, p0, Lcom/lge/launcher3/util/LGSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_a
.end method
