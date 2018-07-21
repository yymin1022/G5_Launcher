.class public Lcom/lge/mdm/config/LGMDMApplicationState;
.super Lcom/lge/mdm/config/LGMDMAppState;
.source "LGMDMApplicationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMApplicationState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/lge/mdm/config/LGMDMApplicationState$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMApplicationState$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMApplicationState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/mdm/config/LGMDMAppState;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lge/mdm/config/LGMDMAppState;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMApplicationState;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 80
    instance-of v1, p1, Lcom/lge/mdm/config/LGMDMApplicationState;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/lge/mdm/config/LGMDMApplicationState;

    .line 82
    .local v0, "compareObj":Lcom/lge/mdm/config/LGMDMApplicationState;
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 84
    .end local v0    # "compareObj":Lcom/lge/mdm/config/LGMDMApplicationState;
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMApplicationState;->setPackageName(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMApplicationState;->setAllowInstallation(I)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMApplicationState;->setAllowUninstallation(I)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMApplicationState;->setEnable(I)V

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LGMDMApplicationState [packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", allowInstallation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getAllowInstallation()I

    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, ", allowUninstallation="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getAllowUninstallation()I

    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, ", enable="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getEnable()I

    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "]"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getAllowInstallation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getAllowUninstallation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getEnable()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    return-void
.end method
