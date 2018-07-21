.class public Lcom/lge/mdm/config/LGMDMSignatureState;
.super Lcom/lge/mdm/config/LGMDMAppState;
.source "LGMDMSignatureState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMSignatureState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMSignatureState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lcom/lge/mdm/config/LGMDMSignatureState$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMSignatureState$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMSignatureState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lge/mdm/config/LGMDMAppState;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/lge/mdm/config/LGMDMAppState;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMSignatureState;->readFromParcel(Landroid/os/Parcel;)V

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    if-nez v3, :cond_c

    .line 105
    :cond_b
    return v5

    .line 104
    :cond_c
    iget-object v3, p0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-eqz v3, :cond_b

    .line 107
    instance-of v3, p1, Lcom/lge/mdm/config/LGMDMSignatureState;

    if-eqz v3, :cond_61

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/lge/mdm/config/LGMDMSignatureState;

    .line 109
    .local v0, "compareObj":Lcom/lge/mdm/config/LGMDMSignatureState;
    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    if-nez v3, :cond_23

    .line 111
    :cond_22
    return v5

    .line 110
    :cond_23
    iget-object v3, v0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-eqz v3, :cond_22

    .line 114
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 115
    return v5

    .line 118
    :cond_37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    iget-object v3, p0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v1, v3, :cond_61

    .line 119
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3e
    iget-object v3, v0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v2, v3, :cond_5e

    .line 120
    iget-object v3, p0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    .line 121
    iget-object v4, v0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 122
    const/4 v3, 0x1

    return v3

    .line 119
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 118
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 127
    .end local v0    # "compareObj":Lcom/lge/mdm/config/LGMDMSignatureState;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_61
    return v5
.end method

.method public getSignature()[Landroid/content/pm/Signature;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMSignatureState;->setPackageName(Ljava/lang/String;)V

    .line 85
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMSignatureState;->setAllowInstallation(I)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMSignatureState;->setAllowUninstallation(I)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMSignatureState;->setEnable(I)V

    .line 83
    return-void
.end method

.method public setSignature([Landroid/content/pm/Signature;)V
    .registers 2
    .param p1, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LGMDMApplicationState [pkgname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sign length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    array-length v1, v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, ", allowInstallation="

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getAllowInstallation()I

    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, ", allowUninstallation="

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getAllowUninstallation()I

    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, ", enable="

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getEnable()I

    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "]"

    .line 137
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
    .line 45
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMSignatureState;->mSignature:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 47
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getAllowInstallation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getAllowUninstallation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMSignatureState;->getEnable()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
