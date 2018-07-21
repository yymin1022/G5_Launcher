.class public Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field public static final GOOGLEMAP_GOOGLELOCATION_SERVICE:Ljava/lang/String; = "com.google.android.apps.maps:GoogleLocationService"

.field public static final GOOGLEMAP_NETWORK_SERVICE:Ljava/lang/String; = "com.google.android.apps.maps:NetworkLocationService"

.field private static final MESSAGE_CHECKNOTIFYSPECIFICPROCESSKILLEVENT:I = 0x2

.field private static final MESSAGE_CHECKSTARTLOCKDOWNAPPS:I = 0x1

.field private static final MESSAGE_SETCRASHAPPLICTION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LGMDMUIApplicationAdapter"

.field static final TELEPHONY_PACKAGE:Ljava/lang/String; = "com.lge.ltecall"

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->handleCheckNotifySpecificProcessKillEvent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Ljava/lang/String;Landroid/content/Intent;ZI)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isdied"    # Z
    .param p4, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->handleCheckStartLockdownApps(Ljava/lang/String;Landroid/content/Intent;ZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->handleSetCrashAppliction(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "LGMDMUIApplicationAdapter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "t":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 83
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 84
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_15

    .line 85
    return-void

    .line 87
    :cond_15
    new-instance v2, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$1;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method private allowLockdownApps(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "runningAppPkgName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 421
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    .line 422
    .local v8, "callstate":I
    const-string/jumbo v6, "com.android.phone"

    .line 423
    .local v6, "PHONE":Ljava/lang/String;
    const-string/jumbo v0, "com.android.contacts"

    .line 424
    .local v0, "CONTACT":Ljava/lang/String;
    const-string/jumbo v4, "com.lge.icecontacts"

    .line 425
    .local v4, "EMERGENCY_CALL":Ljava/lang/String;
    const-string/jumbo v1, "com.android.contacts.action"

    .line 426
    .local v1, "CONTACT_ACTION_ICS":Ljava/lang/String;
    const-string/jumbo v2, "com.android.contacts"

    .line 427
    .local v2, "CONTACT_ACTION_JB":Ljava/lang/String;
    const-string/jumbo v5, "com.android.incallui"

    .line 428
    .local v5, "INCALLUI":Ljava/lang/String;
    const-string/jumbo v3, "com.lge.emergencycontacts"

    .line 429
    .local v3, "EMERGENCY":Ljava/lang/String;
    const-string/jumbo v7, "com.lge.vt"

    .line 432
    .local v7, "VT":Ljava/lang/String;
    const-string/jumbo v10, "ril.cdma.inecmmode"

    .line 431
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 433
    .local v9, "isInEcm":Z
    const-string/jumbo v10, "com.android.phone"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    const-string/jumbo v10, "com.android.phone"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_71

    if-eqz v9, :cond_71

    .line 434
    const-string/jumbo v10, "LGMDMUIApplicationAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "allowLockdownApps ecm is on="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v10, 0x0

    return v10

    .line 439
    :cond_71
    const-string/jumbo v10, "com.android.phone"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_87

    .line 440
    const-string/jumbo v10, "com.android.phone"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_87

    .line 441
    if-eqz v8, :cond_87

    .line 442
    const/4 v10, 0x0

    return v10

    .line 444
    :cond_87
    const-string/jumbo v10, "com.lge.ltecall"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9d

    .line 445
    const-string/jumbo v10, "com.lge.ltecall"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9d

    .line 446
    if-eqz v8, :cond_9d

    .line 447
    const/4 v10, 0x0

    return v10

    .line 449
    :cond_9d
    const-string/jumbo v10, "com.android.contacts"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 450
    if-eqz p3, :cond_c1

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_c1

    .line 452
    const-string/jumbo v10, ".activities.ICEContactActivity"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 454
    const/4 v10, 0x0

    return v10

    .line 457
    :cond_c1
    const-string/jumbo v10, "com.lge.icecontacts"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_112

    if-eqz p3, :cond_112

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_112

    .line 458
    const-string/jumbo v10, ".ICEContactActivity"

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    .line 458
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_112

    .line 461
    const-string/jumbo v10, "LGMDMUIApplicationAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Emergency call is allowed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v12

    .line 461
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v10, 0x0

    return v10

    .line 466
    :cond_112
    const-string/jumbo v10, "com.android.phone"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_185

    if-eqz p3, :cond_185

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_185

    .line 467
    const-string/jumbo v10, ".EmergencyDialer"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_145

    .line 468
    const-string/jumbo v10, ".InCallScreen"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_174

    .line 471
    :cond_145
    const-string/jumbo v10, "LGMDMUIApplicationAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Emergency dialer is allowed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v12

    .line 471
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v10, 0x0

    return v10

    .line 469
    :cond_174
    const-string/jumbo v10, ".LGEmergencyListActivity"

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    .line 469
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_145

    .line 475
    :cond_185
    const-string/jumbo v10, "com.lge.emergencycontacts"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a9

    .line 476
    if-eqz p3, :cond_1a9

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1a9

    .line 478
    const-string/jumbo v10, ".EmergencyContactsListActivity"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a9

    .line 480
    const/4 v10, 0x0

    return v10

    .line 482
    :cond_1a9
    const-string/jumbo v10, "com.android.contacts.action"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1cd

    if-eqz p3, :cond_1cd

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1cd

    .line 484
    const-string/jumbo v10, ".ICE_CONTACT_LIST"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1cd

    .line 485
    const/4 v10, 0x0

    return v10

    .line 487
    :cond_1cd
    const-string/jumbo v10, "com.android.contacts"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_213

    .line 488
    if-eqz p3, :cond_213

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_213

    .line 490
    const-string/jumbo v10, ".ice.ICEContactActivity"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_200

    .line 491
    const-string/jumbo v10, ".activities.ICEContactActivity"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_202

    .line 493
    :cond_200
    const/4 v10, 0x0

    return v10

    .line 492
    :cond_202
    const-string/jumbo v10, ".ice.DetailEmergencyInfo"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_200

    .line 495
    :cond_213
    const-string/jumbo v10, "com.lge.vt"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_259

    .line 496
    if-eqz p3, :cond_259

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_259

    .line 498
    const-string/jumbo v10, ".ui.QcifVideoCallActivity"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_246

    .line 499
    const-string/jumbo v10, ".ui.GroupVideoCallActivity"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_248

    .line 502
    :cond_246
    const/4 v10, 0x0

    return v10

    .line 500
    :cond_248
    const-string/jumbo v10, ".ui.VgaVideoCallActivity"

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    .line 500
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_246

    .line 504
    :cond_259
    const-string/jumbo v10, "com.android.phone"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28e

    .line 505
    if-eqz p3, :cond_28e

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_28e

    .line 507
    const-string/jumbo v10, ".DualSimSetupWizard"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28c

    .line 508
    const-string/jumbo v10, ".FirstDualSimSettings"

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    .line 508
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28e

    .line 510
    :cond_28c
    const/4 v10, 0x0

    return v10

    .line 512
    :cond_28e
    const-string/jumbo v10, "com.android.phone"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b2

    .line 513
    if-eqz p3, :cond_2b2

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_2b2

    .line 515
    const-string/jumbo v10, ".EmergencyCallbackModeActivity"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b2

    .line 517
    const/4 v10, 0x0

    return v10

    .line 519
    :cond_2b2
    const-string/jumbo v10, "com.android.incallui"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d6

    .line 520
    if-eqz p3, :cond_2d6

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_2d6

    .line 522
    const-string/jumbo v10, ".InCallActivity"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d6

    .line 524
    const/4 v10, 0x0

    return v10

    .line 526
    :cond_2d6
    const-string/jumbo v10, "com.lge.ltecall"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2fa

    .line 527
    if-eqz p3, :cond_2fa

    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_2fa

    .line 529
    const-string/jumbo v10, ".volte.view.VoIPCallScreen"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2fa

    .line 531
    const/4 v10, 0x0

    return v10

    .line 533
    :cond_2fa
    const/4 v10, 0x1

    return v10
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    .line 77
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    return-object v0
.end method

.method private googleErrorReportDisabled(Ljava/lang/String;I)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 689
    if-nez p1, :cond_5

    .line 690
    return v6

    .line 692
    :cond_5
    const-string/jumbo v3, "LGMDMUIApplicationAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "googleErrorReportDisabled packageName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string/jumbo v0, "com.google.android.feedback"

    .line 695
    .local v0, "FEEDBACK_APP":Ljava/lang/String;
    const-string/jumbo v3, "com.google.android.feedback"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 696
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 697
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGoogleErrorReport(Landroid/content/ComponentName;I)I

    move-result v2

    .line 699
    .local v2, "policy":I
    if-lez v2, :cond_41

    .line 700
    const-string/jumbo v3, "LGMDMUIApplicationAdapter"

    const-string/jumbo v4, "googleErrorReportDisabled : LGMDM Block Google feedback APP"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const/16 v3, -0x73

    return v3

    .line 704
    .end local v1    # "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .end local v2    # "policy":I
    :cond_41
    return v6
.end method

.method private handleCheckNotifySpecificProcessKillEvent(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 553
    const-string/jumbo v4, "LGMDMUIApplicationAdapter"

    const-string/jumbo v5, "[handleCheckNotifySpecificProcessKillEvent] packageName is null"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void

    .line 556
    :cond_11
    const-string/jumbo v4, "LGMDMUIApplicationAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[handleCheckNotifySpecificProcessKillEvent] packageName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 559
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNotifySpecificProcessKillEvent(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 560
    .local v0, "allow":Z
    if-nez v0, :cond_36

    .line 561
    return-void

    .line 564
    :cond_36
    invoke-virtual {v1, v7, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getNotifySpecificProcessKillEventList(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    .line 565
    .local v2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_3d

    .line 566
    return-void

    .line 569
    :cond_3d
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v3, 0x1

    .line 570
    .local v3, "result":Z
    :goto_44
    if-eqz v3, :cond_49

    .line 571
    invoke-virtual {v1, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendBroadcastNotifyProcessKillEvent(Ljava/lang/String;I)V

    .line 551
    :cond_49
    return-void

    .line 569
    .end local v3    # "result":Z
    :cond_4a
    const/4 v3, 0x0

    .restart local v3    # "result":Z
    goto :goto_44
.end method

.method private handleCheckStartLockdownApps(Ljava/lang/String;Landroid/content/Intent;ZI)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isdied"    # Z
    .param p4, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 390
    const-string/jumbo v4, "LGMDMUIApplicationAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleCheckStartLockdownApps packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 391
    const-string/jumbo v6, ", isdied:"

    .line 390
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 391
    const-string/jumbo v6, ", userHandle:"

    .line 390
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-nez p1, :cond_3f

    .line 393
    return-void

    .line 395
    :cond_3f
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v2

    .line 396
    .local v2, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v2, v7, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowLockdownApps(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 397
    .local v0, "allow":Z
    if-nez v0, :cond_4a

    .line 398
    return-void

    .line 401
    :cond_4a
    invoke-virtual {v2, v7, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockdownAppsPackage(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "lockdownAppsPackage":Ljava/lang/String;
    if-nez v1, :cond_51

    .line 403
    return-void

    .line 406
    :cond_51
    if-nez p3, :cond_74

    .line 407
    invoke-direct {p0, p1, v1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->allowLockdownApps(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    .line 408
    .local v3, "result":Z
    const-string/jumbo v4, "LGMDMUIApplicationAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "allowLockdownApps  result == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    if-nez v3, :cond_74

    .line 410
    return-void

    .line 414
    .end local v3    # "result":Z
    :cond_74
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, p3, :cond_81

    const/4 v3, 0x1

    .line 415
    .local v3, "result":Z
    :goto_7b
    if-eqz v3, :cond_80

    .line 416
    invoke-virtual {v2, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->startLockdownApps(I)Z

    .line 389
    :cond_80
    return-void

    .line 414
    .end local v3    # "result":Z
    :cond_81
    const/4 v3, 0x0

    .restart local v3    # "result":Z
    goto :goto_7b
.end method

.method private handleSetCrashAppliction(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 589
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v2

    .line 590
    .local v2, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v2, v3, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowLockdownApps(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 592
    .local v1, "isLockdownApps":Z
    if-nez v1, :cond_c

    .line 593
    return-void

    .line 595
    :cond_c
    invoke-virtual {v2, v3, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockdownAppsPackage(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "LockdownAppsPackage":Ljava/lang/String;
    if-eqz p1, :cond_1b

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 597
    invoke-virtual {v2, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->reportLockdownApps(Ljava/lang/String;I)V

    .line 588
    :cond_1b
    return-void
.end method

.method private isLocationExceptionApp(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .registers 14
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v9, 0x0

    .line 624
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const/high16 v6, 0x10000

    .line 627
    invoke-virtual {p1, v1, v6, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 630
    .local v3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_7f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7f

    .line 631
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v2, "packagenameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "resolInfo$iterator":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 633
    .local v4, "resolInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_5a

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 635
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_38
    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    const-string/jumbo v6, "LGMDMUIApplicationAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ci.packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 634
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_5a
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_38

    .line 638
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v4    # "resolInfo":Landroid/content/pm/ResolveInfo;
    :cond_5d
    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    const-string/jumbo v6, "android"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 639
    const-string/jumbo v6, "com.google.android.apps.maps"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 638
    if-nez v6, :cond_7e

    .line 640
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 638
    if-eqz v6, :cond_7f

    .line 641
    :cond_7e
    return v9

    .line 644
    .end local v2    # "packagenameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "resolInfo$iterator":Ljava/util/Iterator;
    :cond_7f
    const/4 v6, 0x1

    return v6
.end method

.method private killProcess(Ljava/lang/String;I)V
    .registers 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 604
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 607
    .local v0, "ams":Landroid/app/IActivityManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 608
    .local v4, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_e
    if-ltz v3, :cond_59

    .line 609
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 610
    .local v1, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string/jumbo v5, "LGMDMUIApplicationAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "app.processName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 612
    const-string/jumbo v5, "LGMDMUIApplicationAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Start Kill Process : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v5}, Landroid/os/Process;->killProcessQuiet(I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_59} :catch_5d

    .line 602
    .end local v1    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "i":I
    .end local v4    # "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_59
    :goto_59
    return-void

    .line 608
    .restart local v1    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3    # "i":I
    .restart local v4    # "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_5a
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 617
    .end local v1    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "i":I
    .end local v4    # "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_5d
    move-exception v2

    .line 618
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "LGMDMUIApplicationAdapter"

    const-string/jumbo v6, "Failed talking ActivityManager.RunningAppProcessInfo"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method private sendToastMessage(II)I
    .registers 5
    .param p1, "rv"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 310
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 312
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    packed-switch p1, :pswitch_data_68

    .line 366
    :goto_7
    :pswitch_7
    return p1

    .line 314
    :pswitch_8
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_blockbrowser_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 317
    :pswitch_e
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_smsmms_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 320
    :pswitch_14
    sget v1, Lcom/lge/internal/R$string;->sp_block_enable_unsigned_app_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 323
    :pswitch_1a
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_app_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 326
    :pswitch_20
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_blockscreencapture_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 329
    :pswitch_26
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_playstore_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 332
    :pswitch_2c
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_youtube_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 335
    :pswitch_32
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_voice_dialer_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 338
    :pswitch_38
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_setting_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 341
    :pswitch_3e
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_task_manager_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 344
    :pswitch_44
    sget v1, Lcom/lge/internal/R$string;->sp_block_microphone_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 347
    :pswitch_4a
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_loaction_point:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 350
    :pswitch_50
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_lgbackup_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 353
    :pswitch_56
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_cannot_google_crash_report:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 357
    :pswitch_5c
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_voice_apps_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 361
    :pswitch_62
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_dlna_point:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    goto :goto_7

    .line 312
    :pswitch_data_68
    .packed-switch -0x75
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_3e
        :pswitch_38
        :pswitch_7
        :pswitch_4a
        :pswitch_44
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public checkCCmodePolicy(Landroid/content/Context;Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "who"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 708
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 709
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCommonCriteriaMode(Landroid/content/ComponentName;I)I

    move-result v0

    .line 710
    .local v0, "ccmodePolicy":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    .line 711
    invoke-virtual {v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getCountCommonCriteriaModeEnable(I)I

    move-result v2

    if-ne v2, v4, :cond_1c

    .line 712
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->notyCCmodeChangeDialog(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 714
    return v4

    .line 717
    :cond_1b
    return v3

    .line 719
    :cond_1c
    return v3
.end method

.method public checkDisabledRemoveAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 155
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 156
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 157
    sget v1, Lcom/lge/internal/R$string;->remove_device_block_NORMAL:I

    invoke-virtual {v0, v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 158
    const/4 v1, 0x1

    return v1

    .line 160
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public checkInstallByMDM(II)Z
    .registers 5
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 648
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 649
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkInstallByMDM(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 650
    const/4 v1, 0x1

    return v1

    .line 652
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public checkNotifySpecificProcessKillEvent(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 538
    const-string/jumbo v1, "LGMDMUIApplicationAdapter"

    const-string/jumbo v2, "[checkNotifySpecificProcessKillEvent] packageName is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void

    .line 541
    :cond_10
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_15

    .line 542
    return-void

    .line 544
    :cond_15
    const-string/jumbo v1, "LGMDMUIApplicationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[checkNotifySpecificProcessKillEvent] packageName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 547
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 548
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 536
    return-void
.end method

.method public checkStartActivityLocked(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)I
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "resContext"    # Landroid/content/Context;
    .param p3, "mPackageName"    # Ljava/lang/String;
    .param p4, "mClassName"    # Ljava/lang/String;
    .param p5, "hasToast"    # Z
    .param p6, "userHandle"    # I

    .prologue
    .line 231
    const/4 v8, 0x0

    .line 232
    .local v8, "rv":I
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v7

    .line 234
    .local v7, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v7, :cond_9

    .line 235
    const/4 v0, 0x0

    return v0

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    .line 238
    invoke-virtual/range {v0 .. v5}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->checkStartActivityLockedForEAS(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v8

    .line 239
    if-eqz v8, :cond_16

    .line 240
    return v8

    .line 244
    :cond_16
    invoke-virtual {v7, p3, p6}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkApplicationEnable(Ljava/lang/String;I)I

    move-result v8

    .line 245
    if-eqz v8, :cond_24

    .line 246
    if-eqz p5, :cond_23

    .line 247
    invoke-direct {p0, v8, p6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sendToastMessage(II)I

    move-result v0

    return v0

    .line 249
    :cond_23
    return v8

    .line 254
    :cond_24
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p6}, Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;->checkScreenCapture(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 256
    if-eqz v8, :cond_63

    .line 257
    const-string/jumbo v0, "com.lge.QuickClip"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 258
    const-string/jumbo v0, "com.lge.qmemoplus"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 259
    const-string/jumbo v0, "com.lge.qmemoplus.quickmode.QuickModeActivity"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 257
    if-nez v0, :cond_5b

    .line 261
    :cond_49
    const-string/jumbo v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 262
    const-string/jumbo v0, "com.google.android.apps.gsa.velour.dynamichosts.VelvetDynamicHostActivity"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 257
    if-eqz v0, :cond_63

    .line 263
    :cond_5b
    if-eqz p5, :cond_62

    .line 264
    invoke-direct {p0, v8, p6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sendToastMessage(II)I

    move-result v0

    return v0

    .line 266
    :cond_62
    return v8

    .line 272
    :cond_63
    invoke-direct {p0, p3, p6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->googleErrorReportDisabled(Ljava/lang/String;I)I

    move-result v8

    .line 273
    if-eqz v8, :cond_71

    .line 274
    if-eqz p5, :cond_70

    .line 275
    invoke-direct {p0, v8, p6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sendToastMessage(II)I

    move-result v0

    return v0

    .line 277
    :cond_70
    return v8

    .line 282
    :cond_71
    invoke-virtual {v7, p1, p6}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowReceivingSmsMms(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_85

    .line 283
    invoke-static {p3}, Lcom/lge/mdm/util/SpecificPackageName;->isMessageApp(Ljava/lang/String;)I

    move-result v8

    .line 284
    if-eqz v8, :cond_85

    .line 285
    if-eqz p5, :cond_84

    .line 286
    invoke-direct {p0, v8, p6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sendToastMessage(II)I

    move-result v0

    return v0

    .line 288
    :cond_84
    return v8

    .line 294
    :cond_85
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 295
    .local v6, "mPm":Landroid/content/pm/PackageManager;
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v6, v0, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9b

    .line 296
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v0, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b2

    .line 297
    :cond_9b
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p6}, Lcom/lge/mdm/frameworks/LGMDMUISystemServiceAdapter;->checkWirelessLocationWithWhitelist(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 299
    invoke-direct {p0, v6, p3, p6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->isLocationExceptionApp(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 300
    if-eqz p5, :cond_b2

    .line 301
    const/16 v0, -0x6e

    invoke-direct {p0, v0, p6}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sendToastMessage(II)I

    .line 306
    :cond_b2
    const/4 v0, 0x0

    return v0
.end method

.method public checkStartActivityLockedForEAS(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;ZI)I
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "resContext"    # Landroid/content/Context;
    .param p3, "mPackageName"    # Ljava/lang/String;
    .param p4, "hasToast"    # Z
    .param p5, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "rv":I
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 178
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez v1, :cond_9

    .line 179
    return v4

    .line 182
    :cond_9
    invoke-virtual {v1, p5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getActiveAdminList(I)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "cnList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v0, :cond_10

    .line 184
    return v4

    .line 188
    :cond_10
    invoke-virtual {v1, p1, p5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 189
    invoke-virtual {v1, p1, p5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowNonWebkitBrowser(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 202
    :cond_1c
    invoke-virtual {v1, p1, p5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSendingSMS(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_42

    .line 203
    invoke-static {p3}, Lcom/lge/mdm/util/SpecificPackageName;->isMessageApp(Ljava/lang/String;)I

    move-result v2

    .line 204
    if-eqz v2, :cond_42

    .line 205
    if-eqz p4, :cond_41

    .line 206
    invoke-direct {p0, v2, p5}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sendToastMessage(II)I

    move-result v3

    return v3

    .line 190
    :cond_2f
    invoke-static {}, Lcom/lge/mdm/util/LGMDMCheckApplication;->getInstance()Lcom/lge/mdm/util/LGMDMCheckApplication;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p5}, Lcom/lge/mdm/util/LGMDMCheckApplication;->checkStartBrowserActivityLocked(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 192
    if-eqz v2, :cond_1c

    .line 193
    if-eqz p4, :cond_40

    .line 194
    invoke-direct {p0, v2, p5}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sendToastMessage(II)I

    move-result v3

    return v3

    .line 196
    :cond_40
    return v2

    .line 208
    :cond_41
    return v2

    .line 214
    :cond_42
    invoke-virtual {v1, p1, p5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUnsignedApplication(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 215
    invoke-static {}, Lcom/lge/mdm/util/LGMDMCheckApplication;->getInstance()Lcom/lge/mdm/util/LGMDMCheckApplication;

    move-result-object v3

    invoke-virtual {v3, p3, v0, p5}, Lcom/lge/mdm/util/LGMDMCheckApplication;->checkUnsignedApplicationEnable(Ljava/lang/String;Ljava/util/List;I)I

    move-result v2

    .line 217
    if-eqz v2, :cond_5a

    .line 218
    if-eqz p4, :cond_59

    .line 219
    invoke-direct {p0, v2, p5}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sendToastMessage(II)I

    move-result v3

    return v3

    .line 221
    :cond_59
    return v2

    .line 225
    :cond_5a
    return v4
.end method

.method public checkStartLockdownApps(Ljava/lang/String;Landroid/content/Intent;ZI)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isdied"    # Z
    .param p4, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 371
    if-nez p1, :cond_d

    .line 372
    const-string/jumbo v2, "LGMDMUIApplicationAdapter"

    const-string/jumbo v3, "[checkStartLockdownApps] packageName null"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void

    .line 375
    :cond_d
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_12

    .line 376
    return-void

    .line 378
    :cond_12
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 379
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;

    invoke-direct {v0, p0, v4}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;)V

    .line 380
    .local v0, "info":Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;
    iput-object p1, v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->packageName:Ljava/lang/String;

    .line 381
    iput-object p2, v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->intent:Landroid/content/Intent;

    .line 382
    iput-boolean p3, v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->isdied:Z

    .line 383
    iput p4, v0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->userHandle:I

    .line 384
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    return-void
.end method

.method public existPolicyOfApplicationHided(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 656
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v3

    .line 657
    .local v3, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v3, v4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getApplicationState(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 658
    .local v1, "appStateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 660
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/mdm/config/LGMDMApplicationState;>;"
    if-eqz p1, :cond_39

    .line 661
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 662
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMApplicationState;

    .line 663
    .local v0, "appState":Lcom/lge/mdm/config/LGMDMApplicationState;
    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getEnable()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    .line 664
    invoke-virtual {v0}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 663
    if-eqz v4, :cond_11

    .line 665
    const-string/jumbo v4, "LGMDMUIApplicationAdapter"

    const-string/jumbo v5, "[existPolicyOfApplicationHided][return:true]"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const/4 v4, 0x1

    return v4

    .line 670
    .end local v0    # "appState":Lcom/lge/mdm/config/LGMDMApplicationState;
    :cond_39
    const-string/jumbo v4, "LGMDMUIApplicationAdapter"

    const-string/jumbo v5, "[existPolicyOfApplicationHided][return:false]"

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v4, 0x0

    return v4
.end method

.method public getAllowScreenPin(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 164
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 165
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowScreenPin(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 166
    const-string/jumbo v1, "LGMDMUIApplicationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAllowScreenPin is false="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget v1, Lcom/lge/internal/R$string;->sp_block_screen_pin_NORMAL:I

    invoke-virtual {v0, v1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 168
    const/4 v1, 0x0

    return v1

    .line 170
    :cond_2b
    const/4 v1, 0x1

    return v1
.end method

.method public googleErrorReportDisabled(I)Z
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 676
    const-string/jumbo v2, "LGMDMUIApplicationAdapter"

    const-string/jumbo v3, "googleErrorReportDisabled"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 678
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowGoogleErrorReport(Landroid/content/ComponentName;I)I

    move-result v1

    .line 680
    .local v1, "policy":I
    if-lez v1, :cond_25

    .line 681
    const/16 v2, -0x73

    invoke-direct {p0, v2, p1}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->sendToastMessage(II)I

    .line 682
    const-string/jumbo v2, "LGMDMUIApplicationAdapter"

    const-string/jumbo v3, "googleErrorReportDisabled : LGMDM Block Google Error Report"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v2, 0x1

    return v2

    .line 685
    :cond_25
    return v4
.end method

.method public isFailedInstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;[Landroid/content/pm/Signature;ILjava/lang/String;Landroid/os/UserHandle;)Z
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "signature"    # [Landroid/content/pm/Signature;
    .param p4, "flag"    # I
    .param p5, "versionName"    # Ljava/lang/String;
    .param p6, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 124
    const/4 v5, 0x0

    .line 125
    .local v5, "userHandle":I
    if-eqz p6, :cond_b

    .line 126
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 129
    const/4 v1, -0x1

    if-ne v5, v1, :cond_b

    .line 130
    const/4 v5, 0x0

    .line 133
    :cond_b
    const-string/jumbo v1, "LGMDMUIApplicationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFailedInstallByMDM, userHandle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 135
    invoke-virtual/range {v0 .. v6}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkInstallAllowWithSignatureAndVersion(Landroid/content/ComponentName;Ljava/lang/String;[Landroid/content/pm/Signature;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 136
    sget v1, Lcom/lge/internal/R$string;->sp_block_install_app_NORMAL:I

    invoke-virtual {v0, v1, v5}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 138
    const/4 v1, 0x1

    return v1

    .line 140
    :cond_3b
    const/4 v1, 0x0

    return v1
.end method

.method public isFailedUninstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;II)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 145
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 146
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->checkUninstallAllowWithFlag(Landroid/content/ComponentName;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_11

    .line 147
    sget v1, Lcom/lge/internal/R$string;->sp_block_uninstall_app_NORMAL:I

    invoke-virtual {v0, v1, p4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->sendToastMessageId(II)V

    .line 149
    const/4 v1, 0x1

    return v1

    .line 151
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public setCrashAppliction(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 577
    const-string/jumbo v1, "LGMDMUIApplicationAdapter"

    const-string/jumbo v2, "[setCrashAppliction] packageName is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void

    .line 580
    :cond_10
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_15

    .line 581
    return-void

    .line 583
    :cond_15
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 584
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 585
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    return-void
.end method
