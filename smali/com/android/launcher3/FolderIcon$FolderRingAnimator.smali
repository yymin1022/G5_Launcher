.class public Lcom/android/launcher3/FolderIcon$FolderRingAnimator;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderRingAnimator"
.end annotation


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static mAcceptAnimator:Landroid/animation/ValueAnimator;

.field private static mNeutralAnimator:Landroid/animation/ValueAnimator;

.field public static sPreviewPadding:I

.field public static sPreviewSize:I

.field public static sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

.field public static sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field mCellLayout:Lcom/android/launcher3/CellLayout;

.field public mCellX:I

.field public mCellY:I

.field public mFolderIcon:Lcom/android/launcher3/FolderIcon;

.field public mInnerRingSize:F

.field public mOuterRingSize:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->ajc$preClinit()V

    .line 210
    sput-object v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    sput-object v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    sput v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 213
    sput v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/FolderIcon;)V
    .registers 6

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    .line 219
    iput-object p2, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    .line 220
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    sget-boolean v1, Lcom/android/launcher3/FolderIcon;->sStaticValuesDirty:Z

    if-eqz v1, :cond_6b

    .line 225
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_3c

    .line 226
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FolderRingAnimator loading drawables on non-UI thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_33} :catch_33

    .line 238
    :catch_33
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/folder/FolderIconAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderIconAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$after$com_lge_launcher3_folder_FolderIconAspect$1$d11abada(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/FolderIcon;)V

    throw v0

    .line 230
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 231
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    sput v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 232
    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 233
    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 234
    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 236
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/FolderIcon;->sStaticValuesDirty:Z
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_6b} :catch_33

    .line 238
    :cond_6b
    invoke-static {}, Lcom/lge/launcher3/folder/FolderIconAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderIconAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$after$com_lge_launcher3_folder_FolderIconAspect$1$d11abada(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/FolderIcon;)V

    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "FolderIcon.java"

    const-class v2, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "animateToAcceptState"

    const-string v3, "com.android.launcher3.FolderIcon$FolderRingAnimator"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public animateToAcceptState()V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 241
    :try_start_6
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    .line 242
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_50

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    .line 245
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    sget v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 248
    sget-object v2, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$1;-><init>(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 258
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$2;-><init>(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3f} :catch_47

    .line 267
    invoke-static {}, Lcom/lge/launcher3/folder/FolderIconAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderIconAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$after$com_lge_launcher3_folder_FolderIconAspect$2$a17b2ef7(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_47
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/folder/FolderIconAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderIconAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$after$com_lge_launcher3_folder_FolderIconAspect$2$a17b2ef7(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 244
    :array_50
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateToNaturalState()V
    .registers 5

    .prologue
    .line 270
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 271
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 273
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_4e

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    .line 274
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 276
    sget v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 277
    sget-object v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$3;-><init>(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 287
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$4;-><init>(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 299
    return-void

    .line 273
    nop

    :array_4e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCell([I)V
    .registers 4

    .prologue
    .line 303
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellX:I

    aput v1, p1, v0

    .line 304
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellY:I

    aput v1, p1, v0

    .line 305
    return-void
.end method

.method public getInnerRingSize()F
    .registers 2

    .prologue
    .line 322
    iget v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    return v0
.end method

.method public getOuterRingSize()F
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    return v0
.end method

.method public setAnimationBGColor()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$FolderRingAnimator$setAnimationBGColor(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V

    return-void
.end method

.method public setCell(II)V
    .registers 3

    .prologue
    .line 309
    iput p1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellX:I

    .line 310
    iput p2, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellY:I

    .line 311
    return-void
.end method

.method public setCellLayout(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 315
    return-void
.end method
