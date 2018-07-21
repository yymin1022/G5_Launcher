.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.super Landroid/os/Binder;
.source "ILauncherOverlayCallback.java"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

.field static final TRANSACTION_overlayScrollChanged:I = 0x1

.field static final TRANSACTION_overlayStatusChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;
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
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_2a

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v1, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v1, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayScrollChanged(F)V

    goto :goto_8

    .line 55
    :sswitch_1c
    const-string v1, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayStatusChanged(I)V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
