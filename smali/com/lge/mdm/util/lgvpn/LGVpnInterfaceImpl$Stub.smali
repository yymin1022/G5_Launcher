.class public abstract Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;
.super Landroid/os/Binder;
.source "LGVpnInterfaceImpl.java"

# interfaces
.implements Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ipsec.vpndmservice.IVpnDmService"

.field static final TRANSACTION_addProfile:I = 0x1

.field static final TRANSACTION_connectByProfile:I = 0x6

.field static final TRANSACTION_disconnectByProfile:I = 0x7

.field static final TRANSACTION_getAvailableCertificateList:I = 0xc

.field static final TRANSACTION_getCurrentConnectionProfileName:I = 0xb

.field static final TRANSACTION_getInstalledCertificateList:I = 0xd

.field static final TRANSACTION_getProfileByName:I = 0x4

.field static final TRANSACTION_getProfileList:I = 0x5

.field static final TRANSACTION_installCertificate:I = 0x8

.field static final TRANSACTION_removeProfile:I = 0x3

.field static final TRANSACTION_uninstallCertificate:I = 0x9

.field static final TRANSACTION_updateCertificate:I = 0xa

.field static final TRANSACTION_updateProfile:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 13
    const-string/jumbo v0, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_4

    .line 23
    return-object v1

    .line 25
    :cond_4
    const-string/jumbo v1, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 26
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    if-eqz v1, :cond_14

    .line 27
    check-cast v0, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 29
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    .line 41
    sparse-switch p1, :sswitch_data_14e

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 43
    :sswitch_8
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v9, 0x1

    return v9

    .line 47
    :sswitch_10
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_30

    .line 50
    sget-object v9, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .line 54
    :goto_24
    invoke-virtual {p0, v0}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->addProfile(Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v4

    .line 55
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v9, 0x1

    return v9

    .line 52
    .end local v4    # "_result":I
    :cond_30
    const/4 v0, 0x0

    .local v0, "_arg0":Lcom/lge/mdm/config/LGMDMLgVpnProfile;
    goto :goto_24

    .line 60
    .end local v0    # "_arg0":Lcom/lge/mdm/config/LGMDMLgVpnProfile;
    :sswitch_32
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_52

    .line 63
    sget-object v9, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    .line 67
    :goto_46
    invoke-virtual {p0, v0}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->updateProfile(Lcom/lge/mdm/config/LGMDMLgVpnProfile;)I

    move-result v4

    .line 68
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v9, 0x1

    return v9

    .line 65
    .end local v4    # "_result":I
    :cond_52
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/lge/mdm/config/LGMDMLgVpnProfile;
    goto :goto_46

    .line 73
    .end local v0    # "_arg0":Lcom/lge/mdm/config/LGMDMLgVpnProfile;
    :sswitch_54
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->removeProfile(Ljava/lang/String;)I

    move-result v4

    .line 77
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v9, 0x1

    return v9

    .line 82
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_6a
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->getProfileByName(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMLgVpnProfile;

    move-result-object v5

    .line 86
    .local v5, "_result":Lcom/lge/mdm/config/LGMDMLgVpnProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v5, :cond_87

    .line 88
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v9, 0x1

    .line 89
    invoke-virtual {v5, p3, v9}, Lcom/lge/mdm/config/LGMDMLgVpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    :goto_85
    const/4 v9, 0x1

    return v9

    .line 92
    :cond_87
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_85

    .line 97
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Lcom/lge/mdm/config/LGMDMLgVpnProfile;
    :sswitch_8c
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->getProfileList()Ljava/util/List;

    move-result-object v7

    .line 100
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMLgVpnProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 102
    const/4 v9, 0x1

    return v9

    .line 105
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/config/LGMDMLgVpnProfile;>;"
    :sswitch_9e
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->connectByProfile(Ljava/lang/String;)I

    move-result v4

    .line 109
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v9, 0x1

    return v9

    .line 114
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_b4
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->disconnectByProfile(Ljava/lang/String;)I

    move-result v4

    .line 118
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v9, 0x1

    return v9

    .line 123
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_ca
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->installCertificate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 129
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v9, 0x1

    return v9

    .line 134
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_e4
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->uninstallCertificate(Ljava/lang/String;)I

    move-result v4

    .line 138
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v9, 0x1

    return v9

    .line 143
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_fa
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->updateCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 151
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v9, 0x1

    return v9

    .line 156
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_118
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->getCurrentConnectionProfileName()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    const/4 v9, 0x1

    return v9

    .line 164
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_12a
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->getAvailableCertificateList()Ljava/util/List;

    move-result-object v8

    .line 167
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 169
    const/4 v9, 0x1

    return v9

    .line 172
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_13c
    const-string/jumbo v9, "com.ipsec.vpndmservice.IVpnDmService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/lge/mdm/util/lgvpn/LGVpnInterfaceImpl$Stub;->getInstalledCertificateList()Ljava/util/List;

    move-result-object v8

    .line 175
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 177
    const/4 v9, 0x1

    return v9

    .line 41
    :sswitch_data_14e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_32
        0x3 -> :sswitch_54
        0x4 -> :sswitch_6a
        0x5 -> :sswitch_8c
        0x6 -> :sswitch_9e
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_ca
        0x9 -> :sswitch_e4
        0xa -> :sswitch_fa
        0xb -> :sswitch_118
        0xc -> :sswitch_12a
        0xd -> :sswitch_13c
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
