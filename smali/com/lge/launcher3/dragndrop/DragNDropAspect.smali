.class public Lcom/lge/launcher3/dragndrop/DragNDropAspect;
.super Ljava/lang/Object;
.source "DragNDropAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final ACTION_SET_CURRENT_CONTENT:Ljava/lang/String; = "com.lge.signboard.content.intent.action.SET_CURRENT_CONTENT"

.field private static final CONE_PACKAGE_NAME:Ljava/lang/String; = "com.lge.coneshortcut"

.field private static final EXTRA_CONE_COMPONENT_NAME:Ljava/lang/String; = "com.lge.coneshortcut/.ConeShortcuts"

.field private static final EXTRA_FLATTENED_COMPONENT_NAME:Ljava/lang/String; = "com.lge.signboard.content.intent.extra.FLATTENED_COMPONENT_NAME"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragNDropAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 42
    :goto_3
    return-void

    .line 38
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_dragndrop_DragNDropAspect$2$3170a24proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_dragndrop_DragNDropAspect$3$8ae09d7cproceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_dragndrop_DragNDropAspect$4$2fcf7f1fproceed(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZLorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/DragView;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 103
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    invoke-static {p8}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {p9}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p10, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragView;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mConeUIFlag(Lcom/android/launcher3/DragController;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/DragController;->mConeUIFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragStatus(Lcom/android/launcher3/DragController;)I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/DragController;->mDragStatus:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragingDiff(Lcom/android/launcher3/DragController;)I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/DragController;->mDragingDiff:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mExternalDragingSouce(Lcom/android/launcher3/DragController;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/DragController;->mExternalDragingSouce:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mHomeDragingSource(Lcom/android/launcher3/DragController;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/DragController;->mHomeDragingSource:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mPreventBroadcastSetCurrentContent(Lcom/android/launcher3/DragController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/DragController;->mPreventBroadcastSetCurrentContent:Z

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mConeUIFlag(Lcom/android/launcher3/DragController;)V
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mConeUIFlag(Lcom/android/launcher3/DragController;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragStatus(Lcom/android/launcher3/DragController;)V
    .registers 2

    .prologue
    .line 227
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragStatus(Lcom/android/launcher3/DragController;I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragingDiff(Lcom/android/launcher3/DragController;)V
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragingDiff(Lcom/android/launcher3/DragController;I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mExternalDragingSouce(Lcom/android/launcher3/DragController;)V
    .registers 4

    .prologue
    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "coneshortcut"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mExternalDragingSouce(Lcom/android/launcher3/DragController;[Ljava/lang/String;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mHomeDragingSource(Lcom/android/launcher3/DragController;)V
    .registers 4

    .prologue
    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LGHome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NODrag"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mHomeDragingSource(Lcom/android/launcher3/DragController;[Ljava/lang/String;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mPreventBroadcastSetCurrentContent(Lcom/android/launcher3/DragController;)V
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mPreventBroadcastSetCurrentContent(Lcom/android/launcher3/DragController;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mConeUIFlag(Lcom/android/launcher3/DragController;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/DragController;->mConeUIFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragStatus(Lcom/android/launcher3/DragController;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/DragController;->mDragStatus:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mDragingDiff(Lcom/android/launcher3/DragController;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/DragController;->mDragingDiff:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mExternalDragingSouce(Lcom/android/launcher3/DragController;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/DragController;->mExternalDragingSouce:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mHomeDragingSource(Lcom/android/launcher3/DragController;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/DragController;->mHomeDragingSource:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$mPreventBroadcastSetCurrentContent(Lcom/android/launcher3/DragController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/DragController;->mPreventBroadcastSetCurrentContent:Z

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$checkConeShortcut(Lcom/android/launcher3/DragController;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/DragController;->mConeUIFlag:Ljava/lang/Boolean;

    if-nez v0, :cond_1d

    .line 54
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    const-string v2, "com.lge.coneshortcut"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mConeUIFlag:Ljava/lang/Boolean;

    .line 58
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/DragController;->mDragingDiff:I
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_20} :catch_23

    .line 62
    :goto_20
    return-void

    :cond_21
    move v0, v1

    .line 55
    goto :goto_17

    .line 60
    :catch_23
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DragController;->mConeUIFlag:Ljava/lang/Boolean;

    goto :goto_20
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$creatDummyShortView(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 246
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 247
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040007

    .line 248
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 247
    invoke-virtual {v2, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 249
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v4, v2, v4, v4}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 252
    new-instance v3, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v3, v5, v5}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    .line 253
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    .line 254
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v3, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    .line 255
    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setTranslationX(F)V

    .line 257
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 260
    new-instance v2, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v2}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 261
    iput v6, v2, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    .line 262
    iput v6, v2, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    .line 263
    iput v6, v2, Lcom/android/launcher3/ShortcutInfo;->minSpanX:I

    .line 264
    iput v6, v2, Lcom/android/launcher3/ShortcutInfo;->minSpanY:I

    .line 265
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 268
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 269
    const-string v3, ""

    iput-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 270
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v3}, Lcom/android/launcher3/ShortcutInfo;->ajc$set$intent(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Intent;)V

    .line 271
    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 274
    new-instance v2, Lcom/lge/launcher3/dragndrop/ConeShortcut;

    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lge/launcher3/dragndrop/ConeShortcut;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0, v2, v5}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Z)V

    .line 275
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$handledragEndEvent(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V
    .registers 6

    .prologue
    .line 212
    iget v0, p0, Lcom/android/launcher3/DragController;->mDragStatus:I

    sparse-switch v0, :sswitch_data_14

    .line 222
    :goto_5
    return-void

    .line 215
    :sswitch_6
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->cancelDrag()V

    goto :goto_5

    .line 212
    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_6
        0x6 -> :sswitch_6
    .end sparse-switch
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$hideFloatingApp(Lcom/android/launcher3/DragController;)V
    .registers 4

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const-string v1, "hide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string v1, "package"

    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingConeShortCut(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 279
    :try_start_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    iget-object v3, p0, Lcom/android/launcher3/DragController;->mExternalDragingSouce:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_f
    if-lt v2, v4, :cond_13

    move v0, v1

    .line 288
    :goto_12
    return v0

    .line 280
    :cond_13
    aget-object v5, v3, v2

    .line 281
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_20

    move-result v5

    if-eqz v5, :cond_1d

    .line 282
    const/4 v0, 0x1

    goto :goto_12

    .line 280
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 286
    :catch_20
    move-exception v0

    move v0, v1

    goto :goto_12
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingSource(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    :try_start_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    iget-object v4, p0, Lcom/android/launcher3/DragController;->mHomeDragingSource:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_10
    if-lt v3, v5, :cond_1a

    .line 299
    iget-object v4, p0, Lcom/android/launcher3/DragController;->mExternalDragingSouce:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_16
    if-lt v3, v5, :cond_27

    move v0, v2

    .line 307
    :goto_19
    return v0

    .line 294
    :cond_1a
    aget-object v6, v4, v3

    .line 295
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move v0, v1

    .line 296
    goto :goto_19

    .line 294
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 299
    :cond_27
    aget-object v6, v4, v3

    .line 300
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2c} :catch_34

    move-result v6

    if-eqz v6, :cond_31

    move v0, v1

    .line 301
    goto :goto_19

    .line 299
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 305
    :catch_34
    move-exception v0

    move v0, v2

    goto :goto_19
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$onDragEvent(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    .line 122
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/DragController;->ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 123
    aget v4, v2, v0

    .line 124
    const/4 v5, 0x6

    if-ne v3, v5, :cond_1f

    aget v5, v2, v1

    iget v6, p0, Lcom/android/launcher3/DragController;->mDragingDiff:I

    if-ge v5, v6, :cond_1f

    .line 125
    aput v0, v2, v1

    .line 127
    :cond_1f
    aget v2, v2, v1

    .line 129
    const/4 v5, 0x5

    if-eq v3, v5, :cond_2b

    if-eq v3, v1, :cond_2b

    if-lez v2, :cond_2b

    .line 130
    iget v5, p0, Lcom/android/launcher3/DragController;->mDragingDiff:I

    add-int/2addr v2, v5

    .line 133
    :cond_2b
    packed-switch v3, :pswitch_data_f6

    .line 194
    :cond_2e
    :goto_2e
    :pswitch_2e
    iput v3, p0, Lcom/android/launcher3/DragController;->mDragStatus:I

    move v0, v1

    .line 195
    :cond_31
    :goto_31
    return v0

    .line 135
    :pswitch_32
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v5

    .line 136
    invoke-static {p0, v4}, Lcom/android/launcher3/DragController;->ajc$set$mMotionDownX(Lcom/android/launcher3/DragController;I)V

    .line 137
    invoke-static {p0, v2}, Lcom/android/launcher3/DragController;->ajc$set$mMotionDownY(Lcom/android/launcher3/DragController;I)V

    .line 138
    const-string v2, "DragNDrop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mMotionDownX(Lcom/android/launcher3/DragController;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mMotionDownY(Lcom/android/launcher3/DragController;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingConeShortCut(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    const-wide/16 v6, -0x12d

    cmp-long v2, v4, v6

    if-eqz v2, :cond_31

    .line 142
    :cond_78
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingConeShortCut(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 143
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$creatDummyShortView(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V

    .line 145
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    new-array v0, v0, [Z

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 146
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    invoke-static {v0, v2}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V

    .line 147
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->enterSpringLoadedDragMode()V

    .line 149
    :cond_9a
    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$hideFloatingApp(Lcom/android/launcher3/DragController;)V

    goto :goto_2e

    .line 153
    :pswitch_9e
    invoke-static {p0, v4}, Lcom/android/launcher3/DragController;->ajc$set$mMotionDownX(Lcom/android/launcher3/DragController;I)V

    .line 154
    invoke-static {p0, v2}, Lcom/android/launcher3/DragController;->ajc$set$mMotionDownY(Lcom/android/launcher3/DragController;I)V

    goto :goto_2e

    .line 158
    :pswitch_a5
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher3/DragController;->ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$handleMoveEvent(II)V

    goto :goto_2e

    .line 161
    :pswitch_a9
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mDragObject(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v5

    if-eqz v5, :cond_31

    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mDragObject(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    if-eqz v5, :cond_31

    .line 164
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher3/DragController;->ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$handleMoveEvent(II)V

    .line 165
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mHandler(Lcom/android/launcher3/DragController;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mScrollRunnable(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DragController$ScrollRunnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingSource(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 167
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingConeShortCut(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 168
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mCoordinatesTemp(Lcom/android/launcher3/DragController;)[I

    move-result-object v3

    .line 169
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/launcher3/DragController;->ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v3

    .line 170
    instance-of v3, v3, Lcom/android/launcher3/ButtonDropTarget;

    if-nez v3, :cond_e2

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->cancelDrag()V

    goto/16 :goto_31

    .line 177
    :cond_e2
    int-to-float v0, v4

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/DragController;->ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$drop(FF)V

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->ajc$privMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$endDrag()V

    move v0, v1

    .line 179
    goto/16 :goto_31

    .line 187
    :pswitch_ed
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$handledragEndEvent(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V

    .line 188
    invoke-static {p0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$showFloatApp(Lcom/android/launcher3/DragController;)V

    goto/16 :goto_2e

    .line 133
    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_32
        :pswitch_a5
        :pswitch_a9
        :pswitch_ed
        :pswitch_9e
        :pswitch_2e
    .end packed-switch
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$replaceDragView(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V
    .registers 4

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 233
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v1}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 237
    if-eqz v0, :cond_25

    .line 238
    invoke-static {v1, v0}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ShortcutInfo$onAddFromClipData(Lcom/android/launcher3/ShortcutInfo;Landroid/os/Bundle;)V

    .line 241
    :cond_25
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mDragObject(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v0

    iput-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 243
    :cond_2b
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$showFloatApp(Lcom/android/launcher3/DragController;)V
    .registers 4

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    const-string v1, "package"

    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$startDragShadow(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;IILcom/android/launcher3/DragView;)V
    .registers 19

    .prologue
    .line 312
    const/16 v3, 0x100

    .line 313
    const-string v2, "NODrag"

    .line 314
    check-cast p3, Lcom/android/launcher3/ItemInfo;

    .line 315
    iget v4, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v4, :cond_17

    .line 316
    iget v4, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e

    iget-wide v4, p3, Lcom/android/launcher3/ItemInfo;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3e

    .line 317
    :cond_17
    iget v4, p3, Lcom/android/launcher3/ItemInfo;->spanX:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e

    iget v4, p3, Lcom/android/launcher3/ItemInfo;->spanY:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e

    iget-boolean v4, p0, Lcom/android/launcher3/DragController;->mPreventBroadcastSetCurrentContent:Z

    if-nez v4, :cond_3e

    .line 318
    const/16 v3, 0x100

    .line 319
    const-string v2, "LGHome"

    .line 320
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.signboard.content.intent.action.SET_CURRENT_CONTENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    const-string v5, "com.lge.signboard.content.intent.extra.FLATTENED_COMPONENT_NAME"

    const-string v6, "com.lge.coneshortcut/.ConeShortcuts"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLauncher(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3e
    move v10, v3

    .line 325
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/DragController;->mPreventBroadcastSetCurrentContent:Z

    .line 326
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 327
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 328
    invoke-static {p3, v4}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddToClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    invoke-static {v2, v3}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v11

    .line 333
    iget v2, p3, Lcom/android/launcher3/ItemInfo;->spanX:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a0

    iget v2, p3, Lcom/android/launcher3/ItemInfo;->spanY:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a0

    .line 334
    const v9, 0x3f99999a    # 1.2f

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    float-to-int v7, v2

    .line 340
    :goto_6d
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-direct {v5, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 342
    new-instance v2, Lcom/android/launcher3/DragController$DragNDropAspect$1;

    move-object v3, p0

    move-object/from16 v4, p6

    move/from16 v6, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/DragController$DragNDropAspect$1;-><init>(Lcom/android/launcher3/DragController;Landroid/view/View;Landroid/graphics/Point;IIIF)V

    .line 358
    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v11, v2, v1, v10}, Lcom/android/launcher3/DragView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 359
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DragView;->setAlpha(F)V

    .line 360
    const/4 v2, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DragView;->setVisibility(I)V

    .line 361
    return-void

    .line 337
    :cond_a0
    const/high16 v9, 0x3f800000    # 1.0f

    .line 338
    const/4 v7, 0x0

    goto :goto_6d
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_Workspace$dispatchDragEvent(Lcom/android/launcher3/Workspace;Landroid/view/DragEvent;)Z
    .registers 3

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$checkConeShortcut(Lcom/android/launcher3/DragController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$checkConeShortcut()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$creatDummyShortView(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragController;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$creatDummyShortView(Landroid/view/DragEvent;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$handledragEndEvent(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragController;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$handledragEndEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$hideFloatingApp(Lcom/android/launcher3/DragController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$hideFloatingApp()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingConeShortCut(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragController;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$isDragingConeShortCut(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$isDragingSource(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragController;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$isDragingSource(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$onDragEvent(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragController;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$replaceDragView(Lcom/android/launcher3/DragController;Landroid/view/DragEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragController;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$replaceDragView(Landroid/view/DragEvent;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$showFloatApp(Lcom/android/launcher3/DragController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->ajc$interMethodDispatch2$com_lge_launcher3_dragndrop_DragNDropAspect$showFloatApp()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$startDragShadow(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;IILcom/android/launcher3/DragView;)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher3/DragController;->startDragShadow(Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;IILcom/android/launcher3/DragView;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_Workspace$dispatchDragEvent(Lcom/android/launcher3/Workspace;Landroid/view/DragEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/dragndrop/DragNDropAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_dragndrop_DragNDropAspect"

    sget-object v2, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/DragNDropAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_dragndrop_DragNDropAspect$1$d07e48fe(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "initialization(DragController.new(..))"
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragController;

    .line 48
    invoke-static {v0}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$checkConeShortcut(Lcom/android/launcher3/DragController;)V

    .line 49
    return-void
.end method

.method public ajc$around$com_lge_launcher3_dragndrop_DragNDropAspect$2$3170a24(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ev,ajc$aroundClosure"
        value = "(execution(boolean DragController.onInterceptTouchEvent(..)) && args(ev))"
    .end annotation

    .prologue
    .line 65
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragController;

    .line 66
    invoke-static {v0}, Lcom/android/launcher3/DragController;->ajc$get$mDragObject(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 69
    const/4 v2, 0x3

    if-ne v1, v2, :cond_25

    .line 70
    if-eqz v0, :cond_25

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    if-eqz v1, :cond_25

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/DragView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 71
    const/4 v0, 0x0

    .line 75
    :goto_24
    return v0

    :cond_25
    invoke-static {p1, p2}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$around$com_lge_launcher3_dragndrop_DragNDropAspect$2$3170a24proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_24
.end method

.method public ajc$around$com_lge_launcher3_dragndrop_DragNDropAspect$3$8ae09d7c(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ev,ajc$aroundClosure"
        value = "(execution(boolean DragController.onTouchEvent(..)) && args(ev))"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragController;

    .line 80
    invoke-static {v0}, Lcom/android/launcher3/DragController;->ajc$get$mDragObject(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 83
    const/4 v4, 0x3

    if-ne v3, v4, :cond_26

    .line 84
    if-eqz v2, :cond_26

    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    if-eqz v3, :cond_26

    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/DragView;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_26

    move v0, v1

    .line 95
    :goto_25
    return v0

    .line 89
    :cond_26
    iget-object v0, v0, Lcom/android/launcher3/DragController;->mConeUIFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 90
    if-eqz v2, :cond_38

    iget-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/lge/launcher3/dragndrop/ConeShortcut;

    if-eqz v0, :cond_38

    move v0, v1

    .line 91
    goto :goto_25

    .line 95
    :cond_38
    invoke-static {p1, p2}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$around$com_lge_launcher3_dragndrop_DragNDropAspect$3$8ae09d7cproceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_25
.end method

.method public ajc$around$com_lge_launcher3_dragndrop_DragNDropAspect$4$2fcf7f1f(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/DragView;
    .registers 20
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "b,dragLayerX,dragLayerY,source,dragInfo,dragAction,dragOffset,dragRegion,initialDragViewScale,accessible,ajc$aroundClosure"
        value = "(execution(public DragView startDrag(Bitmap, int, int, DragSource, Object, int, Point, Rect, float, boolean)) && args(b, dragLayerX, dragLayerY, source, dragInfo, dragAction, dragOffset, dragRegion, initialDragViewScale, accessible))"
    .end annotation

    .prologue
    .line 105
    invoke-interface/range {p12 .. p12}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragController;

    .line 106
    iget-object v1, v0, Lcom/android/launcher3/DragController;->mConeUIFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    instance-of v1, p5, Lcom/android/launcher3/ItemInfo;

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    .line 108
    :goto_13
    invoke-static/range {p1 .. p11}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$around$com_lge_launcher3_dragndrop_DragNDropAspect$4$2fcf7f1fproceed(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FZLorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/DragView;

    move-result-object v6

    .line 111
    if-eqz v1, :cond_2b

    .line 112
    invoke-static {v0}, Lcom/android/launcher3/DragController;->ajc$get$mMotionDownX(Lcom/android/launcher3/DragController;)I

    move-result v1

    sub-int v4, v1, p2

    .line 113
    invoke-static {v0}, Lcom/android/launcher3/DragController;->ajc$get$mMotionDownY(Lcom/android/launcher3/DragController;)I

    move-result v1

    sub-int v5, v1, p3

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    .line 112
    invoke-static/range {v0 .. v6}, Lcom/lge/launcher3/dragndrop/DragNDropAspect;->ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$startDragShadow(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;IILcom/android/launcher3/DragView;)V

    .line 115
    :cond_2b
    return-object v6

    .line 106
    :cond_2c
    const/4 v1, 0x0

    goto :goto_13
.end method
