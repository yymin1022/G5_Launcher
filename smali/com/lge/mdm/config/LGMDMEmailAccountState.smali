.class public Lcom/lge/mdm/config/LGMDMEmailAccountState;
.super Ljava/lang/Object;
.source "LGMDMEmailAccountState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMEmailAccountState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMEmailAccountState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public MDMAccount:I

.field public accountType:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Lcom/lge/mdm/config/LGMDMEmailAccountState$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMEmailAccountState$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMEmailAccountState;->readFromParcel(Landroid/os/Parcel;)V

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMDMAccount()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LGMDMEmailAccountState [emailAddress ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accountType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    const-string/jumbo v1, ", MDMAccount ="

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "]"

    .line 139
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
    .line 87
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/lge/mdm/config/LGMDMEmailAccountState;->MDMAccount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
