.class final Lcom/lge/mdm/config/LGMDMVpnProfile$1;
.super Ljava/lang/Object;
.source "LGMDMVpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMVpnProfile;
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
        "Lcom/lge/mdm/config/LGMDMVpnProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/config/LGMDMVpnProfile;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1332
    new-instance v0, Lcom/lge/mdm/config/LGMDMVpnProfile;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMVpnProfile;-><init>()V

    .line 1333
    .local v0, "p":Lcom/lge/mdm/config/LGMDMVpnProfile;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/config/LGMDMVpnProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 1335
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1331
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMVpnProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/config/LGMDMVpnProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/mdm/config/LGMDMVpnProfile;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 1339
    new-array v0, p1, [Lcom/lge/mdm/config/LGMDMVpnProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 1338
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMVpnProfile$1;->newArray(I)[Lcom/lge/mdm/config/LGMDMVpnProfile;

    move-result-object v0

    return-object v0
.end method
