.class public Lcom/android/launcher3/widget/PendingAddShortcutInfo;
.super Lcom/android/launcher3/PendingAddItemInfo;
.source "PendingAddShortcutInfo.java"


# static fields
.field public static DOWNLOADED_FLAG:I

.field public static UPDATED_SYSTEM_APP_FLAG:I

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public flags:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->ajc$preClinit()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$DOWNLOADED_FLAG()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$UPDATED_SYSTEM_APP_FLAG()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .registers 6

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    sget-object v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    :try_start_9
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$flags(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->itemType:I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1c} :catch_24

    .line 37
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->ajc$after$com_lge_launcher3_nativejoin_PendingAddShortcutInfoAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_24
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->ajc$after$com_lge_launcher3_nativejoin_PendingAddShortcutInfoAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method private static ajc$preClinit()V
    .registers 7

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "PendingAddShortcutInfo.java"

    const-class v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.widget.PendingAddShortcutInfo"

    const-string v3, "android.content.pm.ActivityInfo"

    const-string v4, "activityInfo"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public initFlags(Landroid/content/pm/ActivityInfo;)I
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$initFlags(Lcom/android/launcher3/widget/PendingAddShortcutInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41
    const-string v0, "PendingAddShortcutInfo package=%s, name=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 42
    iget-object v3, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 41
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
