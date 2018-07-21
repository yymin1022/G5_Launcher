.class public Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;
.super Ljava/lang/Object;
.source "LGMDMadministrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/admin/LGMDMadministrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePolicyData"
.end annotation


# instance fields
.field private cameraPid:I

.field private cameraStatus:Z

.field final mAdminLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/lge/mdm/admin/LGMDMadminlist;",
            ">;"
        }
    .end annotation
.end field

.field private mBrowserProxyIPAddress:Ljava/lang/String;

.field private mBrowserProxyPortNumber:I

.field private mEmergencyCallStatus:Z

.field mLockoutDescriptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPasswordRecoveryByEas:Z

.field private mRecentApplicationToastView:Z

.field mRunningAppComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUserHandle:I

.field mWipeDataFlag:I

.field private preAutoSync:Z

.field private wifiNeedUpdate:Z


# direct methods
.method static synthetic -get0(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)I
    .registers 2

    iget v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->cameraPid:I

    return v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->cameraStatus:Z

    return v0
.end method

.method static synthetic -get2(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mBrowserProxyIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)I
    .registers 2

    iget v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mBrowserProxyPortNumber:I

    return v0
.end method

.method static synthetic -get4(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mEmergencyCallStatus:Z

    return v0
.end method

.method static synthetic -get5(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRecentApplicationToastView:Z

    return v0
.end method

.method static synthetic -get6(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->preAutoSync:Z

    return v0
.end method

.method static synthetic -get7(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->wifiNeedUpdate:Z

    return v0
.end method

.method static synthetic -set0(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)I
    .registers 2

    iput p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->cameraPid:I

    return p1
.end method

.method static synthetic -set1(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->cameraStatus:Z

    return p1
.end method

.method static synthetic -set2(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mBrowserProxyIPAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;I)I
    .registers 2

    iput p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mBrowserProxyPortNumber:I

    return p1
.end method

.method static synthetic -set4(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mEmergencyCallStatus:Z

    return p1
.end method

.method static synthetic -set5(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRecentApplicationToastView:Z

    return p1
.end method

.method static synthetic -set6(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->preAutoSync:Z

    return p1
.end method

.method static synthetic -set7(Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->wifiNeedUpdate:Z

    return p1
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mPasswordRecoveryByEas:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mLockoutDescriptList:Ljava/util/ArrayList;

    .line 100
    iput v2, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mWipeDataFlag:I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mBrowserProxyIPAddress:Ljava/lang/String;

    .line 103
    iput v2, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mBrowserProxyPortNumber:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRunningAppComponentList:Ljava/util/ArrayList;

    .line 108
    iput-boolean v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->preAutoSync:Z

    .line 112
    iput-boolean v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->wifiNeedUpdate:Z

    .line 113
    iput-boolean v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->cameraStatus:Z

    .line 114
    iput v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->cameraPid:I

    .line 119
    iput-boolean v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mRecentApplicationToastView:Z

    .line 122
    iput-boolean v1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mEmergencyCallStatus:Z

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminLists:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mAdminMaps:Ljava/util/HashMap;

    .line 128
    iput p1, p0, Lcom/lge/mdm/admin/LGMDMadministrator$DevicePolicyData;->mUserHandle:I

    .line 127
    return-void
.end method
