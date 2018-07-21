.class public Lcom/google/android/hotword/service/HotwordSettings;
.super Ljava/lang/Object;
.source "HotwordSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/hotword/service/HotwordSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlwaysOnAvailable:Z

.field private final mAlwaysOnEnabled:Z

.field private final mFromAnyScreenAvailable:Z

.field private final mFromAnyScreenEnabled:Z

.field private final mHotwordAvailable:Z

.field private final mHotwordEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/hotword/service/HotwordSettings$1;

    invoke-direct {v0}, Lcom/google/android/hotword/service/HotwordSettings$1;-><init>()V

    sput-object v0, Lcom/google/android/hotword/service/HotwordSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_3b

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mHotwordAvailable:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_3d

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mHotwordEnabled:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_3f

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mAlwaysOnAvailable:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_41

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mAlwaysOnEnabled:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_43

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mFromAnyScreenAvailable:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_45

    :goto_38
    iput-boolean v1, p0, Lcom/google/android/hotword/service/HotwordSettings;->mFromAnyScreenEnabled:Z

    .line 47
    return-void

    :cond_3b
    move v0, v2

    .line 41
    goto :goto_c

    :cond_3d
    move v0, v2

    .line 42
    goto :goto_15

    :cond_3f
    move v0, v2

    .line 43
    goto :goto_1e

    :cond_41
    move v0, v2

    .line 44
    goto :goto_27

    :cond_43
    move v0, v2

    .line 45
    goto :goto_30

    :cond_45
    move v1, v2

    .line 46
    goto :goto_38
.end method

.method public constructor <init>(ZZZZZZ)V
    .registers 7

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/google/android/hotword/service/HotwordSettings;->mHotwordAvailable:Z

    .line 33
    iput-boolean p2, p0, Lcom/google/android/hotword/service/HotwordSettings;->mHotwordEnabled:Z

    .line 34
    iput-boolean p3, p0, Lcom/google/android/hotword/service/HotwordSettings;->mAlwaysOnAvailable:Z

    .line 35
    iput-boolean p4, p0, Lcom/google/android/hotword/service/HotwordSettings;->mAlwaysOnEnabled:Z

    .line 36
    iput-boolean p5, p0, Lcom/google/android/hotword/service/HotwordSettings;->mFromAnyScreenAvailable:Z

    .line 37
    iput-boolean p6, p0, Lcom/google/android/hotword/service/HotwordSettings;->mFromAnyScreenEnabled:Z

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public isAlwaysOnAvailable()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mAlwaysOnAvailable:Z

    return v0
.end method

.method public isAlwaysOnEnabled()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mAlwaysOnEnabled:Z

    return v0
.end method

.method public isFromAnyScreenAvailable()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mFromAnyScreenAvailable:Z

    return v0
.end method

.method public isFromAnyScreenEnabled()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mFromAnyScreenEnabled:Z

    return v0
.end method

.method public isHotwordAvailable()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mHotwordAvailable:Z

    return v0
.end method

.method public isHotwordEnabled()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mHotwordEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mHotwordAvailable:Z

    if-eqz v0, :cond_38

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mHotwordEnabled:Z

    if-eqz v0, :cond_3a

    move v0, v1

    :goto_10
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mAlwaysOnAvailable:Z

    if-eqz v0, :cond_3c

    move v0, v1

    :goto_19
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mAlwaysOnEnabled:Z

    if-eqz v0, :cond_3e

    move v0, v1

    :goto_22
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mFromAnyScreenAvailable:Z

    if-eqz v0, :cond_40

    move v0, v1

    :goto_2b
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-boolean v0, p0, Lcom/google/android/hotword/service/HotwordSettings;->mFromAnyScreenEnabled:Z

    if-eqz v0, :cond_42

    :goto_33
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    return-void

    :cond_38
    move v0, v2

    .line 56
    goto :goto_7

    :cond_3a
    move v0, v2

    .line 57
    goto :goto_10

    :cond_3c
    move v0, v2

    .line 58
    goto :goto_19

    :cond_3e
    move v0, v2

    .line 59
    goto :goto_22

    :cond_40
    move v0, v2

    .line 60
    goto :goto_2b

    :cond_42
    move v1, v2

    .line 61
    goto :goto_33
.end method
