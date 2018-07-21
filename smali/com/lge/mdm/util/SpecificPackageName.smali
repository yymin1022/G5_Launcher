.class public Lcom/lge/mdm/util/SpecificPackageName;
.super Ljava/lang/Object;
.source "SpecificPackageName.java"


# static fields
.field public static final ALLOWED_INSTALLER:[Ljava/lang/String;

.field public static final DLNA_MEDIA_SERVER_PACKAGE_NAME:Ljava/lang/String; = "com.lge.smartshare"

.field public static final DLNA_PACKAGE_NAME:Ljava/lang/String; = "com.lge.smartshare.dlna"

.field public static final GOOGLEMAP_PACKAGENAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final MESSAGEPACKAGENAME:Ljava/lang/String; = "com.btb.ums/com.android.mms/com.lge.message"

.field public static final SPECIFICPACKAGENAMES:[Ljava/lang/String;

.field public static final SPRINT_EXTENSION_PKG_NAME:Ljava/lang/String; = "com.sprint.extension"

.field public static final SPRINT_EXTENTION_CLASS_NAME:Ljava/lang/String; = "com.sprint.extension.admin.SprintExtensionDeviceAdminReceiver"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 11
    const-string/jumbo v1, "com.android.vending"

    aput-object v1, v0, v3

    .line 12
    const-string/jumbo v1, "com.google.android.youtube"

    aput-object v1, v0, v4

    .line 13
    const-string/jumbo v1, "com.android.voicedialer"

    aput-object v1, v0, v5

    .line 14
    const-string/jumbo v1, "com.android.settings|com.lge.settings.easy|com.lge.networksettings|com.android.settingsaccessibility|com.lge.mobilehotspot.ui|com.lge.smartsharepush|com.lge.bluetoothsetting|com.lge.wifisettings|com.lge.lockscreensettings|com.lge.NfcSettings"

    aput-object v1, v0, v6

    .line 18
    const-string/jumbo v1, "com.lge.lmk"

    aput-object v1, v0, v7

    .line 19
    const-string/jumbo v1, "com.lge.bnr"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 20
    const-string/jumbo v1, "com.lge.qvoiceplus|com.lge.voicecommand|com.nuance.voicemate"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 10
    sput-object v0, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    .line 30
    new-array v0, v7, [Ljava/lang/String;

    .line 31
    const-string/jumbo v1, "com.android.vending"

    aput-object v1, v0, v3

    .line 32
    const-string/jumbo v1, "com.google.android.feedback"

    aput-object v1, v0, v4

    .line 33
    const-string/jumbo v1, "com.lge.lginstallservies"

    aput-object v1, v0, v5

    .line 34
    const-string/jumbo v1, "com.lge.lgmdmservice"

    aput-object v1, v0, v6

    .line 30
    sput-object v0, Lcom/lge/mdm/util/SpecificPackageName;->ALLOWED_INSTALLER:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowedInstaller(Ljava/lang/String;)Z
    .registers 7
    .param p0, "installerName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p0, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    sget-object v3, Lcom/lge/mdm/util/SpecificPackageName;->ALLOWED_INSTALLER:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_8
    if-ge v1, v4, :cond_17

    aget-object v0, v3, v1

    .line 47
    .local v0, "allowedPackage":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 48
    const/4 v1, 0x1

    return v1

    .line 46
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 51
    .end local v0    # "allowedPackage":Ljava/lang/String;
    :cond_17
    return v2
.end method

.method public static isMatchSpecificApplication(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "specificPackageData"    # Ljava/lang/String;
    .param p1, "toRunPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "isMatch":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 58
    :cond_e
    return v0

    .line 60
    :cond_f
    const-string/jumbo v4, "\\|"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "specificPackageDataArray":[Ljava/lang/String;
    if-eqz v1, :cond_1b

    array-length v4, v1

    if-nez v4, :cond_1c

    .line 62
    :cond_1b
    return v0

    .line 64
    :cond_1c
    array-length v4, v1

    :goto_1d
    if-ge v3, v4, :cond_2c

    aget-object v2, v1, v3

    .line 65
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 66
    const/4 v0, 0x1

    .line 67
    return v0

    .line 64
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 70
    .end local v2    # "str":Ljava/lang/String;
    :cond_2c
    return v0
.end method

.method public static isMessageApp(Ljava/lang/String;)I
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 74
    const-string/jumbo v2, "com.btb.ums/com.android.mms/com.lge.message"

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "messagePackages":[Ljava/lang/String;
    array-length v4, v0

    move v2, v3

    :goto_d
    if-ge v2, v4, :cond_1d

    aget-object v1, v0, v2

    .line 76
    .local v1, "mmsPackages":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 77
    const/16 v2, -0x66

    return v2

    .line 75
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 80
    .end local v1    # "mmsPackages":Ljava/lang/String;
    :cond_1d
    return v3
.end method
