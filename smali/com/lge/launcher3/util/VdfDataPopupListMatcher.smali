.class public Lcom/lge/launcher3/util/VdfDataPopupListMatcher;
.super Ljava/lang/Object;
.source "VdfDataPopupListMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FeatureMatcher"

.field private static sDataPopupPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->sDataPopupPackageList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTLFList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string v0, "TLF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "EU"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "ES"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "COM"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 54
    :cond_21
    sget-object v0, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->sDataPopupPackageList:Ljava/util/List;

    if-nez v0, :cond_46

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->sDataPopupPackageList:Ljava/util/List;

    .line 56
    invoke-static {p0}, Lcom/lge/launcher3/util/LGHomeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGHomeResources;

    move-result-object v0

    .line 57
    const-string v2, "data_popup_packages_tlf"

    .line 56
    invoke-virtual {v0, v2}, Lcom/lge/launcher3/util/LGHomeResources;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    if-nez v0, :cond_43

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_43
    array-length v2, v0

    :goto_44
    if-lt v1, v2, :cond_4d

    .line 65
    :cond_46
    sget-object v0, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->sDataPopupPackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    :goto_4c
    return v0

    .line 61
    :cond_4d
    aget-object v3, v0, v1

    .line 62
    sget-object v4, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->sDataPopupPackageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_57
    move v0, v1

    .line 67
    goto :goto_4c
.end method

.method private static checkVDFList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 71
    const-string v0, "VDF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "EU"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "ES"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "COM"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 72
    :cond_21
    invoke-static {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGUsimInfo;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGUsimInfo;->getMcc()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGUsimInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v3, "214"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 76
    sget-object v0, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->sDataPopupPackageList:Ljava/util/List;

    if-nez v0, :cond_62

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->sDataPopupPackageList:Ljava/util/List;

    .line 78
    invoke-static {p0}, Lcom/lge/launcher3/util/LGHomeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGHomeResources;

    move-result-object v0

    .line 79
    const-string v2, "data_popup_packages_vdf"

    .line 78
    invoke-virtual {v0, v2}, Lcom/lge/launcher3/util/LGHomeResources;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    if-nez v0, :cond_5f

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_5f
    array-length v2, v0

    :goto_60
    if-lt v1, v2, :cond_69

    .line 89
    :cond_62
    sget-object v0, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->sDataPopupPackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    :goto_68
    return v0

    .line 84
    :cond_69
    aget-object v3, v0, v1

    .line 85
    sget-object v4, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->sDataPopupPackageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_73
    move v0, v1

    .line 92
    goto :goto_68
.end method

.method public static isDataConnectionPopupRequired(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 22
    const-string v1, "FeatureMatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isDataConnectionPopupRequired: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v1, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    .line 25
    sget-object v2, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_COUNTRY:Ljava/lang/String;

    .line 26
    invoke-static {p0, p1, v1, v2}, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->checkTLFList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 31
    :cond_1f
    :goto_1f
    return v0

    .line 28
    :cond_20
    invoke-static {p0, p1, v1, v2}, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->checkVDFList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 31
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static isRoamingDataPopupRequired(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 38
    const-string v0, "FeatureMatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDataConnectionPopupRequired: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v1, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    .line 40
    sget-object v2, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_COUNTRY:Ljava/lang/String;

    .line 41
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 44
    :cond_28
    const/4 v0, 0x0

    .line 47
    :goto_29
    return v0

    :cond_2a
    invoke-static {p0, p1, v1, v2}, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->checkVDFList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_29
.end method
