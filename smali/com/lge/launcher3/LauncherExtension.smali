.class public Lcom/lge/launcher3/LauncherExtension;
.super Lcom/android/launcher3/Launcher;
.source "LauncherExtension.java"

# interfaces
.implements Lcom/lge/launcher3/DDTChangeWatcher$DDTChangeListener;
.implements Lcom/lge/launcher3/ScreenZoomChangeWatcher$ScreenZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;
    }
.end annotation


# static fields
.field public static final MENU_ADD_WIDGETS:I = 0x2

.field public static final MENU_HOME_SETTINGS:I = 0x3

.field public static final MENU_LOCKSCREEN_SETTINGS:I = 0x4

.field public static final MENU_SYSTEM_SETTINGS:I = 0x5

.field private static final PINCH_INTERVAL_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "LauncherExtension"

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private mAlreadyOnHome:Z

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private final mIconChangeListObserver:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mIsActivated:Z

.field private final mMDMPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientationLockCount:I

.field private mPendingMoveScreenIndex:I

.field private mPinchDecision:Landroid/view/PinchDecision;

.field private mPoint1DownTime:J

.field private mStarted:Z

.field private mTouchEventFilter:Landroid/view/TouchEventFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/LauncherExtension;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/LauncherExtension;->mPendingMoveScreenIndex:I

    .line 153
    new-instance v0, Lcom/lge/launcher3/LauncherExtension$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/LauncherExtension$1;-><init>(Lcom/lge/launcher3/LauncherExtension;)V

    iput-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mIconChangeListObserver:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    .line 1097
    new-instance v0, Lcom/lge/launcher3/LauncherExtension$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/LauncherExtension$2;-><init>(Lcom/lge/launcher3/LauncherExtension;)V

    iput-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mMDMPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/LauncherExtension;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1128
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/LauncherExtension;->applyMDMPolicy(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 1

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->registerMDMPolicyReceiver()V

    return-void
.end method

.method static synthetic access$10(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->unregisterIconChangeListObserver()V

    return-void
.end method

.method static synthetic access$11(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 1

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->unRegisterMDMPolicyReceiver()V

    return-void
.end method

.method static synthetic access$12(Lcom/lge/launcher3/LauncherExtension;)I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/lge/launcher3/LauncherExtension;->mPendingMoveScreenIndex:I

    return v0
.end method

.method static synthetic access$13(Lcom/lge/launcher3/LauncherExtension;I)V
    .registers 2

    .prologue
    .line 103
    iput p1, p0, Lcom/lge/launcher3/LauncherExtension;->mPendingMoveScreenIndex:I

    return-void
.end method

.method static synthetic access$14(Lcom/lge/launcher3/LauncherExtension;)Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension;->mAlreadyOnHome:Z

    return v0
.end method

.method static synthetic access$15(Lcom/lge/launcher3/LauncherExtension;)Lcom/android/launcher3/Launcher$State;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mState:Lcom/android/launcher3/Launcher$State;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lge/launcher3/LauncherExtension;)Lcom/android/launcher3/LauncherCallbacks;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 1

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->startHomeSetting()V

    return-void
.end method

.method static synthetic access$18(Lcom/lge/launcher3/LauncherExtension;Lcom/android/launcher3/Launcher$State;)V
    .registers 4

    .prologue
    .line 92
    :try_start_0
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension;->mState:Lcom/android/launcher3/Launcher$State;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_c

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    return-void

    :catch_c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/LauncherExtension;I)V
    .registers 2

    .prologue
    .line 244
    iput p1, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->sendResumedIntent()V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 1

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->enableRecentlyUninstall()V

    return-void
.end method

.method static synthetic access$5(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 1

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->clearTypedText()V

    return-void
.end method

.method static synthetic access$6(Lcom/lge/launcher3/LauncherExtension;)Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension;->mStarted:Z

    return v0
.end method

.method static synthetic access$7(Lcom/lge/launcher3/LauncherExtension;Z)V
    .registers 2

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/lge/launcher3/LauncherExtension;->mAlreadyOnHome:Z

    return-void
.end method

.method static synthetic access$8(Lcom/lge/launcher3/LauncherExtension;Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/lge/launcher3/LauncherExtension;->mStarted:Z

    return-void
.end method

.method static synthetic access$9(Lcom/lge/launcher3/LauncherExtension;)Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension;->mPaused:Z

    return v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherExtension.java"

    const-class v2, Lcom/lge/launcher3/LauncherExtension;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onCreate"

    const-string v3, "com.lge.launcher3.LauncherExtension"

    const-string v4, "android.os.Bundle"

    const-string v5, "savedInstanceState"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/launcher3/LauncherExtension;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "setupViews"

    const-string v3, "com.lge.launcher3.LauncherExtension"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3c7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/launcher3/LauncherExtension;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "finishBindingItems"

    const-string v3, "com.lge.launcher3.LauncherExtension"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x49a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/LauncherExtension;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private applyMDMPolicy(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1129
    new-instance v0, Lcom/lge/launcher3/LauncherExtension$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/launcher3/LauncherExtension$7;-><init>(Lcom/lge/launcher3/LauncherExtension;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1152
    :cond_b
    :goto_b
    return-void

    .line 1138
    :cond_c
    sget-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_MDM_CHANGE_UNINSTALLPOLICY:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 1139
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1139
    if-eqz v0, :cond_b

    .line 1142
    if-nez p2, :cond_24

    .line 1143
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicytoAll(Lcom/android/launcher3/Workspace;)V

    goto :goto_b

    .line 1145
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1147
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 1148
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v1, v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicy(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    goto :goto_b
.end method

.method private checkFilterAvailability(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 758
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/lge/launcher3/LauncherExtension;->mIsActivated:Z

    if-nez v1, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v1, v0, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private clearTypedText()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 240
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 241
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 242
    return-void
.end method

.method private closeInvalidfolder(Z)V
    .registers 6

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 1185
    :goto_a
    if-eqz v0, :cond_27

    sget-object v1, Lcom/android/launcher3/Launcher;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    if-eqz v1, :cond_27

    .line 1186
    sget-object v1, Lcom/android/launcher3/Launcher;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 1187
    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/LauncherExtension;->closeFolder(Lcom/android/launcher3/Folder;[Z)V

    .line 1192
    :cond_27
    :goto_27
    return-void

    .line 1184
    :cond_28
    const/4 v0, 0x0

    goto :goto_a

    .line 1189
    :cond_2a
    invoke-direct {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->removeInvalidItem(Lcom/android/launcher3/Folder;)V

    goto :goto_27
.end method

.method private enableRecentlyUninstall()V
    .registers 3

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1076
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1078
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/PackageUtils;->enableRecentUninstall(Landroid/content/Context;Ljava/lang/String;)V

    .line 1080
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->setVisibilityUninstallButton()V

    .line 1081
    return-void
.end method

.method private getTypedText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initTouchEventFilter()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 171
    :try_start_1
    new-instance v0, Landroid/view/PinchDecision;

    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/PinchDecision;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mPinchDecision:Landroid/view/PinchDecision;

    .line 172
    new-instance v0, Landroid/view/TouchEventFilter;

    invoke-direct {v0}, Landroid/view/TouchEventFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    .line 173
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/TouchEventFilter;->convertId(Z)V

    .line 174
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    new-instance v1, Landroid/view/ActiveFilter;

    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ActiveFilter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/TouchEventFilter;->addTouchEventFilter(Landroid/view/IEventFilter;)V
    :try_end_27
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_27} :catch_28

    .line 179
    :goto_27
    return-void

    .line 176
    :catch_28
    move-exception v0

    iput-object v3, p0, Lcom/lge/launcher3/LauncherExtension;->mPinchDecision:Landroid/view/PinchDecision;

    .line 177
    iput-object v3, p0, Lcom/lge/launcher3/LauncherExtension;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    goto :goto_27
.end method

.method private isOptionMenuAvailable()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 879
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v1

    .line 880
    if-eqz v1, :cond_a

    .line 889
    :cond_9
    :goto_9
    return v0

    .line 883
    :cond_a
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_9

    .line 886
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_22

    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_9

    .line 889
    :cond_22
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private registerIconChangeListObserver()V
    .registers 3

    .prologue
    .line 141
    const-string v0, "customize_appicons_shared_prefs"

    .line 142
    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/LauncherExtension;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mIconChangeListObserver:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 144
    return-void
.end method

.method private registerMDMPolicyReceiver()V
    .registers 4

    .prologue
    .line 1118
    new-instance v0, Landroid/content/IntentFilter;

    .line 1119
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_MDM_CHANGE_UNINSTALLPOLICY:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 1120
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1121
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mMDMPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/launcher3/LauncherExtension;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1122
    return-void
.end method

.method private removeInvalidItem(Lcom/android/launcher3/Folder;)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 1195
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1196
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 1198
    invoke-virtual {p1}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1214
    return-void

    .line 1198
    :cond_1c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/launcher3/ShortcutInfo;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1199
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1200
    const-string v3, "_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1201
    const/4 v3, 0x0

    .line 1202
    :cond_31
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_40

    .line 1209
    :goto_37
    if-nez v3, :cond_3c

    .line 1210
    invoke-virtual {p1, v6}, Lcom/android/launcher3/Folder;->onRemove(Lcom/android/launcher3/ShortcutInfo;)V

    .line 1212
    :cond_3c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_15

    .line 1203
    :cond_40
    iget-wide v8, v6, Lcom/android/launcher3/ShortcutInfo;->id:J

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_31

    .line 1204
    const/4 v3, 0x1

    .line 1205
    goto :goto_37
.end method

.method private runBindOnResumeRunnable()V
    .registers 3

    .prologue
    .line 1089
    iget-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension;->mPaused:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 1090
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1c

    .line 1093
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1095
    :cond_1b
    return-void

    .line 1091
    :cond_1c
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1090
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e
.end method

.method private sendResumedIntent()V
    .registers 3

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_LAUNCHER_RESUMED:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v1, p0}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v1, "com.lge.launcher3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method private setVisibilityDynamicGridButton()V
    .registers 4

    .prologue
    .line 1012
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_DYNAMICGRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    .line 1013
    if-eqz v0, :cond_21

    .line 1014
    const v0, 0x7f0e00b6

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1015
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1016
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1017
    new-instance v0, Lcom/lge/launcher3/LauncherExtension$5;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/LauncherExtension$5;-><init>(Lcom/lge/launcher3/LauncherExtension;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    :cond_21
    return-void
.end method

.method private setVisibilityThemeButton()V
    .registers 4

    .prologue
    .line 987
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    .line 988
    if-eqz v0, :cond_21

    .line 989
    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 990
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 991
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 992
    new-instance v0, Lcom/lge/launcher3/LauncherExtension$4;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/LauncherExtension$4;-><init>(Lcom/lge/launcher3/LauncherExtension;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    :cond_21
    return-void
.end method

.method private setVisibilityUninstallButton()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1033
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_RECENT_UNINSTALL_APP:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1034
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->isAFW(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1033
    const/4 v0, 0x1

    move v1, v0

    .line 1035
    :goto_15
    const v0, 0x7f0e00b8

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1036
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1037
    if-eqz v1, :cond_39

    .line 1038
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1039
    new-instance v0, Lcom/lge/launcher3/LauncherExtension$6;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/LauncherExtension$6;-><init>(Lcom/lge/launcher3/LauncherExtension;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1055
    :goto_36
    return-void

    :cond_37
    move v1, v2

    .line 1033
    goto :goto_15

    .line 1053
    :cond_39
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_36
.end method

.method private setVisibilityWallpaperButton()V
    .registers 3

    .prologue
    .line 978
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_WALLPAPER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    .line 979
    if-eqz v0, :cond_19

    .line 980
    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 983
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 985
    :cond_19
    return-void
.end method

.method private startHomeSetting()V
    .registers 5

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 922
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 923
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 924
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 923
    const/4 v0, 0x0

    .line 926
    :goto_24
    if-eqz v0, :cond_3d

    .line 927
    const-string v0, "com.lge.setting.intent.action.SHOW_FRAGMENT_HOME_SETTING"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    :goto_2b
    const/high16 v0, 0x14800000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 933
    const-string v0, "startedBy"

    const-string v1, "LGHome"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    :try_start_37
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/LauncherExtension;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_47

    .line 940
    :goto_3a
    return-void

    .line 923
    :cond_3b
    const/4 v0, 0x1

    goto :goto_24

    .line 929
    :cond_3d
    sget-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_SETTING:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b

    .line 937
    :catch_47
    move-exception v0

    .line 938
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method private startLockscreenSettingActivity()V
    .registers 4

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 945
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 944
    const/4 v0, 0x0

    .line 947
    :goto_1f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 948
    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 951
    if-eqz v0, :cond_36

    .line 952
    const-string v0, "android.settings.LOCK_SETTINGS_SPLITVIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    :goto_30
    :try_start_30
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/LauncherExtension;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_43

    .line 964
    :goto_33
    return-void

    .line 944
    :cond_34
    const/4 v0, 0x1

    goto :goto_1f

    .line 954
    :cond_36
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    const-string v0, "com.lge.lockscreensettings"

    .line 956
    const-string v2, "com.lge.lockscreensettings.lockscreen.LockSettings"

    .line 955
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30

    .line 961
    :catch_43
    move-exception v0

    .line 962
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method private unRegisterMDMPolicyReceiver()V
    .registers 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mMDMPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1126
    return-void
.end method

.method private unregisterIconChangeListObserver()V
    .registers 3

    .prologue
    .line 148
    const-string v0, "customize_appicons_shared_prefs"

    .line 149
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/LauncherExtension;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension;->mIconChangeListObserver:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 151
    return-void
.end method


# virtual methods
.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v0, "CreatePackageContext"

    const-string v1, "Package Name(%s), Flags(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 192
    const/4 v1, 0x3

    .line 193
    new-instance v0, Lcom/lge/lgewidgetlib/LgeWidgetContext;

    invoke-super {p0, p1, v1}, Lcom/android/launcher3/Launcher;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/lgewidgetlib/LgeWidgetContext;-><init>(Landroid/content/Context;)V

    .line 195
    :goto_28
    return-object v0

    :cond_29
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    goto :goto_28
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p1}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 205
    const/4 v1, 0x3

    .line 206
    new-instance v0, Lcom/lge/lgewidgetlib/LgeWidgetContext;

    invoke-super {p0, p1, v1, p3}, Lcom/android/launcher3/Launcher;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/lgewidgetlib/LgeWidgetContext;-><init>(Landroid/content/Context;)V

    .line 208
    :goto_10
    return-object v0

    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    goto :goto_10
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 766
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 767
    if-ne v2, v6, :cond_28

    .line 768
    const-string v3, "touch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " touch index outof execetion  "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [I

    invoke-static {v3, v2, v1}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 811
    :goto_27
    return v0

    .line 771
    :cond_28
    iget-object v2, p0, Lcom/lge/launcher3/LauncherExtension;->mPinchDecision:Landroid/view/PinchDecision;

    if-nez v2, :cond_31

    .line 772
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_27

    .line 774
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3d

    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/launcher3/LauncherExtension;->mPoint1DownTime:J

    .line 778
    :cond_3d
    iget-object v2, p0, Lcom/lge/launcher3/LauncherExtension;->mPinchDecision:Landroid/view/PinchDecision;

    invoke-virtual {v2, p1}, Landroid/view/PinchDecision;->isAvailable(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lge/launcher3/LauncherExtension;->mPoint1DownTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_58

    .line 780
    invoke-direct {p0, p1}, Lcom/lge/launcher3/LauncherExtension;->checkFilterAvailability(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 781
    :cond_58
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_27

    .line 784
    :cond_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v0, v2, :cond_9d

    .line 785
    iput-boolean v1, p0, Lcom/lge/launcher3/LauncherExtension;->mIsActivated:Z

    .line 790
    :goto_65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    move v0, v1

    .line 794
    :cond_6a
    iget-object v3, p0, Lcom/lge/launcher3/LauncherExtension;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    invoke-virtual {v3, p1}, Landroid/view/TouchEventFilter;->filtering(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 796
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 797
    if-ne v4, v6, :cond_a0

    .line 798
    const-string v3, "touch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " touch index outof execetion "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [I

    invoke-static {v3, v4, v5}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 810
    :goto_94
    iget-object v3, p0, Lcom/lge/launcher3/LauncherExtension;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    invoke-virtual {v3}, Landroid/view/TouchEventFilter;->needToSendAdditionalEvent()Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_27

    .line 787
    :cond_9d
    iput-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension;->mIsActivated:Z

    goto :goto_65

    .line 801
    :cond_a0
    if-eqz v3, :cond_b7

    .line 802
    invoke-super {p0, v3}, Lcom/android/launcher3/Launcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 803
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getSequenceNumber()I

    move-result v5

    if-eq v4, v5, :cond_b3

    .line 804
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 809
    :cond_b3
    :goto_b3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_94

    .line 807
    :cond_b7
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_b3
.end method

.method public finishBindingItems()V
    .registers 4

    .prologue
    sget-object v0, Lcom/lge/launcher3/LauncherExtension;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 1179
    const/4 v0, 0x0

    :try_start_7
    invoke-direct {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->closeInvalidfolder(Z)V

    .line 1180
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->finishBindingItems()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_d} :catch_23

    .line 1181
    :try_start_d
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->aspectOf()Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$after$com_lge_launcher3_uninstallmode_UninstallModeAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_2c

    :try_start_14
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WallpaperBlurredImageAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1b} :catch_35

    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->aspectOf()Lcom/lge/launcher3/initialguide/InitialGuideAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$after$com_lge_launcher3_initialguide_InitialGuideAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_23
    move-exception v0

    :try_start_24
    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->aspectOf()Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeAspect;->ajc$after$com_lge_launcher3_uninstallmode_UninstallModeAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    :try_start_2d
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WallpaperBlurredImageAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_35} :catch_35

    :catch_35
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->aspectOf()Lcom/lge/launcher3/initialguide/InitialGuideAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$after$com_lge_launcher3_initialguide_InitialGuideAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public lockScreenOrientation()V
    .registers 4

    .prologue
    .line 248
    iget v0, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    .line 249
    const-string v0, "lockScreenOrientation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mOrientationLockCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    .line 251
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    sget-object v0, Lcom/lge/launcher3/LauncherExtension;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 107
    :try_start_6
    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->aspectOf()Lcom/lge/launcher3/debug/EventLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/debug/EventLogger;->ajc$before$com_lge_launcher3_debug_EventLogger$1$119b79fc(Lorg/aspectj/lang/JoinPoint;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    .line 108
    new-instance v0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;-><init>(Lcom/lge/launcher3/LauncherExtension;)V

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z

    .line 109
    invoke-static {p0}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->init(Landroid/app/Activity;)V

    .line 110
    invoke-static {p0}, Lcom/lge/launcher3/operator/Operator;->setup(Landroid/app/Activity;)V

    .line 111
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-static {p0}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->getInstance()Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/lge/launcher3/LauncherExtension$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/LauncherExtension$3;-><init>(Lcom/lge/launcher3/LauncherExtension;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->addWorkSpaceMoveInterface(Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;)V

    .line 130
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->initTouchEventFilter()V

    .line 131
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/PackageUtils;->setPrefHomeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 134
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 136
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->registerIconChangeListObserver()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_4e} :catch_5c

    .line 137
    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->ajc$if$2$3fb90562()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->aspectOf()Lcom/lge/launcher3/debug/EventLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/EventLogger;->ajc$after$com_lge_launcher3_debug_EventLogger$2$15b3fa0d()V

    :cond_5b
    return-void

    :catch_5c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->ajc$if$2$3fb90562()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-static {}, Lcom/lge/launcher3/debug/EventLogger;->aspectOf()Lcom/lge/launcher3/debug/EventLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/debug/EventLogger;->ajc$after$com_lge_launcher3_debug_EventLogger$2$15b3fa0d()V

    :cond_6a
    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10

    .prologue
    const/4 v3, 0x2

    const/16 v7, 0x50

    const/4 v6, 0x5

    const v5, 0x1080049

    const/4 v0, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 865
    :goto_e
    return v0

    .line 826
    :cond_f
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 828
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->invalidateOptionsMenu()V

    .line 830
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    const/high16 v2, 0x10200000

    .line 831
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 837
    const v2, 0x7f0f014c

    invoke-interface {p1, v0, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 838
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x41

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 840
    const/4 v2, 0x6

    .line 841
    const/4 v3, 0x3

    const v4, 0x7f0f014d

    invoke-interface {p1, v0, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 842
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x48

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 844
    const/4 v2, 0x7

    .line 845
    const/4 v3, 0x4

    const v4, 0x7f0f014e

    invoke-interface {p1, v0, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 846
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 848
    sget-object v2, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 849
    const/16 v2, 0xa

    .line 850
    const v3, 0x7f0f014f

    invoke-interface {p1, v0, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 851
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    .line 852
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 865
    :goto_73
    const/4 v0, 0x1

    goto :goto_e

    .line 853
    :cond_75
    sget-object v2, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v3, "ATT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 854
    sget-object v2, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v3, "AIO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 855
    :cond_89
    const/16 v2, 0xb

    .line 856
    const v3, 0x7f0f0150

    invoke-interface {p1, v0, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 857
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    .line 858
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_73

    .line 860
    :cond_9e
    const/16 v2, 0xc

    .line 861
    const v3, 0x7f0f0151

    invoke-interface {p1, v0, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 862
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    .line 863
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_73
.end method

.method public onDDTChanged(II)V
    .registers 5

    .prologue
    .line 1156
    const-string v0, "LauncherExtension"

    const-string v1, "onDDTChanged()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->destroy()V

    .line 1160
    invoke-static {p0}, Lcom/lge/launcher3/util/LGHomeFeature;->init(Ljava/lang/Object;)V

    .line 1162
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$clearIconDB(Lcom/android/launcher3/IconCache;)V

    .line 1163
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;

    invoke-virtual {v0}, Lcom/lge/launcher3/widgettray/LGWidgetPreviewLoader;->clearCacheDB()V

    .line 1165
    invoke-static {p0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->updateEnabled()V

    .line 1167
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->reloadWorkspace()V

    .line 1168
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 894
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_38

    .line 917
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    .line 896
    :pswitch_e
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtViewMode()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 897
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->cancelExtViewMode()V

    .line 899
    :cond_17
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 900
    const v1, 0x7f0f0021

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 902
    :cond_2c
    invoke-virtual {p0, v0, v2}, Lcom/lge/launcher3/LauncherExtension;->showWidgetsView(ZZ)V

    goto :goto_d

    .line 907
    :pswitch_30
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->startHomeSetting()V

    goto :goto_d

    .line 911
    :pswitch_34
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->startLockscreenSettingActivity()V

    goto :goto_d

    .line 894
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_e
        :pswitch_30
        :pswitch_34
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 870
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 871
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->isOptionMenuAvailable()Z

    move-result v1

    if-nez v1, :cond_b

    .line 875
    :goto_a
    return v0

    .line 874
    :cond_b
    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->closeFolder([Z)V

    .line 875
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 1060
    const-string v0, "RuntimePermission"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RuntimePermission] requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    packed-switch p1, :pswitch_data_2a

    .line 1072
    :goto_18
    return-void

    .line 1065
    :pswitch_19
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    .line 1066
    new-instance v1, Lcom/lge/app/permission/DefaultUiProvider;

    invoke-direct {v1}, Lcom/lge/app/permission/DefaultUiProvider;-><init>()V

    .line 1064
    invoke-static {p0, v0, v3, v1}, Lcom/lge/app/permission/RequestPermissionsHelper;->handlePermissionRequestResult(Landroid/app/Activity;[Ljava/lang/String;ZLcom/lge/app/permission/GuideUiProvider;)Z

    goto :goto_18

    .line 1062
    nop

    :pswitch_data_2a
    .packed-switch 0x457
        :pswitch_19
    .end packed-switch
.end method

.method public onScreenZoomChanged(FF)V
    .registers 5

    .prologue
    .line 1172
    const-string v0, "LauncherExtension"

    const-string v1, "onScreenZoomChanged()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppStateItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppStateItds$com_android_launcher3_LauncherAppState$updateValues(Lcom/android/launcher3/LauncherAppState;)V

    .line 1175
    return-void
.end method

.method protected setupViews()V
    .registers 4

    .prologue
    sget-object v0, Lcom/lge/launcher3/LauncherExtension;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 968
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    .line 970
    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDynamicGridPanelView:Landroid/view/ViewGroup;

    .line 972
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->setVisibilityThemeButton()V

    .line 973
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->setVisibilityWallpaperButton()V

    .line 974
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->setVisibilityDynamicGridButton()V

    .line 975
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->setVisibilityUninstallButton()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_20} :catch_2f

    .line 976
    :try_start_20
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_27} :catch_38

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_HomescreenBlurAspect$1$b65b1a93(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected showWorkspace(IZLjava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1084
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->showWorkspace(IZLjava/lang/Runnable;)V

    .line 1085
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->runBindOnResumeRunnable()V

    .line 1086
    return-void
.end method

.method public startBinding()V
    .registers 1

    .prologue
    .line 183
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->onStartBiding()V

    .line 184
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->startBinding()V

    .line 185
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 11

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->showWorkspace(Z)V

    .line 216
    if-nez p1, :cond_2e

    .line 218
    invoke-direct {p0}, Lcom/lge/launcher3/LauncherExtension;->getTypedText()Ljava/lang/String;

    move-result-object v1

    .line 221
    :goto_a
    if-nez p3, :cond_2c

    .line 222
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 223
    const-string v0, "source"

    const-string v2, "launcher-search"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_18
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/LauncherExtension;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 227
    if-eqz v0, :cond_2b

    .line 228
    invoke-virtual {p0}, Lcom/lge/launcher3/LauncherExtension;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 231
    :cond_2b
    return-void

    :cond_2c
    move-object v4, p3

    goto :goto_18

    :cond_2e
    move-object v1, p1

    goto :goto_a
.end method

.method public unlockScreenOrientation(Z)V
    .registers 5

    .prologue
    .line 255
    iget v0, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    .line 256
    const-string v0, "unlockScreenOrientation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mOrientationLockCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget v0, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    if-gtz v0, :cond_26

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/LauncherExtension;->mOrientationLockCount:I

    .line 259
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 261
    :cond_26
    return-void
.end method
