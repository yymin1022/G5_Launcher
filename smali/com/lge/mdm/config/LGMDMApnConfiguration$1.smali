.class final Lcom/lge/mdm/config/LGMDMApnConfiguration$1;
.super Ljava/lang/Object;
.source "LGMDMApnConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMApnConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/mdm/config/LGMDMApnConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/config/LGMDMApnConfiguration;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 610
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMApnConfiguration;-><init>()V

    .line 611
    .local v0, "config":Lcom/lge/mdm/config/LGMDMApnConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->id:Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->name:Ljava/lang/String;

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->apn:Ljava/lang/String;

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->proxy:Ljava/lang/String;

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->port:Ljava/lang/String;

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsProxy:Ljava/lang/String;

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsPort:Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->server:Ljava/lang/String;

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->user:Ljava/lang/String;

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->password:Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mmsc:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mcc:Ljava/lang/String;

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->mnc:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->numeric:Ljava/lang/String;

    .line 625
    invoke-static {}, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->values()[Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->authType:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->type:Ljava/lang/String;

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;->valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->protocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$ApnProtocol;

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;->valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->roamingProtocol:Lcom/lge/mdm/config/LGMDMApnConfiguration$RoamingProtocol;

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->current:Ljava/lang/String;

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->carrierEnabled:Ljava/lang/String;

    .line 631
    invoke-static {}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->values()[Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/lge/mdm/config/LGMDMApnConfiguration;->-wrap0(I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/lge/mdm/config/LGMDMApnConfiguration;->bearer:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    .line 636
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 609
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMApnConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/config/LGMDMApnConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/mdm/config/LGMDMApnConfiguration;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 640
    new-array v0, p1, [Lcom/lge/mdm/config/LGMDMApnConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMApnConfiguration$1;->newArray(I)[Lcom/lge/mdm/config/LGMDMApnConfiguration;

    move-result-object v0

    return-object v0
.end method
