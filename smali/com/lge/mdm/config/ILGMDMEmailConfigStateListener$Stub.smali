.class public abstract Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;
.super Landroid/os/Binder;
.source "ILGMDMEmailConfigStateListener.java"

# interfaces
.implements Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

.field static final TRANSACTION_onAddEXCHANGEConfig:I = 0x5

.field static final TRANSACTION_onAddEmailCertConfig:I = 0x9

.field static final TRANSACTION_onAddPOPIMAPConfig:I = 0x1

.field static final TRANSACTION_onDeleteEXCHANGEConfig:I = 0x7

.field static final TRANSACTION_onDeleteEXCHANGEConfigInternal:I = 0x8

.field static final TRANSACTION_onDeleteEmailCertConfig:I = 0xa

.field static final TRANSACTION_onDeletePOPIMAPConfig:I = 0x3

.field static final TRANSACTION_onDeletePOPIMAPConfigInternal:I = 0x4

.field static final TRANSACTION_onModifyEXCHANGEConfig:I = 0x6

.field static final TRANSACTION_onModifyPOPIMAPConfig:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_4

    .line 24
    return-object v1

    .line 26
    :cond_4
    const-string/jumbo v1, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_10e

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 42
    :sswitch_9
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v5

    .line 47
    :sswitch_10
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 50
    sget-object v4, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .line 55
    :goto_24
    invoke-virtual {p0, v2}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onAddPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v5

    .line 53
    :cond_2b
    const/4 v2, 0x0

    .local v2, "_arg0":Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    goto :goto_24

    .line 61
    .end local v2    # "_arg0":Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    :sswitch_2d
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    .line 64
    sget-object v4, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .line 69
    :goto_41
    invoke-virtual {p0, v2}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onModifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v5

    .line 67
    :cond_48
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    goto :goto_41

    .line 75
    .end local v2    # "_arg0":Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    :sswitch_4a
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onDeletePOPIMAPConfig(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v5

    .line 84
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_5b
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_76

    .line 87
    sget-object v4, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .line 92
    :goto_6f
    invoke-virtual {p0, v2}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onDeletePOPIMAPConfigInternal(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v5

    .line 90
    :cond_76
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    goto :goto_6f

    .line 98
    .end local v2    # "_arg0":Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
    :sswitch_78
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_93

    .line 101
    sget-object v4, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .line 106
    :goto_8c
    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onAddEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v5

    .line 104
    :cond_93
    const/4 v0, 0x0

    .local v0, "_arg0":Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    goto :goto_8c

    .line 112
    .end local v0    # "_arg0":Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    :sswitch_95
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b0

    .line 115
    sget-object v4, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .line 120
    :goto_a9
    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onModifyEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v5

    .line 118
    :cond_b0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    goto :goto_a9

    .line 126
    .end local v0    # "_arg0":Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    :sswitch_b2
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onDeleteEXCHANGEConfig(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    return v5

    .line 135
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_c3
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_de

    .line 138
    sget-object v4, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .line 143
    :goto_d7
    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onDeleteEXCHANGEConfigInternal(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    return v5

    .line 141
    :cond_de
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    goto :goto_d7

    .line 149
    .end local v0    # "_arg0":Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
    :sswitch_e0
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fb

    .line 152
    sget-object v4, Lcom/lge/mdm/config/LGMDMEmailCertConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    .line 157
    :goto_f4
    invoke-virtual {p0, v1}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onAddEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    return v5

    .line 155
    :cond_fb
    const/4 v1, 0x0

    .local v1, "_arg0":Lcom/lge/mdm/config/LGMDMEmailCertConfig;
    goto :goto_f4

    .line 163
    .end local v1    # "_arg0":Lcom/lge/mdm/config/LGMDMEmailCertConfig;
    :sswitch_fd
    const-string/jumbo v4, "com.lge.mdm.config.ILGMDMEmailConfigStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;->onDeleteEmailCertConfig(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v5

    .line 38
    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_78
        0x6 -> :sswitch_95
        0x7 -> :sswitch_b2
        0x8 -> :sswitch_c3
        0x9 -> :sswitch_e0
        0xa -> :sswitch_fd
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
