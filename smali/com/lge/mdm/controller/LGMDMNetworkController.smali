.class public Lcom/lge/mdm/controller/LGMDMNetworkController;
.super Ljava/lang/Object;
.source "LGMDMNetworkController.java"


# static fields
.field static final DATA_USAGE_ALERT:I = 0x2

.field static final DATA_USAGE_CYCLE:I = 0x0

.field static final DATA_USAGE_LIMIT:I = 0x1

.field private static final DUAL_SIM_URI:Landroid/net/Uri;

.field private static final SIM_ID:Ljava/lang/String; = "_id"

.field static final SIM_SINGLE:I = 0x3

.field static final SIM_SLOT_1:I = 0x0

.field static final SIM_SLOT_2:I = 0x1

.field static final SIM_SLOT_3:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetworkController"

.field private static final TEST_SUBSCRIBER_PROP:Ljava/lang/String; = "test.subscriberid"

.field private static instance:Lcom/lge/mdm/controller/LGMDMNetworkController;


# instance fields
.field private mBackgroundDataRestriction:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

.field mContext:Landroid/content/Context;

.field private mDataInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

.field private mDualSimAddOnCls2:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mDualSimAddOnCls3:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mIsMTKDual:Z

.field private mIsMTKTriple:Z

.field private mIsQCTDual:Z

.field private mIsQCTTriple:Z

.field private final mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mSIMInfoAddOncls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMNetworkController;->instance:Lcom/lge/mdm/controller/LGMDMNetworkController;

    .line 68
    const-string/jumbo v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMNetworkController;->DUAL_SIM_URI:Landroid/net/Uri;

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKDual:Z

    .line 63
    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKTriple:Z

    .line 64
    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTDual:Z

    .line 65
    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTTriple:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mDataInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    .line 71
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mPolicies:Ljava/util/ArrayList;

    .line 87
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 88
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->isMultiSimSupport()V

    .line 92
    invoke-static {}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->getInstance()Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mBackgroundDataRestriction:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    .line 86
    return-void
.end method

.method private collectHistoryForUid(Landroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .registers 13
    .param p1, "session"    # Landroid/net/INetworkStatsSession;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "uid"    # I
    .param p4, "set"    # I
    .param p5, "existing"    # Landroid/net/NetworkStatsHistory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 520
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v6

    .line 523
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    if-eqz p5, :cond_11

    .line 524
    invoke-virtual {p5, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 525
    return-object p5

    .line 527
    :cond_11
    return-object v6
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 939
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 940
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string/jumbo v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 949
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 950
    .local v1, "msimtele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getSubIdBySlotId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "actualSubscriberIdforSlot":Ljava/lang/String;
    const-string/jumbo v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDataRoamingEnabled()Z
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/internal/telephony/DataConnectionInterface;->getInstance(Landroid/content/Context;)Lcom/lge/internal/telephony/DataConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mDataInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    .line 327
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mDataInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    invoke-virtual {v0}, Lcom/lge/internal/telephony/DataConnectionInterface;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMNetworkController;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/lge/mdm/controller/LGMDMNetworkController;->instance:Lcom/lge/mdm/controller/LGMDMNetworkController;

    if-nez v0, :cond_b

    .line 110
    new-instance v0, Lcom/lge/mdm/controller/LGMDMNetworkController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMNetworkController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMNetworkController;->instance:Lcom/lge/mdm/controller/LGMDMNetworkController;

    .line 113
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMNetworkController;->instance:Lcom/lge/mdm/controller/LGMDMNetworkController;

    return-object v0
.end method

.method private static getSubIdBySlotId(I)I
    .registers 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 955
    const/4 v0, -0x1

    .line 956
    .local v0, "subId":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 958
    .local v1, "subIds":[I
    if-eqz v1, :cond_d

    array-length v2, v1

    if-lez v2, :cond_d

    .line 959
    aget v0, v1, v3

    .line 962
    :cond_d
    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSubIdBySlotId() slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return v0
.end method

.method private getTemplate(I)Landroid/net/NetworkTemplate;
    .registers 5
    .param p1, "simType"    # I

    .prologue
    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "template":Landroid/net/NetworkTemplate;
    packed-switch p1, :pswitch_data_34

    .line 980
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 983
    .local v0, "template":Landroid/net/NetworkTemplate;
    :goto_e
    return-object v0

    .line 970
    .local v0, "template":Landroid/net/NetworkTemplate;
    :pswitch_f
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .local v0, "template":Landroid/net/NetworkTemplate;
    goto :goto_e

    .line 973
    .local v0, "template":Landroid/net/NetworkTemplate;
    :pswitch_1b
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .local v0, "template":Landroid/net/NetworkTemplate;
    goto :goto_e

    .line 976
    .local v0, "template":Landroid/net/NetworkTemplate;
    :pswitch_27
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .local v0, "template":Landroid/net/NetworkTemplate;
    goto :goto_e

    .line 968
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1b
        :pswitch_27
    .end packed-switch
.end method

.method private getValueForDataUsage(Landroid/net/NetworkStatsHistory;Ljava/lang/String;Ljava/lang/String;)J
    .registers 36
    .param p1, "statsHistory"    # Landroid/net/NetworkStatsHistory;
    .param p2, "startDate"    # Ljava/lang/String;
    .param p3, "endDate"    # Ljava/lang/String;

    .prologue
    .line 403
    const/16 v20, 0x0

    .line 404
    .local v20, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide/16 v26, 0x0

    .line 407
    .local v26, "totalBytes":J
    const/16 v23, 0x0

    .line 408
    .local v23, "year":I
    const/16 v21, 0x0

    .line 409
    .local v21, "month":I
    const/16 v19, 0x0

    .line 410
    .local v19, "day":I
    const/16 v28, 0x0

    .line 411
    .local v28, "year1":I
    const/16 v22, 0x0

    .line 412
    .local v22, "month1":I
    const/4 v9, 0x0

    .line 414
    .local v9, "day1":I
    const-string/jumbo v6, "NetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getValueForDataUsage : start date = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": end date = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-nez p1, :cond_3d

    .line 417
    const-wide/16 v10, -0x1

    return-wide v10

    .line 420
    :cond_3d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 421
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 422
    .local v16, "now":J
    if-eqz p2, :cond_49

    if-nez p3, :cond_6a

    .line 423
    :cond_49
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 424
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 425
    .local v12, "start":J
    move-wide/from16 v14, v16

    .local v14, "end":J
    move/from16 v8, v22

    .end local v22    # "month1":I
    .local v8, "month1":I
    move/from16 v7, v28

    .end local v28    # "year1":I
    .local v7, "year1":I
    move/from16 v5, v19

    .end local v19    # "day":I
    .local v5, "day":I
    move/from16 v4, v21

    .end local v21    # "month":I
    .local v4, "month":I
    move/from16 v3, v23

    .line 443
    .end local v23    # "year":I
    .local v3, "year":I
    :goto_63
    cmp-long v6, v12, v14

    if-lez v6, :cond_e7

    .line 444
    const-wide/16 v10, -0x1

    return-wide v10

    .line 427
    .end local v3    # "year":I
    .end local v4    # "month":I
    .end local v5    # "day":I
    .end local v7    # "year1":I
    .end local v8    # "month1":I
    .end local v12    # "start":J
    .end local v14    # "end":J
    .restart local v19    # "day":I
    .restart local v21    # "month":I
    .restart local v22    # "month1":I
    .restart local v23    # "year":I
    .restart local v28    # "year1":I
    :cond_6a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v10, 0x8

    if-ne v6, v10, :cond_7a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v10, 0x8

    if-eq v6, v10, :cond_7d

    .line 428
    :cond_7a
    const-wide/16 v10, -0x1

    return-wide v10

    .line 430
    :cond_7d
    const/4 v6, 0x0

    const/4 v10, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 431
    .end local v23    # "year":I
    .restart local v3    # "year":I
    const/4 v6, 0x4

    const/4 v10, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 432
    .end local v21    # "month":I
    .restart local v4    # "month":I
    const/4 v6, 0x6

    const/16 v10, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 433
    .end local v19    # "day":I
    .restart local v5    # "day":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 434
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    .line 436
    .local v24, "start":J
    const/4 v6, 0x0

    const/4 v10, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 437
    .end local v28    # "year1":I
    .restart local v7    # "year1":I
    const/4 v6, 0x4

    const/4 v10, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v8, v6, -0x1

    .line 438
    .end local v22    # "month1":I
    .restart local v8    # "month1":I
    const/4 v6, 0x6

    const/16 v10, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 439
    const/16 v10, 0x17

    const/16 v11, 0x3b

    const/16 v12, 0x3b

    move-object v6, v2

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    .line 440
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .restart local v14    # "end":J
    move-wide/from16 v12, v24

    .end local v24    # "start":J
    .restart local v12    # "start":J
    goto/16 :goto_63

    .line 447
    :cond_e7
    const/16 v18, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v20

    .line 448
    .local v20, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, v20

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v30, v0

    add-long v26, v10, v30

    .line 449
    const-string/jumbo v6, "NetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "data usage totalBytes = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v26

    invoke-static {v11, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-wide v26
.end method

.method private historyForDataUsage(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;
    .registers 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v7, 0x0

    .line 454
    const/4 v4, 0x0

    .line 455
    .local v4, "statsSession":Landroid/net/INetworkStatsSession;
    const/4 v1, 0x0

    .line 457
    .local v1, "statsHistory":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->openINetworkStatsSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    .line 459
    .local v4, "statsSession":Landroid/net/INetworkStatsSession;
    if-nez v4, :cond_13

    .line 460
    const-string/jumbo v5, "NetworkController"

    const-string/jumbo v6, "statsSession is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-object v7

    .line 464
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 467
    .local v2, "identity":J
    const/16 v5, 0xa

    .line 466
    :try_start_19
    invoke-interface {v4, p1, v5}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_21
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2f

    move-result-object v1

    .line 471
    .local v1, "statsHistory":Landroid/net/NetworkStatsHistory;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 474
    .end local v1    # "statsHistory":Landroid/net/NetworkStatsHistory;
    :goto_20
    return-object v1

    .line 468
    .local v1, "statsHistory":Landroid/net/NetworkStatsHistory;
    :catch_21
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string/jumbo v5, "NetworkController"

    const-string/jumbo v6, "getHistoryForNetwork"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2f

    .line 471
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 470
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v5

    .line 471
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 470
    throw v5
.end method

.method private historyForDataUsage(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, "statsSession":Landroid/net/INetworkStatsSession;
    const/4 v5, 0x0

    .line 481
    .local v5, "statsHistory":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->openINetworkStatsSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    .line 483
    .local v1, "statsSession":Landroid/net/INetworkStatsSession;
    if-nez v1, :cond_13

    .line 484
    const-string/jumbo v0, "NetworkController"

    const-string/jumbo v2, "statsSession is null"

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-object v4

    .line 488
    :cond_13
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 489
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 491
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    :try_start_1b
    invoke-virtual {v11, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_1e} :catch_2b

    move-result-object v10

    .line 497
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_1f
    if-nez v10, :cond_36

    .line 498
    const-string/jumbo v0, "NetworkController"

    const-string/jumbo v2, "pkginfo == null"

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-object v4

    .line 492
    .restart local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_2b
    move-exception v7

    .line 493
    .local v7, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, "NetworkController"

    const-string/jumbo v2, "getPackageInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 502
    .end local v7    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_36
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 503
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 506
    .local v8, "identity":J
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    :try_start_41
    invoke-direct/range {v0 .. v5}, Lcom/lge/mdm/controller/LGMDMNetworkController;->collectHistoryForUid(Landroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 507
    .local v5, "statsHistory":Landroid/net/NetworkStatsHistory;
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/lge/mdm/controller/LGMDMNetworkController;->collectHistoryForUid(Landroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4b} :catch_50
    .catchall {:try_start_41 .. :try_end_4b} :catchall_5e

    move-result-object v5

    .line 511
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    .end local v5    # "statsHistory":Landroid/net/NetworkStatsHistory;
    :goto_4f
    return-object v5

    .line 508
    :catch_50
    move-exception v6

    .line 509
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_51
    const-string/jumbo v0, "NetworkController"

    const-string/jumbo v2, "getHistoryForUid"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5e

    .line 511
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4f

    .line 510
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_5e
    move-exception v0

    .line 511
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    throw v0
.end method

.method private isMobileDataEnabled()Z
    .registers 6

    .prologue
    .line 576
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    .line 577
    const-string/jumbo v4, "phone"

    .line 576
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 578
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 580
    .local v0, "identity":J
    :try_start_f
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    move-result v3

    .line 582
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    return v3

    .line 581
    :catchall_17
    move-exception v3

    .line 582
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 581
    throw v3
.end method

.method private isMultiSimSupport()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    const-string/jumbo v0, "ro.lge.mtk_dualsim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKDual:Z

    .line 97
    const-string/jumbo v0, "ro.lge.mtk_triplesim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKTriple:Z

    .line 99
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 100
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    if-eqz v0, :cond_36

    .line 101
    :cond_34
    iput-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTDual:Z

    .line 103
    :cond_36
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 104
    iput-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTTriple:Z

    .line 95
    :cond_48
    return-void
.end method

.method private isRoaming()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    .line 337
    const-string/jumbo v3, "phone"

    .line 336
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 338
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_2c

    .line 339
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 340
    .local v0, "isRoaming":Z
    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRoaming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return v0

    .line 343
    .end local v0    # "isRoaming":Z
    :cond_2c
    const/4 v2, 0x0

    return v2
.end method

.method private openINetworkStatsSession()Landroid/net/INetworkStatsSession;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 533
    const-string/jumbo v5, "netstats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 532
    invoke-static {v5}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    .line 534
    .local v1, "statsService":Landroid/net/INetworkStatsService;
    const/4 v4, 0x0

    .line 536
    .local v4, "statsSession":Landroid/net/INetworkStatsSession;
    if-nez v1, :cond_19

    .line 537
    const-string/jumbo v5, "NetworkController"

    const-string/jumbo v6, "statsService is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-object v7

    .line 541
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 543
    .local v2, "identity":J
    :try_start_1d
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    .line 544
    .local v4, "statsSession":Landroid/net/INetworkStatsSession;
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_28
    .catchall {:try_start_1d .. :try_end_24} :catchall_36

    .line 548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    .end local v4    # "statsSession":Landroid/net/INetworkStatsSession;
    :goto_27
    return-object v4

    .line 545
    :catch_28
    move-exception v0

    .line 546
    .local v0, "e2":Landroid/os/RemoteException;
    :try_start_29
    const-string/jumbo v5, "NetworkController"

    const-string/jumbo v6, "statsService.openSession"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_36

    .line 548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    .line 547
    .end local v0    # "e2":Landroid/os/RemoteException;
    :catchall_36
    move-exception v5

    .line 548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 547
    throw v5
.end method

.method private setDataRoamingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/internal/telephony/DataConnectionInterface;->getInstance(Landroid/content/Context;)Lcom/lge/internal/telephony/DataConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mDataInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    .line 332
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mDataInterface:Lcom/lge/internal/telephony/DataConnectionInterface;

    invoke-virtual {v0, p1}, Lcom/lge/internal/telephony/DataConnectionInterface;->setDataOnRoamingEnabled(Z)V

    .line 330
    return-void
.end method

.method private setDualSimDataRoaming(Landroid/content/Context;IJ)V
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "roaming"    # I
    .param p3, "simId"    # J

    .prologue
    .line 246
    :try_start_0
    const-string/jumbo v2, "android.provider.Telephony$SIMInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mSIMInfoAddOncls:Ljava/lang/Class;

    .line 247
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mSIMInfoAddOncls:Ljava/lang/Class;

    const-string/jumbo v3, "setDataRoaming"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 248
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 249
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 250
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 247
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 252
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 244
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_3c
    return-void

    .line 253
    :catch_3d
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDualSimDataRoaming Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private setDualSimDataRoaming2(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 261
    .local v2, "identity":J
    :try_start_4
    const-string/jumbo v4, "android.provider.Settings$Secure"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mDualSimAddOnCls2:Ljava/lang/Class;

    .line 262
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mDualSimAddOnCls2:Ljava/lang/Class;

    const-string/jumbo v5, "DATA_ROAMING_2"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "sim2":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_28
    .catchall {:try_start_4 .. :try_end_24} :catchall_47

    .line 267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    .end local v1    # "sim2":Ljava/lang/String;
    :goto_27
    return-void

    .line 264
    :catch_28
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    :try_start_29
    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDualSimDataRoaming2 : Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_47

    .line 267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_47
    move-exception v4

    .line 267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    throw v4
.end method

.method private setDualSimDataRoaming3(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 274
    .local v2, "identity":J
    :try_start_4
    const-string/jumbo v4, "android.provider.Settings$Secure"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mDualSimAddOnCls3:Ljava/lang/Class;

    .line 275
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mDualSimAddOnCls3:Ljava/lang/Class;

    const-string/jumbo v5, "DATA_ROAMING_3"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "sim3":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_28
    .catchall {:try_start_4 .. :try_end_24} :catchall_47

    .line 280
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    .end local v1    # "sim3":Ljava/lang/String;
    :goto_27
    return-void

    .line 277
    :catch_28
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    :try_start_29
    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDualSimDataRoaming3 : Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_47

    .line 280
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_47
    move-exception v4

    .line 280
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    throw v4
.end method

.method private setMobileDataEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    .line 565
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    .line 566
    const-string/jumbo v4, "phone"

    .line 565
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 567
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 569
    .local v0, "identity":J
    :try_start_f
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    return-void

    .line 570
    :catchall_16
    move-exception v3

    .line 571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 570
    throw v3
.end method

.method private setValue(IIJ)V
    .registers 16
    .param p1, "dataUsageType"    # I
    .param p2, "simType"    # I
    .param p3, "changingMobileDataUsage"    # J

    .prologue
    const-wide/32 v8, 0xa00000

    .line 987
    const/4 v4, 0x0

    .line 988
    .local v4, "template":Landroid/net/NetworkTemplate;
    const/4 v3, 0x0

    .line 989
    .local v3, "networkPolicy":Landroid/net/NetworkPolicy;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iget-object v2, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 990
    .local v2, "cycleTimezone":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->readNetworkPolicy()V

    .line 991
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v4

    .line 992
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0, v4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 993
    .local v3, "networkPolicy":Landroid/net/NetworkPolicy;
    packed-switch p1, :pswitch_data_4e

    .line 1017
    :goto_1a
    iput-object v2, v3, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 1018
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/net/NetworkPolicy;->inferred:Z

    .line 1019
    invoke-virtual {v3}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 986
    return-void

    .line 995
    :pswitch_23
    long-to-int v5, p3

    iput v5, v3, Landroid/net/NetworkPolicy;->cycleDay:I

    goto :goto_1a

    .line 998
    :pswitch_27
    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5, v3}, Lcom/lge/mdm/controller/LGMDMNetworkController;->readMobileDataUsageInfo(Landroid/net/NetworkTemplate;ILandroid/net/NetworkPolicy;)J

    move-result-wide v6

    cmp-long v5, p3, v6

    if-gtz v5, :cond_34

    .line 1001
    sub-long v6, p3, v8

    iput-wide v6, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 1003
    :cond_34
    iput-wide p3, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_1a

    .line 1006
    :pswitch_37
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, v3}, Lcom/lge/mdm/controller/LGMDMNetworkController;->readMobileDataUsageInfo(Landroid/net/NetworkTemplate;ILandroid/net/NetworkPolicy;)J

    move-result-wide v0

    .line 1008
    .local v0, "checkLimitValue":J
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_4a

    cmp-long v5, p3, v0

    if-ltz v5, :cond_4a

    .line 1010
    add-long v6, p3, v8

    iput-wide v6, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 1012
    :cond_4a
    iput-wide p3, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_1a

    .line 993
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_27
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method protected enforceBackgroundDataRestricted(ZLjava/lang/Runnable;)V
    .registers 6
    .param p1, "newState"    # Z
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 628
    if-eqz p1, :cond_3

    .line 629
    return-void

    .line 631
    :cond_3
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mBackgroundDataRestriction:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p2}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->setRestrictBackground(Landroid/content/Context;ZLjava/lang/Runnable;)V

    .line 627
    return-void
.end method

.method protected get3G4GDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "template":Landroid/net/NetworkTemplate;
    const/4 v0, 0x0

    .line 378
    .local v0, "statsHistory":Landroid/net/NetworkStatsHistory;
    if-nez p1, :cond_7

    .line 379
    const-wide/16 v2, -0x1

    return-wide v2

    .line 382
    :cond_7
    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get3G4GDataUsageInformation: MTKdualSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKDual:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string/jumbo v4, " MTKtripleSim = "

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    iget-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKTriple:Z

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string/jumbo v4, " mIsQCTDual = "

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    iget-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTDual:Z

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    const-string/jumbo v4, " mIsQCTTriple = "

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    iget-boolean v4, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTTriple:Z

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKDual:Z

    if-nez v2, :cond_5a

    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKTriple:Z

    if-nez v2, :cond_5a

    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTDual:Z

    if-nez v2, :cond_5a

    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTTriple:Z

    if-eqz v2, :cond_5d

    .line 387
    :cond_5a
    const-wide/16 v2, -0x2

    return-wide v2

    .line 390
    :cond_5d
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 392
    .local v1, "template":Landroid/net/NetworkTemplate;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 393
    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->historyForDataUsage(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 398
    .local v0, "statsHistory":Landroid/net/NetworkStatsHistory;
    :goto_6c
    invoke-direct {p0, v0, p3, p4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getValueForDataUsage(Landroid/net/NetworkStatsHistory;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 395
    .local v0, "statsHistory":Landroid/net/NetworkStatsHistory;
    :cond_71
    invoke-direct {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->historyForDataUsage(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, "statsHistory":Landroid/net/NetworkStatsHistory;
    goto :goto_6c
.end method

.method protected getAllowAutoRestore(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 708
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 709
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoRestore:Z

    :cond_e
    return v4

    .line 712
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 713
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 714
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoRestore:Z

    if-nez v5, :cond_19

    .line 715
    const/4 v4, 0x0

    return v4

    .line 718
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 775
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 776
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangingMobileDataUsageCycle:Z

    :cond_e
    return v4

    .line 779
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 780
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 781
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangingMobileDataUsageCycle:Z

    if-nez v5, :cond_19

    .line 782
    const/4 v4, 0x0

    return v4

    .line 785
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowDataRoaming(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 231
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 232
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataRoaming:Z

    :cond_e
    return v4

    .line 235
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 236
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 237
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataRoaming:Z

    if-nez v5, :cond_19

    .line 238
    const/4 v4, 0x0

    return v4

    .line 241
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowGoogleBackup(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 644
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 645
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleBackup:Z

    :cond_e
    return v4

    .line 648
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 649
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 650
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleBackup:Z

    if-nez v5, :cond_19

    .line 651
    const/4 v4, 0x0

    return v4

    .line 654
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getAllowMobileNetwork(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 119
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 120
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMobileNetwork:Z

    :cond_e
    return v4

    .line 123
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 124
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 125
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMobileNetwork:Z

    if-nez v5, :cond_19

    .line 126
    const/4 v4, 0x0

    return v4

    .line 129
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getCurrentMobileDataUsageInfo(II)J
    .registers 9
    .param p1, "type"    # I
    .param p2, "simType"    # I

    .prologue
    .line 1116
    const/4 v1, 0x0

    .line 1117
    .local v1, "template":Landroid/net/NetworkTemplate;
    const-wide/16 v2, -0x1

    .line 1118
    .local v2, "ret":J
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1119
    .local v1, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->readNetworkPolicy()V

    .line 1120
    invoke-virtual {p0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 1121
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-nez v0, :cond_11

    .line 1122
    return-wide v2

    .line 1124
    :cond_11
    invoke-virtual {p0, v1, p1, v0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->readMobileDataUsageInfo(Landroid/net/NetworkTemplate;ILandroid/net/NetworkPolicy;)J

    move-result-wide v4

    return-wide v4
.end method

.method protected getEnforceAlertMobileDataUsage(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 829
    const/4 v0, 0x0

    .line 830
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 831
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 832
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarnMobileDataUsage:Z

    :cond_e
    return v4

    .line 835
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 836
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 837
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarnMobileDataUsage:Z

    if-eqz v5, :cond_19

    .line 838
    const/4 v4, 0x1

    return v4

    .line 841
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 588
    const/4 v0, 0x0

    .line 589
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 590
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 591
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundDataRestricted:Z

    :cond_e
    return v4

    .line 594
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 595
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 596
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundDataRestricted:Z

    if-nez v5, :cond_19

    .line 597
    const/4 v4, 0x0

    return v4

    .line 600
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getEnforceLimitMobileDataUsage(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 804
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 805
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceLimitMobileDataUsage:Z

    :cond_e
    return v4

    .line 808
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 809
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 810
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceLimitMobileDataUsage:Z

    if-eqz v5, :cond_19

    .line 811
    const/4 v4, 0x1

    return v4

    .line 814
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz p1, :cond_f

    .line 162
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p1, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 163
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMobileNetworkEnabled:Z

    :cond_e
    return v4

    .line 165
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_f
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v5, p2}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 166
    .local v3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admins$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 167
    .local v1, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v5, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMobileNetworkEnabled:Z

    if-eqz v5, :cond_19

    .line 168
    const/4 v4, 0x1

    return v4

    .line 171
    .end local v1    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    :cond_2b
    return v4
.end method

.method protected getMinimumValueInfo(IJI)J
    .registers 15
    .param p1, "type"    # I
    .param p2, "sizeInfo"    # J
    .param p4, "userHandle"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 909
    move-wide v4, p2

    .line 910
    .local v4, "retMinimun":J
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v3, p4}, Lcom/lge/mdm/admin/LGMDMadministrator;->getLGMDMAdminLists(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 911
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mdm/admin/LGMDMadminlist;>;"
    packed-switch p1, :pswitch_data_4c

    .line 931
    :cond_c
    return-wide v4

    .line 913
    :pswitch_d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admins$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 914
    .local v0, "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-wide v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageLimit:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_11

    .line 915
    iget-wide v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageLimit:J

    cmp-long v3, v6, v4

    if-gez v3, :cond_11

    .line 916
    iget-wide v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageLimit:J

    goto :goto_11

    .line 921
    .end local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    .end local v1    # "admins$iterator":Ljava/util/Iterator;
    :pswitch_2c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "admins$iterator":Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/admin/LGMDMadminlist;

    .line 922
    .restart local v0    # "admins":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-wide v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageLimit:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_30

    .line 923
    iget-wide v6, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageLimit:J

    cmp-long v3, v6, v4

    if-gez v3, :cond_30

    .line 924
    iget-wide v4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageWarn:J

    goto :goto_30

    .line 911
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_2c
    .end packed-switch
.end method

.method protected getMobileDataUsageInformation(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v0, "mArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_e

    .line 864
    packed-switch p2, :pswitch_data_bc

    .line 905
    :cond_e
    :goto_e
    return-object v0

    .line 866
    :pswitch_f
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKDual:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTDual:Z

    if-eqz v1, :cond_2e

    .line 867
    :cond_17
    invoke-virtual {p0, v4, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-virtual {p0, v4, v4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 871
    :cond_2e
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKTriple:Z

    if-nez v1, :cond_36

    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTTriple:Z

    if-eqz v1, :cond_58

    .line 872
    :cond_36
    invoke-virtual {p0, v4, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-virtual {p0, v4, v4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    invoke-virtual {p0, v4, v5}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 879
    :cond_58
    invoke-virtual {p0, v4, v3}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 884
    :pswitch_64
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKDual:Z

    if-nez v1, :cond_6c

    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTDual:Z

    if-eqz v1, :cond_83

    .line 885
    :cond_6c
    invoke-virtual {p0, v5, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {p0, v5, v4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 889
    :cond_83
    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKTriple:Z

    if-nez v1, :cond_8b

    iget-boolean v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTTriple:Z

    if-eqz v1, :cond_ae

    .line 890
    :cond_8b
    invoke-virtual {p0, v5, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-virtual {p0, v5, v4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    invoke-virtual {p0, v5, v5}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 897
    :cond_ae
    invoke-virtual {p0, v5, v3}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getCurrentMobileDataUsageInfo(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 864
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_f
        :pswitch_64
    .end packed-switch
.end method

.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 17
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1176
    invoke-virtual/range {p0 .. p1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 1177
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-nez v0, :cond_24

    .line 1178
    const-wide/16 v4, -0x1

    .line 1179
    .local v4, "warningDisabled":J
    const-wide/16 v6, -0x1

    .line 1180
    .local v6, "limitDisabled":J
    const-wide/16 v8, -0x1

    .line 1181
    .local v8, "snoozeNaver":J
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1182
    .local v14, "time":Landroid/text/format/Time;
    iget-object v3, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1183
    .local v3, "cycleTimezone":Ljava/lang/String;
    iget v2, v14, Landroid/text/format/Time;->monthDay:I

    .line 1184
    .local v2, "cycleDay":I
    const/4 v12, 0x1

    .line 1185
    .local v12, "metered":Z
    new-instance v0, Landroid/net/NetworkPolicy;

    .line 1186
    .end local v0    # "policy":Landroid/net/NetworkPolicy;
    const/4 v13, 0x1

    move-object/from16 v1, p1

    move-wide v10, v8

    .line 1185
    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1187
    .restart local v0    # "policy":Landroid/net/NetworkPolicy;
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    .end local v2    # "cycleDay":I
    .end local v3    # "cycleTimezone":Ljava/lang/String;
    .end local v4    # "warningDisabled":J
    .end local v6    # "limitDisabled":J
    .end local v8    # "snoozeNaver":J
    .end local v12    # "metered":Z
    .end local v14    # "time":Landroid/text/format/Time;
    :cond_24
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1150
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mPolicies:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "policy$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 1151
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1152
    return-object v0

    .line 1155
    .end local v0    # "policy":Landroid/net/NetworkPolicy;
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method protected getRestrictBackground()Z
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mBackgroundDataRestriction:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->getRestrictBackground(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected getWIFIDataUsageInformation(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;
    .param p5, "userHandle"    # I

    .prologue
    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, "template":Landroid/net/NetworkTemplate;
    const/4 v0, 0x0

    .line 355
    .local v0, "statsHistory":Landroid/net/NetworkStatsHistory;
    if-nez p1, :cond_7

    .line 356
    const-wide/16 v2, -0x1

    return-wide v2

    .line 359
    :cond_7
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 361
    .local v1, "template":Landroid/net/NetworkTemplate;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 362
    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->historyForDataUsage(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 367
    .local v0, "statsHistory":Landroid/net/NetworkStatsHistory;
    :goto_15
    invoke-direct {p0, v0, p3, p4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getValueForDataUsage(Landroid/net/NetworkStatsHistory;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 364
    .local v0, "statsHistory":Landroid/net/NetworkStatsHistory;
    :cond_1a
    invoke-direct {p0, v1, p2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->historyForDataUsage(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, "statsHistory":Landroid/net/NetworkStatsHistory;
    goto :goto_15
.end method

.method protected readMobileDataUsageInfo(Landroid/net/NetworkTemplate;ILandroid/net/NetworkPolicy;)J
    .registers 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I
    .param p3, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1098
    const-wide/16 v0, -0x1

    .line 1099
    .local v0, "ret":J
    packed-switch p2, :pswitch_data_10

    .line 1112
    :goto_5
    return-wide v0

    .line 1101
    :pswitch_6
    iget v2, p3, Landroid/net/NetworkPolicy;->cycleDay:I

    int-to-long v0, v2

    .line 1102
    goto :goto_5

    .line 1104
    :pswitch_a
    iget-wide v0, p3, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_5

    .line 1107
    :pswitch_d
    iget-wide v0, p3, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_5

    .line 1099
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public readNetworkPolicy()V
    .registers 9

    .prologue
    .line 1128
    const/4 v2, 0x0

    .line 1129
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1131
    .local v4, "policyManager":Landroid/net/NetworkPolicyManager;
    if-nez v4, :cond_a

    .line 1132
    return-void

    .line 1135
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1137
    .local v0, "identity":J
    :try_start_e
    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2a

    move-result-object v2

    .line 1139
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1142
    if-eqz v2, :cond_2f

    .line 1143
    const/4 v5, 0x0

    array-length v6, v2

    :goto_1e
    if-ge v5, v6, :cond_2f

    aget-object v3, v2, v5

    .line 1144
    .local v3, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 1138
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    :catchall_2a
    move-exception v5

    .line 1139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1138
    throw v5

    .line 1127
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    :cond_2f
    return-void
.end method

.method protected retoreBackgroundDataRestricted(IZLjava/lang/Runnable;)V
    .registers 7
    .param p1, "userHandle"    # I
    .param p2, "preState"    # Z
    .param p3, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 636
    if-nez p2, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 637
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mBackgroundDataRestriction:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->setRestrictBackground(Landroid/content/Context;ZLjava/lang/Runnable;)V

    .line 635
    :cond_11
    return-void
.end method

.method protected setAllowAutoRestore(Landroid/content/ComponentName;ZI)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 722
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 724
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoRestore:Z

    if-ne v1, p2, :cond_15

    .line 725
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setAllowAutoRestore : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const/4 v1, 0x0

    return-object v1

    .line 728
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoRestore:Z

    .line 729
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setAllowAutoRestore"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-object v0
.end method

.method protected setAllowChangingMobileDataUsageCycle(Landroid/content/ComponentName;ZIZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "cycleDate"    # I
    .param p4, "oldGlobalPolicy"    # Z
    .param p5, "userHandle"    # I

    .prologue
    .line 793
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 794
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangingMobileDataUsageCycle:Z

    if-ne v1, p2, :cond_14

    .line 795
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setAllowChangingMobileDataUsageCycle : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    return-void

    .line 798
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangingMobileDataUsageCycle:Z

    .line 792
    return-void
.end method

.method protected setAllowDataRoaming(Landroid/content/ComponentName;ZI)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 285
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 287
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataRoaming:Z

    if-ne v1, p2, :cond_14

    .line 288
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setAllowDataRoaming : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-object v0

    .line 292
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataRoaming:Z

    .line 293
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataRoaming:Z

    if-nez v1, :cond_5e

    .line 295
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getDataRoamingEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateDataRoaming:Z

    .line 296
    const-string/jumbo v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preStateDataRoaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateDataRoaming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMultiSimEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_5e
    return-object v0
.end method

.method protected setAllowGoogleBackup(Landroid/content/ComponentName;ZI)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 658
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 660
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleBackup:Z

    if-ne v1, p2, :cond_15

    .line 661
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setAllowGoogleBackup : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x0

    return-object v1

    .line 664
    :cond_15
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleBackup:Z

    .line 665
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setAllowGoogleBackup"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-object v0
.end method

.method protected setAllowMobileNetwork(Landroid/content/ComponentName;ZI)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 135
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMobileNetwork:Z

    if-ne v1, p2, :cond_14

    .line 136
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setAllowMobileNetwork : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v0

    .line 139
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMobileNetwork:Z

    .line 140
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMobileNetwork:Z

    if-nez v1, :cond_20

    .line 141
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->isMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateMobileNetwork:Z

    .line 143
    :cond_20
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "Data Network is enabled by forced, cannot be disable."

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-object v0
.end method

.method protected setAutoRestore(Lcom/lge/mdm/admin/LGMDMadminlist;ZI)V
    .registers 13
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "enable"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 735
    const-string/jumbo v6, "backup"

    .line 734
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 737
    .local v1, "mBackupManager":Landroid/app/backup/IBackupManager;
    if-eqz p2, :cond_56

    .line 738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 740
    .local v2, "identity":J
    :try_start_14
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 741
    const-string/jumbo v7, "backup_auto_restore"

    const/4 v8, 0x1

    .line 740
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_30

    :goto_24
    iput-boolean v4, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAutoRestore:Z

    .line 743
    if-eqz v1, :cond_2c

    .line 744
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2c} :catch_32
    .catchall {:try_start_14 .. :try_end_2c} :catchall_51

    .line 749
    :cond_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    .end local v2    # "identity":J
    :cond_2f
    :goto_2f
    return-void

    .restart local v2    # "identity":J
    :cond_30
    move v4, v5

    .line 741
    goto :goto_24

    .line 746
    :catch_32
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/Exception;
    :try_start_33
    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBackupManager error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_51

    .line 749
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 748
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_51
    move-exception v4

    .line 749
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 748
    throw v4

    .line 752
    .end local v2    # "identity":J
    :cond_56
    invoke-virtual {p0, v7, p3}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getAllowGoogleBackup(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 753
    iget-boolean v4, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAutoRestore:Z

    if-eqz v4, :cond_2f

    .line 754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 756
    .restart local v2    # "identity":J
    if-eqz v1, :cond_6a

    .line 757
    const/4 v4, 0x1

    :try_start_67
    invoke-interface {v1, v4}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6e
    .catchall {:try_start_67 .. :try_end_6a} :catchall_8d

    .line 762
    :cond_6a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 759
    :catch_6e
    move-exception v0

    .line 760
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6f
    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBackupManager error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_8d

    .line 762
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 761
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_8d
    move-exception v4

    .line 762
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 761
    throw v4
.end method

.method protected setEnforceAlertMobileDataUsage(Landroid/content/ComponentName;ZJZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "warn"    # J
    .param p5, "oldGlobalPolicy"    # Z
    .param p6, "userHandle"    # I

    .prologue
    .line 846
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 847
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarnMobileDataUsage:Z

    if-ne v1, p2, :cond_14

    .line 848
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setEnforceAlertMobileDataUsage : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    return-void

    .line 851
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarnMobileDataUsage:Z

    .line 852
    iput-wide p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageWarn:J

    .line 845
    return-void
.end method

.method protected setEnforceBackgroundDataRestricted(Landroid/content/ComponentName;ZIZ)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I
    .param p4, "restrictBackgroundValue"    # Z

    .prologue
    .line 606
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 608
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundDataRestricted:Z

    if-ne v1, p2, :cond_14

    .line 609
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setAllowMobileNetwork : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return-object v0

    .line 612
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundDataRestricted:Z

    .line 614
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundDataRestricted:Z

    if-nez v1, :cond_1c

    .line 615
    iput-boolean p4, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBackgroundDataRestricted:Z

    .line 617
    :cond_1c
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setEnforceBackgroundDataRestricted"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-object v0
.end method

.method protected setEnforceLimitMobileDataUsage(Landroid/content/ComponentName;ZJZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "limit"    # J
    .param p5, "oldGlobalPolicy"    # Z
    .param p6, "userHandle"    # I

    .prologue
    .line 819
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 820
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceLimitMobileDataUsage:Z

    if-ne v1, p2, :cond_14

    .line 821
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "setEnforceLimitMobileDataUsage : same policy is called"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    return-void

    .line 824
    :cond_14
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceLimitMobileDataUsage:Z

    .line 825
    iput-wide p3, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageLimit:J

    .line 818
    return-void
.end method

.method protected setEnforceMobileNetworkEnabled(Landroid/content/ComponentName;ZI)Lcom/lge/mdm/admin/LGMDMadminlist;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 176
    const-string/jumbo v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnforceMobileNetworkEnabled : set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMadministrator;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;)Lcom/lge/mdm/admin/LGMDMadminlist;

    move-result-object v0

    .line 179
    .local v0, "admin":Lcom/lge/mdm/admin/LGMDMadminlist;
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMobileNetworkEnabled:Z

    if-ne v1, p2, :cond_46

    .line 180
    const-string/jumbo v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnforceMobileNetworkEnabled : same policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v0

    .line 185
    :cond_46
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;I)Z

    move-result v1

    if-ne v1, p2, :cond_6a

    .line 186
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMobileNetworkEnabled:Z

    .line 187
    const-string/jumbo v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Global policy is equal to enforce that value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object v0

    .line 190
    :cond_6a
    iput-boolean p2, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMobileNetworkEnabled:Z

    .line 191
    iget-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMobileNetworkEnabled:Z

    if-eqz v1, :cond_86

    .line 192
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->isMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateEnforceMobileNetwork:Z

    .line 193
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 194
    const-string/jumbo v2, "preferred_data_network_mode"

    const/4 v3, 0x1

    .line 193
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->prePayPopup:I

    .line 196
    :cond_86
    return-object v0
.end method

.method protected setGoogleBackup(Lcom/lge/mdm/admin/LGMDMadminlist;ZI)V
    .registers 13
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p2, "enable"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 671
    const-string/jumbo v6, "backup"

    .line 670
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 673
    .local v1, "mBackupManager":Landroid/app/backup/IBackupManager;
    if-eqz p2, :cond_56

    .line 674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 676
    .local v2, "identity":J
    :try_start_14
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 677
    const-string/jumbo v7, "backup_enabled"

    const/4 v8, 0x0

    .line 676
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_30

    :goto_24
    iput-boolean v4, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGoogleBackup:Z

    .line 679
    if-eqz v1, :cond_2c

    .line 680
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2c} :catch_32
    .catchall {:try_start_14 .. :try_end_2c} :catchall_51

    .line 685
    :cond_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    .end local v2    # "identity":J
    :cond_2f
    :goto_2f
    return-void

    .restart local v2    # "identity":J
    :cond_30
    move v4, v5

    .line 677
    goto :goto_24

    .line 682
    :catch_32
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Exception;
    :try_start_33
    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBackupManager error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_51

    .line 685
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 684
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_51
    move-exception v4

    .line 685
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 684
    throw v4

    .line 688
    .end local v2    # "identity":J
    :cond_56
    invoke-virtual {p0, v7, p3}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getAllowGoogleBackup(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 689
    iget-boolean v4, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGoogleBackup:Z

    if-eqz v4, :cond_2f

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 692
    .restart local v2    # "identity":J
    if-eqz v1, :cond_6a

    .line 693
    const/4 v4, 0x1

    :try_start_67
    invoke-interface {v1, v4}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6e
    .catchall {:try_start_67 .. :try_end_6a} :catchall_8d

    .line 698
    :cond_6a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 695
    :catch_6e
    move-exception v0

    .line 696
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6f
    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBackupManager error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_8d

    .line 698
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 697
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_8d
    move-exception v4

    .line 698
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    throw v4
.end method

.method protected setMobileDataUsageInfo(IZJ)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "newGlobalPolicy"    # Z
    .param p3, "changingMobileDataUsage"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1028
    const-wide/16 v0, 0x0

    .line 1030
    .local v0, "convertByte":J
    packed-switch p1, :pswitch_data_a4

    .line 1094
    :goto_b
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->writeAsync()V

    .line 1027
    return-void

    .line 1032
    :pswitch_f
    if-eqz p2, :cond_12

    .line 1033
    return-void

    .line 1035
    :cond_12
    cmp-long v2, p3, v2

    if-nez v2, :cond_17

    .line 1036
    return-void

    .line 1038
    :cond_17
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKDual:Z

    if-nez v2, :cond_1f

    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTDual:Z

    if-eqz v2, :cond_26

    .line 1039
    :cond_1f
    invoke-direct {p0, v4, v4, p3, p4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    .line 1040
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    goto :goto_b

    .line 1041
    :cond_26
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKTriple:Z

    if-nez v2, :cond_2e

    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTTriple:Z

    if-eqz v2, :cond_38

    .line 1042
    :cond_2e
    invoke-direct {p0, v4, v4, p3, p4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    .line 1043
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    .line 1044
    invoke-direct {p0, v4, v6, p3, p4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    goto :goto_b

    .line 1046
    :cond_38
    invoke-direct {p0, v4, v7, p3, p4}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    goto :goto_b

    .line 1050
    :pswitch_3c
    if-nez p2, :cond_3f

    .line 1051
    return-void

    .line 1054
    :cond_3f
    const-wide/16 v2, 0xa

    cmp-long v2, p3, v2

    if-gtz v2, :cond_46

    .line 1055
    return-void

    .line 1058
    :cond_46
    const-wide/32 v2, 0x100000

    mul-long v0, p3, v2

    .line 1059
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKDual:Z

    if-nez v2, :cond_53

    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTDual:Z

    if-eqz v2, :cond_5a

    .line 1060
    :cond_53
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    .line 1061
    invoke-direct {p0, v5, v5, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    goto :goto_b

    .line 1062
    :cond_5a
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKTriple:Z

    if-nez v2, :cond_62

    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTTriple:Z

    if-eqz v2, :cond_6c

    .line 1063
    :cond_62
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    .line 1064
    invoke-direct {p0, v5, v5, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    .line 1065
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    goto :goto_b

    .line 1067
    :cond_6c
    invoke-direct {p0, v5, v7, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    goto :goto_b

    .line 1071
    :pswitch_70
    if-nez p2, :cond_73

    .line 1072
    return-void

    .line 1074
    :cond_73
    cmp-long v2, p3, v2

    if-nez v2, :cond_78

    .line 1075
    return-void

    .line 1078
    :cond_78
    const-wide/32 v2, 0x100000

    mul-long v0, p3, v2

    .line 1079
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKDual:Z

    if-nez v2, :cond_85

    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTDual:Z

    if-eqz v2, :cond_8c

    .line 1080
    :cond_85
    invoke-direct {p0, v6, v4, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    .line 1081
    invoke-direct {p0, v6, v5, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    goto :goto_b

    .line 1082
    :cond_8c
    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsMTKTriple:Z

    if-nez v2, :cond_94

    iget-boolean v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mIsQCTTriple:Z

    if-eqz v2, :cond_9f

    .line 1083
    :cond_94
    invoke-direct {p0, v6, v4, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    .line 1084
    invoke-direct {p0, v6, v5, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    .line 1085
    invoke-direct {p0, v6, v6, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    goto/16 :goto_b

    .line 1087
    :cond_9f
    invoke-direct {p0, v6, v7, v0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setValue(IIJ)V

    goto/16 :goto_b

    .line 1030
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_3c
        :pswitch_70
    .end packed-switch
.end method

.method protected settingDataRoaming(Landroid/content/ComponentName;ILcom/lge/mdm/admin/LGMDMadminlist;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;

    .prologue
    .line 305
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getAllowDataRoaming(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 308
    .local v0, "identity":J
    :try_start_b
    iget-boolean v2, p3, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateDataRoaming:Z

    if-eqz v2, :cond_16

    .line 309
    const/4 v2, 0x0

    iput-boolean v2, p3, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateDataRoaming:Z

    .line 310
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setDataRoamingEnabled(Z)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1a

    .line 313
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    :goto_19
    return-void

    .line 312
    :catchall_1a
    move-exception v2

    .line 313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    throw v2

    .line 316
    .end local v0    # "identity":J
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 318
    .restart local v0    # "identity":J
    const/4 v2, 0x0

    :try_start_24
    invoke-direct {p0, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setDataRoamingEnabled(Z)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    .line 319
    :catchall_2b
    move-exception v2

    .line 320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    throw v2
.end method

.method protected settingEnforceMobileNetworkEnabled(Landroid/content/ComponentName;ZILcom/lge/mdm/admin/LGMDMadminlist;)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enforce"    # Z
    .param p3, "userHandle"    # I
    .param p4, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 203
    .local v2, "identity":J
    if-eqz p2, :cond_3d

    .line 204
    :try_start_6
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setMobileDataEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 206
    const-string/jumbo v4, "preferred_data_network_mode"

    const/4 v5, 0x0

    .line 205
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v4, "settingEnforceMobileNetworkEnabled : enforce set to true"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_69
    .catchall {:try_start_6 .. :try_end_1f} :catchall_88

    .line 223
    :cond_1f
    :goto_1f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    :goto_22
    const-string/jumbo v1, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "settingEnforceMobileNetworkEnabled : setMobileDataEnabled set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 209
    :cond_3d
    :try_start_3d
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 210
    const-string/jumbo v4, "preferred_data_network_mode"

    iget v5, p4, Lcom/lge/mdm/admin/LGMDMadminlist;->prePayPopup:I

    .line 209
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    const/4 v1, 0x1

    iput v1, p4, Lcom/lge/mdm/admin/LGMDMadminlist;->prePayPopup:I

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getAllowMobileNetwork(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 213
    iget-boolean v1, p4, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateEnforceMobileNetwork:Z

    if-nez v1, :cond_1f

    .line 215
    :cond_59
    const/4 v1, 0x1

    iput-boolean v1, p4, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateEnforceMobileNetwork:Z

    .line 216
    invoke-direct {p0, p2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setMobileDataEnabled(Z)V

    .line 217
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v4, "settingEnforceMobileNetworkEnabled : enforce set to false"

    invoke-static {v1, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_68} :catch_69
    .catchall {:try_start_3d .. :try_end_68} :catchall_88

    goto :goto_1f

    .line 220
    :catch_69
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6a
    const-string/jumbo v1, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "settingEnforceMobileNetworkEnabled exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_6a .. :try_end_84} :catchall_88

    .line 223
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_22

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_88
    move-exception v1

    .line 223
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    throw v1
.end method

.method protected settingMobileNetwork(Landroid/content/ComponentName;ILcom/lge/mdm/admin/LGMDMadminlist;)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;

    .prologue
    const/4 v1, 0x0

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/lge/mdm/controller/LGMDMNetworkController;->getAllowMobileNetwork(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 150
    iget-boolean v0, p3, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateMobileNetwork:Z

    if-eqz v0, :cond_12

    .line 151
    iput-boolean v1, p3, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateMobileNetwork:Z

    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setMobileDataEnabled(Z)V

    .line 148
    :cond_12
    :goto_12
    return-void

    .line 155
    :cond_13
    invoke-direct {p0, v1}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setMobileDataEnabled(Z)V

    goto :goto_12
.end method

.method protected turnOn3G4GDataNetwork(Landroid/content/ComponentName;ZI)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 555
    if-eqz p1, :cond_8

    .line 556
    if-eqz p2, :cond_9

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setMobileDataEnabled(Z)V

    .line 554
    :cond_8
    :goto_8
    return-void

    .line 559
    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMNetworkController;->setMobileDataEnabled(Z)V

    goto :goto_8
.end method

.method public writeAsync()V
    .registers 4

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMNetworkController;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 1160
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    new-instance v1, Lcom/lge/mdm/controller/LGMDMNetworkController$1;

    invoke-direct {v1, p0, v0}, Lcom/lge/mdm/controller/LGMDMNetworkController$1;-><init>(Lcom/lge/mdm/controller/LGMDMNetworkController;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/lge/mdm/controller/LGMDMNetworkController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1158
    return-void
.end method
