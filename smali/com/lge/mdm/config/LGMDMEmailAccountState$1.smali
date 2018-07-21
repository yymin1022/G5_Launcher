.class final Lcom/lge/mdm/config/LGMDMEmailAccountState$1;
.super Ljava/lang/Object;
.source "LGMDMEmailAccountState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMEmailAccountState;
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
        "Lcom/lge/mdm/config/LGMDMEmailAccountState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 100
    new-instance v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;

    invoke-direct {v0, p1}, Lcom/lge/mdm/config/LGMDMEmailAccountState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMEmailAccountState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/mdm/config/LGMDMEmailAccountState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/mdm/config/LGMDMEmailAccountState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lcom/lge/mdm/config/LGMDMEmailAccountState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMEmailAccountState$1;->newArray(I)[Lcom/lge/mdm/config/LGMDMEmailAccountState;

    move-result-object v0

    return-object v0
.end method
