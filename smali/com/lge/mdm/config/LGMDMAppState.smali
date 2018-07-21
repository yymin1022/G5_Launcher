.class public abstract Lcom/lge/mdm/config/LGMDMAppState;
.super Ljava/lang/Object;
.source "LGMDMAppState.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DISABLED:I = 0x2

.field public static final ENABLED:I = 0x1

.field public static final HIDED:I = 0x3


# instance fields
.field private mAllowInstallation:I

.field private mAllowUninstallation:I

.field private mEnable:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowInstallation()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/lge/mdm/config/LGMDMAppState;->mAllowInstallation:I

    return v0
.end method

.method public getAllowUninstallation()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/lge/mdm/config/LGMDMAppState;->mAllowUninstallation:I

    return v0
.end method

.method public getEnable()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/lge/mdm/config/LGMDMAppState;->mEnable:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/mdm/config/LGMDMAppState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract readFromParcel(Landroid/os/Parcel;)V
.end method

.method public setAllowInstallation(I)V
    .registers 2
    .param p1, "allowInstallation"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/lge/mdm/config/LGMDMAppState;->mAllowInstallation:I

    .line 90
    return-void
.end method

.method public setAllowUninstallation(I)V
    .registers 2
    .param p1, "allowUninstallation"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/lge/mdm/config/LGMDMAppState;->mAllowUninstallation:I

    .line 116
    return-void
.end method

.method public setEnable(I)V
    .registers 2
    .param p1, "enable"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/lge/mdm/config/LGMDMAppState;->mEnable:I

    .line 143
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/mdm/config/LGMDMAppState;->mPackageName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method
