.class public Lcom/lge/mdm/config/LGMDMAppVersionState;
.super Lcom/lge/mdm/config/LGMDMAppState;
.source "LGMDMAppVersionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMAppVersionState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMAppVersionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcom/lge/mdm/config/LGMDMAppVersionState$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMAppVersionState$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMAppVersionState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lge/mdm/config/LGMDMAppState;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/lge/mdm/config/LGMDMAppState;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMAppVersionState;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
    return-void
.end method

.method private isMatchedVersionName(Ljava/lang/String;)Z
    .registers 13
    .param p1, "requestVersion"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2a

    const/4 v9, 0x0

    .line 142
    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_11

    .line 144
    :cond_f
    const/4 v7, 0x1

    return v7

    .line 142
    :cond_11
    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    const-string/jumbo v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 147
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 148
    .local v5, "prefix":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_52

    .line 149
    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    iget-object v8, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 155
    :goto_35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v6, "regEx":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5d

    .line 157
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 158
    .local v1, "c":C
    const/16 v7, 0x2e

    if-ne v1, v7, :cond_59

    .line 159
    const-string/jumbo v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 151
    .end local v1    # "c":C
    .end local v2    # "i":I
    .end local v6    # "regEx":Ljava/lang/StringBuilder;
    :cond_52
    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_35

    .line 161
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    .restart local v6    # "regEx":Ljava/lang/StringBuilder;
    :cond_59
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 168
    .end local v1    # "c":C
    :cond_5d
    iget-object v7, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_6b

    .line 169
    const-string/jumbo v7, "[0-9a-zA-Z\\.]*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 173
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 174
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 176
    .local v0, "b":Z
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 115
    instance-of v3, p1, Lcom/lge/mdm/config/LGMDMAppVersionState;

    if-eqz v3, :cond_21

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/lge/mdm/config/LGMDMAppVersionState;

    .line 117
    .local v0, "compareObj":Lcom/lge/mdm/config/LGMDMAppVersionState;
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 118
    iget-object v2, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 117
    :cond_20
    return v2

    .line 119
    .end local v0    # "compareObj":Lcom/lge/mdm/config/LGMDMAppVersionState;
    :cond_21
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_2d

    move-object v1, p1

    .line 120
    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, "requestVersion":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lge/mdm/config/LGMDMAppVersionState;->isMatchedVersionName(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 123
    .end local v1    # "requestVersion":Ljava/lang/String;
    :cond_2d
    return v2
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->setPackageName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->setAllowInstallation(I)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->setAllowUninstallation(I)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->setEnable(I)V

    .line 92
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LGMDMAppVersionState [packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "versionName="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, ", allowInstallation="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getAllowInstallation()I

    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string/jumbo v1, ", allowUninstallation="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getAllowUninstallation()I

    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string/jumbo v1, ", enable="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getEnable()I

    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "]"

    .line 135
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
    .line 49
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMAppVersionState;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getAllowInstallation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getAllowUninstallation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getEnable()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
