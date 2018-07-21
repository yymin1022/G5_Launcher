.class public abstract Lcom/google/android/hotword/service/IHotwordService$Stub;
.super Landroid/os/Binder;
.source "IHotwordService.java"

# interfaces
.implements Lcom/google/android/hotword/service/IHotwordService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/hotword/service/IHotwordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/hotword/service/IHotwordService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.hotword.service.IHotwordService"

.field static final TRANSACTION_getHotwordInformation:I = 0xa

.field static final TRANSACTION_getHotwordSettings:I = 0x6

.field static final TRANSACTION_getVoiceSearchLanguage:I = 0x2

.field static final TRANSACTION_isHotwordServiceRunning:I = 0x5

.field static final TRANSACTION_requestHotwordDetection:I = 0x1

.field static final TRANSACTION_requestSpeechDetection:I = 0x7

.field static final TRANSACTION_setAlwaysOnHotwordAvailablity:I = 0x3

.field static final TRANSACTION_shouldActivateAlwaysOnHotword:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/hotword/service/IHotwordService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/hotword/service/IHotwordService;
    .registers 3

    .prologue
    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    .line 45
    :goto_3
    return-object v0

    .line 41
    :cond_4
    const-string v0, "com.google.android.hotword.service.IHotwordService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/hotword/service/IHotwordService;

    if-eqz v1, :cond_13

    .line 43
    check-cast v0, Lcom/google/android/hotword/service/IHotwordService;

    goto :goto_3

    .line 45
    :cond_13
    new-instance v0, Lcom/google/android/hotword/service/IHotwordService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/hotword/service/IHotwordService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    sparse-switch p1, :sswitch_data_be

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    .line 57
    :sswitch_a
    const-string v0, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 62
    :sswitch_10
    const-string v2, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    move v0, v1

    .line 67
    :cond_20
    invoke-virtual {p0, v2, v0}, Lcom/google/android/hotword/service/IHotwordService$Stub;->requestHotwordDetection(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 73
    :sswitch_27
    const-string v2, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    move v0, v1

    .line 78
    :cond_37
    invoke-virtual {p0, v2, v0}, Lcom/google/android/hotword/service/IHotwordService$Stub;->requestSpeechDetection(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 84
    :sswitch_3e
    const-string v0, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/hotword/service/IHotwordService$Stub;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 92
    :sswitch_4e
    const-string v2, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5a

    move v0, v1

    .line 95
    :cond_5a
    invoke-virtual {p0, v0}, Lcom/google/android/hotword/service/IHotwordService$Stub;->setAlwaysOnHotwordAvailablity(Z)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 101
    :sswitch_61
    const-string v2, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/hotword/service/IHotwordService$Stub;->shouldActivateAlwaysOnHotword()Z

    move-result v2

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v2, :cond_70

    move v0, v1

    :cond_70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 109
    :sswitch_74
    const-string v2, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/hotword/service/IHotwordService$Stub;->isHotwordServiceRunning()Z

    move-result v2

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v2, :cond_83

    move v0, v1

    :cond_83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 117
    :sswitch_87
    const-string v2, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/hotword/service/IHotwordService$Stub;->getHotwordSettings()Lcom/google/android/hotword/service/HotwordSettings;

    move-result-object v2

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v2, :cond_9d

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v2, p3, v1}, Lcom/google/android/hotword/service/HotwordSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 125
    :cond_9d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 131
    :sswitch_a2
    const-string v2, "com.google.android.hotword.service.IHotwordService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/hotword/service/IHotwordService$Stub;->getHotwordInformation()Lcom/google/android/hotword/service/HotwordInformation;

    move-result-object v2

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v2, :cond_b8

    .line 135
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v2, p3, v1}, Lcom/google/android/hotword/service/HotwordInformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 139
    :cond_b8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 53
    nop

    :sswitch_data_be
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_61
        0x5 -> :sswitch_74
        0x6 -> :sswitch_87
        0x7 -> :sswitch_27
        0xa -> :sswitch_a2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
