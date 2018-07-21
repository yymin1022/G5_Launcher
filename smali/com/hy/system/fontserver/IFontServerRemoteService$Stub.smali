.class public abstract Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;
.super Landroid/os/Binder;
.source "IFontServerRemoteService.java"

# interfaces
.implements Lcom/hy/system/fontserver/IFontServerRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hy/system/fontserver/IFontServerRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hy.system.fontserver.IFontServerRemoteService"

.field static final TRANSACTION_getAllFallbackNames:I = 0x13

.field static final TRANSACTION_getAllFontFullPath:I = 0x9

.field static final TRANSACTION_getAllFontNames:I = 0x7

.field static final TRANSACTION_getAllFontWebFaceNames:I = 0x8

.field static final TRANSACTION_getDefaultTypefaceIndex:I = 0x3

.field static final TRANSACTION_getDownloadFontDstPath:I = 0xc

.field static final TRANSACTION_getDownloadFontSrcPath:I = 0xb

.field static final TRANSACTION_getFallbackFullPath:I = 0x12

.field static final TRANSACTION_getFallbackIndex:I = 0x11

.field static final TRANSACTION_getFallbackSummary:I = 0x10

.field static final TRANSACTION_getFontFullPath:I = 0xa

.field static final TRANSACTION_getNumAllFonts:I = 0x4

.field static final TRANSACTION_getNumEmbeddedFonts:I = 0x5

.field static final TRANSACTION_getSummary:I = 0x6

.field static final TRANSACTION_getSystemDefaultTypefaceIndex:I = 0xd

.field static final TRANSACTION_selectDefaultTypeface:I = 0x2

.field static final TRANSACTION_selectFallback:I = 0xf

.field static final TRANSACTION_setDefault:I = 0xe

.field static final TRANSACTION_updateFontServer:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p0, p0, v0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hy/system/fontserver/IFontServerRemoteService;
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
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/hy/system/fontserver/IFontServerRemoteService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_150

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->updateFontServer()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 54
    :sswitch_1b
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    invoke-virtual {p0, v1}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->selectDefaultTypeface(I)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 63
    :sswitch_2b
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getDefaultTypefaceIndex()I

    move-result v1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 71
    :sswitch_3b
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getNumAllFonts()I

    move-result v1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 79
    :sswitch_4b
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getNumEmbeddedFonts()I

    move-result v1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 87
    :sswitch_5b
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getSummary()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 95
    :sswitch_6b
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getAllFontNames()[Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_8

    .line 103
    :sswitch_7b
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getAllFontWebFaceNames()[Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_8

    .line 111
    :sswitch_8c
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getAllFontFullPath()[Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_8

    .line 119
    :sswitch_9d
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    invoke-virtual {p0, v1}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getFontFullPath(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 129
    :sswitch_b2
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getDownloadFontSrcPath()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 137
    :sswitch_c3
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getDownloadFontDstPath()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 145
    :sswitch_d4
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getSystemDefaultTypefaceIndex()I

    move-result v1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 153
    :sswitch_e5
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->setDefault()I

    move-result v1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 161
    :sswitch_f6
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    invoke-virtual {p0, v1}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->selectFallback(I)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 170
    :sswitch_107
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getFallbackSummary()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 178
    :sswitch_118
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getFallbackIndex()I

    move-result v1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 186
    :sswitch_129
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    invoke-virtual {p0, v1}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getFallbackFullPath(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 196
    :sswitch_13e
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getAllFallbackNames()[Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_8

    .line 38
    nop

    :sswitch_data_150
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_2b
        0x4 -> :sswitch_3b
        0x5 -> :sswitch_4b
        0x6 -> :sswitch_5b
        0x7 -> :sswitch_6b
        0x8 -> :sswitch_7b
        0x9 -> :sswitch_8c
        0xa -> :sswitch_9d
        0xb -> :sswitch_b2
        0xc -> :sswitch_c3
        0xd -> :sswitch_d4
        0xe -> :sswitch_e5
        0xf -> :sswitch_f6
        0x10 -> :sswitch_107
        0x11 -> :sswitch_118
        0x12 -> :sswitch_129
        0x13 -> :sswitch_13e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
