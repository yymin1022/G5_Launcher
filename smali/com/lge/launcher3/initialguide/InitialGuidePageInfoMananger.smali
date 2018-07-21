.class public Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;
.super Ljava/lang/Object;
.source "InitialGuidePageInfoMananger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;,
        Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuidePageInfoMananger$PageType:[I

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;


# instance fields
.field private mPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuidePageInfoMananger$PageType()[I
    .registers 3

    .prologue
    .line 19
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->$SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuidePageInfoMananger$PageType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->values()[Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->APPS_ON_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_5a

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->BACK_TO_THE_UX4_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_58

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->CUSTOMIZE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_56

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->CUSTOMIZING_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_54

    :goto_30
    :try_start_30
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->EXPERIENCE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_52

    :goto_39
    :try_start_39
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_50

    :goto_42
    :try_start_42
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->MANAGING_APPS:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_4e

    :goto_4b
    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->$SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuidePageInfoMananger$PageType:[I

    goto :goto_4

    :catch_4e
    move-exception v1

    goto :goto_4b

    :catch_50
    move-exception v1

    goto :goto_42

    :catch_52
    move-exception v1

    goto :goto_39

    :catch_54
    move-exception v1

    goto :goto_30

    :catch_56
    move-exception v1

    goto :goto_27

    :catch_58
    move-exception v1

    goto :goto_1e

    :catch_5a
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0, p1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getCustomPageList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1e

    .line 75
    :cond_18
    invoke-direct {p0, p1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getOperatorPageList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    .line 78
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 79
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 82
    :cond_2d
    invoke-direct {p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->printPageList()V

    .line 83
    return-void
.end method

.method private createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;
    .registers 9

    .prologue
    const v5, 0x7f0f012a

    const v0, 0x7f02008f

    const v4, 0x7f02008d

    .line 140
    invoke-direct {p0, p1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getDescSubResId(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)[I

    move-result-object v6

    .line 142
    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->$SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuidePageInfoMananger$PageType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_68

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_1b
    return-object v0

    .line 144
    :pswitch_1c
    const v3, 0x7f0f0122

    .line 146
    const v5, 0x7f0f0123

    .line 193
    :goto_22
    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;-><init>(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;III[I)V

    goto :goto_1b

    .line 150
    :pswitch_2a
    const v3, 0x7f0f0124

    .line 152
    const v5, 0x7f0f0126

    .line 153
    goto :goto_22

    .line 156
    :pswitch_31
    const v3, 0x7f0f0127

    .line 157
    const v4, 0x7f02008e

    .line 158
    const v5, 0x7f0f0128

    .line 159
    goto :goto_22

    .line 162
    :pswitch_3b
    const v3, 0x7f0f0129

    move v4, v0

    .line 165
    goto :goto_22

    .line 168
    :pswitch_40
    const v3, 0x7f0f0130

    .line 170
    const v5, 0x7f0f0132

    .line 171
    goto :goto_22

    .line 174
    :pswitch_47
    const v3, 0x7f0f0137

    move v4, v0

    .line 177
    goto :goto_22

    .line 180
    :pswitch_4c
    const v4, 0x7f020090

    .line 181
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 182
    const v3, 0x7f0f0139

    .line 183
    const v5, 0x7f0f013b

    .line 184
    goto :goto_22

    .line 185
    :cond_60
    const v3, 0x7f0f0138

    .line 186
    const v5, 0x7f0f013a

    .line 188
    goto :goto_22

    .line 142
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_2a
        :pswitch_31
        :pswitch_3b
        :pswitch_40
        :pswitch_47
        :pswitch_4c
    .end packed-switch
.end method

.method private getCustomPageList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_10

    array-length v0, v2

    if-gtz v0, :cond_12

    .line 93
    :cond_10
    const/4 v0, 0x0

    .line 102
    :cond_11
    return-object v0

    .line 96
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    array-length v3, v2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v3, :cond_11

    aget-object v4, v2, v1

    .line 98
    invoke-static {v4}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->valueOf(Ljava/lang/String;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    move-result-object v4

    .line 99
    invoke-direct {p0, v4}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method private getDescSubResId(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)[I
    .registers 6

    .prologue
    const/4 v3, 0x3

    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->$SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuidePageInfoMananger$PageType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 221
    :goto_f
    return-object v0

    .line 200
    :pswitch_10
    new-array v0, v3, [I

    fill-array-data v0, :array_2e

    goto :goto_f

    .line 206
    :pswitch_16
    new-array v0, v3, [I

    fill-array-data v0, :array_38

    goto :goto_f

    .line 212
    :pswitch_1c
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    goto :goto_f

    .line 198
    nop

    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_10
        :pswitch_16
        :pswitch_1c
    .end packed-switch

    .line 200
    :array_2e
    .array-data 4
        0x7f0f012b
        0x7f0f012c
        0x7f0f012d
    .end array-data

    .line 206
    :array_38
    .array-data 4
        0x7f0f0133
        0x7f0f0134
        0x7f0f0135
    .end array-data

    .line 212
    :array_42
    .array-data 4
        0x7f0f012b
        0x7f0f012c
        0x7f0f012d
        0x7f0f012e
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    .line 66
    :cond_b
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    return-object v0
.end method

.method private getOperatorPageList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_COUNTRY:Ljava/lang/String;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    const-string v3, "VZW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 115
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->APPS_ON_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->BACK_TO_THE_UX4_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_23
    return-object v2

    .line 117
    :cond_24
    const-string v3, "ATT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "CRK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "CLR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 118
    :cond_3c
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->MANAGING_APPS:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->CUSTOMIZING_THE_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 121
    :cond_58
    const-string v0, "KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 122
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->EXPERIENCE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->CUSTOMIZE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->BACK_TO_THE_UX4_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 126
    :cond_7c
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->EXPERIENCE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->CUSTOMIZE_THE_UX5_HOME_SCREEN:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->createPageInfo(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method private printPageList()V
    .registers 5

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 249
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->TAG:Ljava/lang/String;

    const-string v1, "PageList is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_b
    return-void

    .line 253
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 254
    if-gtz v2, :cond_1c

    .line 255
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->TAG:Ljava/lang/String;

    const-string v1, "PageCount is 0"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 259
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PageList("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    move v1, v0

    :goto_3a
    if-lt v1, v2, :cond_4b

    .line 269
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 262
    :cond_4b
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    .line 263
    iget-object v0, v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mPageType:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    add-int/lit8 v0, v2, -0x1

    if-ge v1, v0, :cond_65

    .line 266
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 278
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    iput-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    .line 282
    :cond_c
    sput-object v1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->sInstance:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    .line 283
    return-void
.end method

.method public getPageCount()I
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getPageInfo(I)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    goto :goto_5
.end method
