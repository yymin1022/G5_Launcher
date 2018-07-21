.class public Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIScreencaptureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter$ListUtils;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL_NANOS:J = 0x11e1a300L

.field public static final GOOGLE_NOW_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.gsa.velour.dynamichosts.VelvetDynamicHostActivity"

.field public static final GOOGLE_NOW_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final QMEMOPLUS_PACKAGE_NAME:Ljava/lang/String; = "com.lge.qmemoplus"

.field public static final QMEMOPLUS_QUICKMODE_ACTIVITY:Ljava/lang/String; = "com.lge.qmemoplus.quickmode.QuickModeActivity"

.field public static final QMEMO_PACKAGE_NAME:Ljava/lang/String; = "com.lge.QuickClip"

.field private static final TAG:Ljava/lang/String; = "LGMDMUIScreenCaptureAdapter"

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;


# instance fields
.field private mLastFrontPackageName:Ljava/lang/String;

.field private mLastNanoTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;

    .line 49
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;

    return-object v0
.end method

.method private final hasNotPolicy(Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;I)Z
    .registers 6
    .param p1, "mdm"    # Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p1, v2, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCapture(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 118
    invoke-virtual {p1, v2, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 117
    :cond_e
    :goto_e
    return v0

    .line 118
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private final hasPolicyByBlacklist(Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "mdm"    # Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p1, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 131
    invoke-virtual {p1, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 132
    :cond_e
    invoke-virtual {p1, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getScreenCaptureBlacklist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter$ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_1c
    return v1

    .line 136
    .end local v0    # "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    return v1
.end method

.method private final hasPolicyByWhitelist(Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "mdm"    # Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v3, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 123
    invoke-virtual {p1, v3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getScreenCaptureWhitelist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "wlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter$ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_16
    return v1

    .line 126
    .end local v0    # "wlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    return v1
.end method

.method private hasScreenCapturePolicy(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 99
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-direct {p0, v0, p2}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->hasNotPolicy(Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 100
    return v2

    .line 104
    :cond_d
    invoke-direct {p0, v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->hasPolicyByWhitelist(Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 105
    return v3

    .line 109
    :cond_14
    invoke-direct {p0, v0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->hasPolicyByBlacklist(Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 110
    return v2

    .line 113
    :cond_1b
    return v3
.end method

.method private isToastShowing(Z)Z
    .registers 5
    .param p1, "policy"    # Z

    .prologue
    const/4 v0, 0x0

    .line 140
    if-nez p1, :cond_c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method


# virtual methods
.method public checkScreenCapture(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 23
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mPackageName"    # Ljava/lang/String;
    .param p3, "mClassName"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 159
    const/4 v8, 0x0

    .line 160
    .local v8, "isClickable_HomeAndQuickClick":Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    move-wide/from16 v16, v0

    sub-long v6, v14, v16

    .line 162
    .local v6, "interval":J
    const-wide/32 v14, 0x11e1a300

    cmp-long v13, v6, v14

    if-gez v13, :cond_15

    .line 163
    const/4 v8, 0x1

    .line 166
    :cond_15
    const/4 v11, 0x0

    .line 167
    .local v11, "updateLastTimeAndFrontPackageName":Z
    if-eqz p2, :cond_19

    .line 168
    const/4 v11, 0x1

    .line 170
    :cond_19
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "checkScreenCapture, who:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", mPackageName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 171
    const-string/jumbo v15, ", mClassName:"

    .line 170
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 171
    const-string/jumbo v15, ", interval(ms):"

    .line 170
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 171
    const-wide/32 v16, 0xf4240

    div-long v16, v6, v16

    .line 170
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 172
    const-string/jumbo v15, ", userHandle:"

    .line 170
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v10

    .line 175
    .local v10, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCapture(Landroid/content/ComponentName;I)Z

    move-result v13

    if-eqz v13, :cond_86

    .line 176
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWithoutADB(Landroid/content/ComponentName;I)Z

    move-result v13

    if-nez v13, :cond_93

    .line 178
    :cond_86
    if-eqz v11, :cond_90

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 181
    :cond_90
    const/16 v13, -0x69

    return v13

    .line 184
    :cond_93
    new-instance v9, Lcom/lge/mdm/util/LGMDMActivityInfo;

    invoke-direct {v9}, Lcom/lge/mdm/util/LGMDMActivityInfo;-><init>()V

    .line 185
    .local v9, "mLGMDMActivityInfo":Lcom/lge/mdm/util/LGMDMActivityInfo;
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWhitelistWithoutADB(Landroid/content/ComponentName;I)Z

    move-result v13

    if-nez v13, :cond_306

    .line 187
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getScreenCaptureWhitelist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v12

    .line 189
    .local v12, "wlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v12, :cond_c0

    .line 190
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by wlist is null"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    if-eqz v11, :cond_bd

    .line 192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 194
    :cond_bd
    const/16 v13, -0x69

    return v13

    .line 197
    :cond_c0
    move/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/lge/mdm/util/LGMDMActivityInfo;->getTopActivityPackageName2(I)[Landroid/content/ComponentName;

    move-result-object v3

    .line 200
    .local v3, "componentName":[Landroid/content/ComponentName;
    if-nez v8, :cond_f6

    .line 201
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f6

    .line 202
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by wlist 1"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    if-eqz v11, :cond_f3

    .line 205
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 206
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 208
    :cond_f3
    const/16 v13, -0x69

    return v13

    .line 211
    :cond_f6
    const-string/jumbo v13, "com.lge.QuickClip"

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_126

    .line 212
    const-string/jumbo v13, "com.lge.qmemoplus"

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_187

    .line 213
    const-string/jumbo v13, "com.lge.qmemoplus.quickmode.QuickModeActivity"

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 211
    if-eqz v13, :cond_187

    .line 214
    :cond_126
    const/4 v13, 0x1

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_187

    .line 215
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "front Activity is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 216
    const-string/jumbo v15, " and 2nd Activity is "

    .line 215
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 216
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 215
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by wlist 2"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-eqz v11, :cond_184

    .line 220
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 221
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 223
    :cond_184
    const/16 v13, -0x69

    return v13

    .line 226
    :cond_187
    if-eqz v8, :cond_28e

    .line 227
    const-string/jumbo v13, "com.lge.QuickClip"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1aa

    .line 228
    const-string/jumbo v13, "com.lge.qmemoplus"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28e

    .line 229
    const-string/jumbo v13, "com.lge.qmemoplus.quickmode.QuickModeActivity"

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 226
    if-eqz v13, :cond_28e

    .line 230
    :cond_1aa
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_21c

    .line 231
    const/4 v13, 0x1

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_21c

    .line 232
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "front Activity is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 233
    const-string/jumbo v15, " and 2nd Activity is "

    .line 232
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 233
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 232
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by wlist 3"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz v11, :cond_219

    .line 237
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 238
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 240
    :cond_219
    const/16 v13, -0x69

    return v13

    .line 241
    :cond_21c
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28e

    .line 242
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_28e

    .line 243
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "front Activity is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 244
    const-string/jumbo v15, " and 2nd Activity is "

    .line 243
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 244
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 243
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by wlist 4"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    if-eqz v11, :cond_28b

    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 249
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 251
    :cond_28b
    const/16 v13, -0x69

    return v13

    .line 255
    :cond_28e
    invoke-virtual {v9}, Lcom/lge/mdm/util/LGMDMActivityInfo;->getFloatingAppPackageName()[Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "floatingPackageName":[Ljava/lang/String;
    if-eqz v4, :cond_2c4

    .line 258
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_295
    array-length v13, v4

    if-ge v5, v13, :cond_2c4

    .line 259
    aget-object v13, v4, v5

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2c1

    .line 260
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by wlist 5"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    if-eqz v11, :cond_2be

    .line 263
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 264
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 266
    :cond_2be
    const/16 v13, -0x69

    return v13

    .line 258
    :cond_2c1
    add-int/lit8 v5, v5, 0x1

    goto :goto_295

    .line 271
    .end local v5    # "i":I
    :cond_2c4
    if-eqz v11, :cond_2d9

    .line 272
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 273
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 275
    :cond_2d9
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unbloked(whitelist) : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v3    # "componentName":[Landroid/content/ComponentName;
    .end local v4    # "floatingPackageName":[Ljava/lang/String;
    .end local v12    # "wlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2fa
    :goto_2fa
    if-eqz v11, :cond_304

    .line 370
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 372
    :cond_304
    const/4 v13, 0x0

    return v13

    .line 277
    :cond_306
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureWithBlacklist(Landroid/content/ComponentName;I)Z

    move-result v13

    if-eqz v13, :cond_31a

    .line 278
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenCaptureBlacklistWithoutADB(Landroid/content/ComponentName;I)Z

    move-result v13

    if-nez v13, :cond_2fa

    .line 280
    :cond_31a
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getScreenCaptureBlacklist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    .line 282
    .local v2, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_339

    .line 283
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is allowed by blacklist is null"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    if-eqz v11, :cond_337

    .line 285
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 287
    :cond_337
    const/4 v13, 0x0

    return v13

    .line 290
    :cond_339
    move/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/lge/mdm/util/LGMDMActivityInfo;->getTopActivityPackageName2(I)[Landroid/content/ComponentName;

    move-result-object v3

    .line 292
    .restart local v3    # "componentName":[Landroid/content/ComponentName;
    if-nez v8, :cond_36f

    .line 293
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 292
    if-eqz v13, :cond_36f

    .line 294
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by blacklist 1"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    if-eqz v11, :cond_36c

    .line 297
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 298
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 300
    :cond_36c
    const/16 v13, -0x69

    return v13

    .line 303
    :cond_36f
    const-string/jumbo v13, "com.lge.QuickClip"

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_39f

    .line 304
    const-string/jumbo v13, "com.lge.qmemoplus"

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_400

    .line 305
    const-string/jumbo v13, "com.lge.qmemoplus.quickmode.QuickModeActivity"

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 303
    if-eqz v13, :cond_400

    .line 306
    :cond_39f
    const/4 v13, 0x1

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 303
    if-eqz v13, :cond_400

    .line 307
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "front Activity is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 308
    const-string/jumbo v15, " and 2nd Activity is "

    .line 307
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 308
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 307
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by blacklist 2"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-eqz v11, :cond_3fd

    .line 312
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 313
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 315
    :cond_3fd
    const/16 v13, -0x69

    return v13

    .line 318
    :cond_400
    if-eqz v8, :cond_507

    .line 319
    const-string/jumbo v13, "com.lge.QuickClip"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_423

    .line 320
    const-string/jumbo v13, "com.lge.qmemoplus"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_507

    .line 321
    const-string/jumbo v13, "com.lge.qmemoplus.quickmode.QuickModeActivity"

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 318
    if-eqz v13, :cond_507

    .line 322
    :cond_423
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_495

    .line 323
    const/4 v13, 0x1

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 322
    if-eqz v13, :cond_495

    .line 324
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "front Activity is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 325
    const-string/jumbo v15, " and 2nd Activity is "

    .line 324
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 325
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 324
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by blacklist 3"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-eqz v11, :cond_492

    .line 329
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 330
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 332
    :cond_492
    const/16 v13, -0x69

    return v13

    .line 333
    :cond_495
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_507

    .line 334
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 333
    if-eqz v13, :cond_507

    .line 335
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "front Activity is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 336
    const-string/jumbo v15, " and 2nd Activity is "

    .line 335
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 336
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 335
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by blacklist 4"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-eqz v11, :cond_504

    .line 340
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 341
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 343
    :cond_504
    const/16 v13, -0x69

    return v13

    .line 347
    :cond_507
    invoke-virtual {v9}, Lcom/lge/mdm/util/LGMDMActivityInfo;->getFloatingAppPackageName()[Ljava/lang/String;

    move-result-object v4

    .line 348
    .restart local v4    # "floatingPackageName":[Ljava/lang/String;
    if-eqz v4, :cond_53d

    .line 349
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_50e
    array-length v13, v4

    if-ge v5, v13, :cond_53d

    .line 350
    aget-object v13, v4, v5

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_53a

    .line 351
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    const-string/jumbo v14, "screen capture is blocked by blacklist 5"

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-eqz v11, :cond_537

    .line 354
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 355
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 357
    :cond_537
    const/16 v13, -0x69

    return v13

    .line 349
    :cond_53a
    add-int/lit8 v5, v5, 0x1

    goto :goto_50e

    .line 362
    .end local v5    # "i":I
    :cond_53d
    if-eqz v11, :cond_552

    .line 363
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastNanoTime:J

    .line 364
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->mLastFrontPackageName:Ljava/lang/String;

    .line 366
    :cond_552
    const-string/jumbo v13, "LGMDMUIScreenCaptureAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unbloked(blacklist) : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2fa
.end method

.method public hasScreenCapturePolicy()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 60
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUserManager;->getCallingOrCurrentUserId()I

    move-result v2

    .line 61
    .local v2, "userHandle":I
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUserManager;->getCallingOrCurrentUserId()I

    move-result v3

    invoke-virtual {p0, v4, v4, v4, v3}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->checkScreenCapture(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, "r":I
    if-eqz v1, :cond_1a

    .line 64
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 65
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_blockscreencapture_NORMAL:I

    invoke-virtual {v0, v3, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 66
    return v5

    .line 69
    .end local v0    # "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    :cond_1a
    const/4 v3, 0x1

    return v3
.end method

.method public hasScreenCapturePolicy(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 82
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUserManager;->getCallingOrCurrentUserId()I

    move-result v2

    .line 83
    .local v2, "userHandle":I
    invoke-direct {p0, p1, v2}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->hasScreenCapturePolicy(Ljava/lang/String;I)Z

    move-result v1

    .line 85
    .local v1, "r":Z
    invoke-direct {p0, v1}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->isToastShowing(Z)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 86
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_blockscreencapture_NORMAL:I

    invoke-virtual {v0, v3, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 89
    :cond_17
    return v1
.end method
