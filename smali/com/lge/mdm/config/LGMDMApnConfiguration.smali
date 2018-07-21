.class public Lcom/lge/mdm/config/LGMDMApnConfiguration;
.super Ljava/lang/Object;
.source "LGMDMApnConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;,
        Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;,
        Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;,
        Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;,
        Lcom/lge/mdm/config/LGMDMApnConfiguration$1;
    }
.end annotation


# static fields
.field public static final APN_INDEX:I = 0x2

.field public static final AUTH_TYPE_INDEX:I = 0xe

.field public static final BEARER_INDEX:I = 0x12

.field public static final CARRIER_ENABLED_INDEX:I = 0x11

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMApnConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID_INDEX:I = 0x0

.field public static final MCC_INDEX:I = 0x9

.field public static final MMSC_INDEX:I = 0x8

.field public static final MMSPORT_INDEX:I = 0xd

.field public static final MMSPROXY_INDEX:I = 0xc

.field public static final MNC_INDEX:I = 0xa

.field public static final NAME_INDEX:I = 0x1

.field public static final NUMERIC_INDEX:I = 0xb

.field public static final PASSWORD_INDEX:I = 0x7

.field public static final PORT_INDEX:I = 0x4

.field public static final PROTOCOL_INDEX:I = 0x10

.field public static final PROXY_INDEX:I = 0x3

.field public static final ROAMING_PROTOCOL_INDEX:I = 0x13

.field public static final SERVER_INDEX:I = 0x6

.field public static final TYPE_INDEX:I = 0xf

.field public static final USER_INDEX:I = 0x5


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

.field public bearer:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

.field public carrierEnabled:Ljava/lang/String;

.field public current:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public mcc:Ljava/lang/String;

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public numeric:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public protocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

.field public proxy:Ljava/lang/String;

.field public roamingProtocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

.field public server:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(I)I
    .registers 2
    .param p0, "value"    # I

    .prologue
    invoke-static {p0}, Lcom/lge/mdm/config/LGMDMApnConfiguration;->getBearerOrdinal(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 608
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->id:Ljava/lang/String;

    .line 498
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->name:Ljava/lang/String;

    .line 499
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->apn:Ljava/lang/String;

    .line 500
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->proxy:Ljava/lang/String;

    .line 501
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->port:Ljava/lang/String;

    .line 502
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsProxy:Ljava/lang/String;

    .line 503
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsPort:Ljava/lang/String;

    .line 504
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->server:Ljava/lang/String;

    .line 505
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->user:Ljava/lang/String;

    .line 506
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->password:Ljava/lang/String;

    .line 507
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsc:Ljava/lang/String;

    .line 508
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mcc:Ljava/lang/String;

    .line 509
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mnc:Ljava/lang/String;

    .line 510
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->numeric:Ljava/lang/String;

    .line 511
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->NONE:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->authType:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    .line 512
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->type:Ljava/lang/String;

    .line 513
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;->IP:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->protocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    .line 514
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->IP:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->roamingProtocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    .line 515
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->current:Ljava/lang/String;

    .line 516
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->carrierEnabled:Ljava/lang/String;

    .line 517
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->Unspecified:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->bearer:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    .line 496
    return-void
.end method

.method private static getBearerOrdinal(I)I
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 312
    const/16 v0, 0xe

    if-ne p0, v0, :cond_b

    .line 313
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->LTE:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->ordinal()I

    move-result v0

    return v0

    .line 314
    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_16

    .line 315
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->eHRPD:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->ordinal()I

    move-result v0

    return v0

    .line 317
    :cond_16
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->Unspecified:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->ordinal()I

    move-result v0

    return v0
.end method

.method private getBearerValue(I)I
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 302
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->LTE:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 303
    const/16 v0, 0xe

    return v0

    .line 304
    :cond_b
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->eHRPD:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_16

    .line 305
    const/16 v0, 0xd

    return v0

    .line 307
    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 532
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 533
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "****---- LGMDM APN Configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    const-string/jumbo v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    const-string/jumbo v1, "  NAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 537
    const-string/jumbo v1, "APN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    const-string/jumbo v1, "  PROXY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    const-string/jumbo v1, "  PORT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 541
    const-string/jumbo v1, "MMS PROXY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    const-string/jumbo v1, "  MMS PORT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 544
    const-string/jumbo v1, "SERVER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    const-string/jumbo v1, "  USER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    const-string/jumbo v1, "  PASSWORD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 548
    const-string/jumbo v1, "MMSC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    const-string/jumbo v1, "  MCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    const-string/jumbo v1, "  MNC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const-string/jumbo v1, "  NUMERIC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->numeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 553
    const-string/jumbo v1, "AUTHTYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->authType:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 554
    const-string/jumbo v1, "  TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 556
    const-string/jumbo v1, "PROTOCOL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->protocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 557
    const-string/jumbo v1, "  ROAMING PROTOCOL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->roamingProtocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 558
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 559
    const-string/jumbo v1, "CURRENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->current:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const-string/jumbo v1, "  CARRIER ENABLED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->carrierEnabled:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 562
    const-string/jumbo v1, "BEARER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->bearer:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 564
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 568
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 569
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->proxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->port:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->numeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->authType:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->protocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->roamingProtocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->current:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->carrierEnabled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->bearer:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration;->getBearerValue(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    return-void
.end method
