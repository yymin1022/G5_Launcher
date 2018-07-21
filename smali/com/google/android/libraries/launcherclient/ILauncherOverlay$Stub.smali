.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;
.super Landroid/os/Binder;
.source "ILauncherOverlay.java"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.libraries.launcherclient.ILauncherOverlay"

.field static final TRANSACTION_closeOverlay:I = 0x6

.field static final TRANSACTION_endScroll:I = 0x3

.field static final TRANSACTION_getVoiceSearchLanguage:I = 0xb

.field static final TRANSACTION_isVoiceDetectionRunning:I = 0xc

.field static final TRANSACTION_onPause:I = 0x7

.field static final TRANSACTION_onResume:I = 0x8

.field static final TRANSACTION_onScroll:I = 0x2

.field static final TRANSACTION_openOverlay:I = 0x9

.field static final TRANSACTION_requestVoiceDetection:I = 0xa

.field static final TRANSACTION_startScroll:I = 0x1

.field static final TRANSACTION_windowAttached:I = 0x4

.field static final TRANSACTION_windowDetached:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
    .registers 3

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_c8

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    .line 42
    :sswitch_a
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->startScroll()V

    goto :goto_9

    .line 53
    :sswitch_19
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onScroll(F)V

    goto :goto_9

    .line 61
    :sswitch_26
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->endScroll()V

    goto :goto_9

    .line 67
    :sswitch_2f
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    .line 70
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 76
    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    move-result-object v2

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    goto :goto_9

    .line 73
    :cond_52
    const/4 v0, 0x0

    goto :goto_42

    .line 84
    :sswitch_54
    const-string v2, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_60

    move v0, v1

    .line 87
    :cond_60
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowDetached(Z)V

    goto :goto_9

    .line 92
    :sswitch_64
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->closeOverlay(I)V

    goto :goto_9

    .line 100
    :sswitch_71
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onPause()V

    goto :goto_9

    .line 106
    :sswitch_7a
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onResume()V

    goto :goto_9

    .line 112
    :sswitch_83
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->openOverlay(I)V

    goto/16 :goto_9

    .line 120
    :sswitch_91
    const-string v2, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9d

    move v0, v1

    .line 123
    :cond_9d
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->requestVoiceDetection(Z)V

    goto/16 :goto_9

    .line 128
    :sswitch_a2
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 136
    :sswitch_b3
    const-string v2, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->isVoiceDetectionRunning()Z

    move-result v2

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v2, :cond_c2

    move v0, v1

    :cond_c2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_19
        0x3 -> :sswitch_26
        0x4 -> :sswitch_2f
        0x5 -> :sswitch_54
        0x6 -> :sswitch_64
        0x7 -> :sswitch_71
        0x8 -> :sswitch_7a
        0x9 -> :sswitch_83
        0xa -> :sswitch_91
        0xb -> :sswitch_a2
        0xc -> :sswitch_b3
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
