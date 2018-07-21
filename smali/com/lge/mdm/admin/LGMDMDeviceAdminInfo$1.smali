.class final Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo$1;
.super Ljava/lang/Object;
.source "LGMDMDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
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
        "Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 853
    new-instance v0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    invoke-direct {v0, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 857
    new-array v0, p1, [Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 856
    invoke-virtual {p0, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo$1;->newArray(I)[Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method
