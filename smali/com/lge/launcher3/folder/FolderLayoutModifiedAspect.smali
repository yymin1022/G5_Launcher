.class public Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;
.super Ljava/lang/Object;
.source "FolderLayoutModifiedAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_folder_FolderLayoutModifiedAspect$3$2c68afd6proceed(Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_folder_FolderLayoutModifiedAspect$4$77f0f713proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_folder_FolderLayoutModifiedAspect$5$5f2052fdproceed(Ljava/util/ArrayList;IZLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$mTitle(Lcom/android/launcher3/Folder;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Folder;->mTitle:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$mTitleHeight(Lcom/android/launcher3/Folder;)I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/Folder;->mTitleHeight:I

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$mTitle(Lcom/android/launcher3/Folder;)V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$mTitleHeight(Lcom/android/launcher3/Folder;)V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$mTitle(Lcom/android/launcher3/Folder;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Folder;->mTitle:Landroid/view/View;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$mTitleHeight(Lcom/android/launcher3/Folder;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/Folder;->mTitleHeight:I

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$centerAboutIconModify(Lcom/android/launcher3/Folder;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    .line 88
    const/16 v1, 0x11

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->gravity:I

    .line 89
    iput v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->topMargin:I

    .line 90
    iput v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->bottomMargin:I

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mContent(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/FolderPagedView;->getDesiredWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->ajc$privMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$getFolderHeight()I

    move-result v3

    .line 94
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const v4, 0x7f0e0051

    invoke-virtual {v1, v4}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/DragLayer;

    .line 96
    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Folder;->setPivotX(F)V

    .line 97
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Folder;->setPivotY(F)V

    .line 98
    iput v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    .line 99
    iput v3, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    .line 100
    invoke-virtual {v1}, Lcom/android/launcher3/DragLayer;->getWidth()I

    move-result v4

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->x:I

    .line 101
    invoke-virtual {v1}, Lcom/android/launcher3/DragLayer;->getHeight()I

    move-result v2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->y:I

    .line 104
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderIcon(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/Folder;->ajc$get$sTempRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 106
    invoke-static {}, Lcom/android/launcher3/Folder;->ajc$get$sTempRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    .line 107
    invoke-static {}, Lcom/android/launcher3/Folder;->ajc$get$sTempRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 108
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/Folder;->ajc$get$sTempRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getPageAreaRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 109
    invoke-static {}, Lcom/android/launcher3/Folder;->ajc$get$sTempRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    .line 110
    invoke-static {}, Lcom/android/launcher3/Folder;->ajc$get$sTempRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    .line 112
    sub-float/2addr v0, v2

    .line 113
    sub-float/2addr v1, v3

    .line 114
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderIcon(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderIcon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float/2addr v0, v5

    add-float/2addr v0, v2

    invoke-static {p0, v0}, Lcom/android/launcher3/Folder;->ajc$set$mFolderIconPivotX(Lcom/android/launcher3/Folder;F)V

    .line 115
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderIcon(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/android/launcher3/Folder;->ajc$set$mFolderIconPivotY(Lcom/android/launcher3/Folder;F)V

    .line 116
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$setFolderTitle(Lcom/android/launcher3/Folder;)V
    .registers 7

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFooterHeight(Lcom/android/launcher3/Folder;)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 31
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFooter(Lcom/android/launcher3/Folder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFooter(Lcom/android/launcher3/Folder;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFooter(Lcom/android/launcher3/Folder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 35
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFooter(Lcom/android/launcher3/Folder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher3/Folder;->ajc$set$mFooterHeight(Lcom/android/launcher3/Folder;I)V

    .line 37
    const v0, 0x7f0e0093

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 38
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHeight(I)V

    .line 41
    const v0, 0x7f0e00e1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/Folder;->ajc$set$mFolderPlusButton(Lcom/android/launcher3/Folder;Landroid/view/View;)V

    .line 42
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderPlusButton(Lcom/android/launcher3/Folder;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderPlusButton(Lcom/android/launcher3/Folder;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/Folder$FolderLayoutModifiedAspect$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Folder$FolderLayoutModifiedAspect$1;-><init>(Lcom/android/launcher3/Folder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mTitle:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mTitle:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Folder;->mTitleHeight:I

    .line 55
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$startFolderPlus(Lcom/android/launcher3/Folder;)V
    .registers 7

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lge/launcher3/folderplus/FolderPlusActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v2, "folderId"

    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mInfo(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderInfo;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    const-string v2, "folderOrientation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/16 v2, 0x458

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/Launcher;->mSuppressCloseFolder:Z
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_35} :catch_36

    .line 68
    :goto_35
    return-void

    .line 65
    :catch_36
    move-exception v0

    .line 66
    invoke-static {}, Lcom/android/launcher3/Folder;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityNotFoundException - "

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_35
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_FolderPagedView$setFolderNameGravity(Lcom/android/launcher3/FolderPagedView;)V
    .registers 3

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/launcher3/FolderPagedView;->ajc$get$mFolder(Lcom/android/launcher3/FolderPagedView;)Lcom/android/launcher3/Folder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderName(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderEditText;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/launcher3/FolderPagedView;->mIsRtl:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x5

    :goto_d
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderEditText;->setGravity(I)V

    .line 124
    return-void

    .line 123
    :cond_13
    const/4 v0, 0x3

    goto :goto_d
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$centerAboutIconModify(Lcom/android/launcher3/Folder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->ajc$interMethodDispatch2$com_lge_launcher3_folder_FolderLayoutModifiedAspect$centerAboutIconModify()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$setFolderTitle(Lcom/android/launcher3/Folder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->setFolderTitle()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$startFolderPlus(Lcom/android/launcher3/Folder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->ajc$interMethodDispatch2$com_lge_launcher3_folder_FolderLayoutModifiedAspect$startFolderPlus()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_FolderPagedView$setFolderNameGravity(Lcom/android/launcher3/FolderPagedView;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->setFolderNameGravity()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_folder_FolderLayoutModifiedAspect"

    sget-object v2, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_folder_FolderLayoutModifiedAspect$1$b0936ab7(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void Folder.onFinishInflate())"
    .end annotation

    .prologue
    .line 71
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 72
    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$setFolderTitle(Lcom/android/launcher3/Folder;)V

    .line 73
    return-void
.end method

.method public ajc$after$com_lge_launcher3_folder_FolderLayoutModifiedAspect$2$b9dbdbcd(Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void Folder.onMeasure(..))"
    .end annotation

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 76
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 77
    iget-object v1, v0, Lcom/android/launcher3/Folder;->mTitle:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->ajc$privMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$getContentAreaWidth()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 78
    iget v0, v0, Lcom/android/launcher3/Folder;->mTitleHeight:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 77
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 79
    return-void
.end method

.method public ajc$around$com_lge_launcher3_folder_FolderLayoutModifiedAspect$3$2c68afd6(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)I
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(* *Folder.getFolderHeight(int))"
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$around$com_lge_launcher3_folder_FolderLayoutModifiedAspect$3$2c68afd6proceed(Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v1

    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    iget v0, v0, Lcom/android/launcher3/Folder;->mTitleHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ajc$around$com_lge_launcher3_folder_FolderLayoutModifiedAspect$4$77f0f713(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(* *Folder.centerAboutIcon())"
    .end annotation

    .prologue
    .line 119
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$centerAboutIconModify(Lcom/android/launcher3/Folder;)V

    .line 120
    return-void
.end method

.method public ajc$around$com_lge_launcher3_folder_FolderLayoutModifiedAspect$5$5f2052fd(Ljava/util/ArrayList;IZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;IZ",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            "Lorg/aspectj/lang/JoinPoint;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "list,itemCount,saveChanges,ajc$aroundClosure"
        value = "(execution(private void FolderPagedView.arrangeChildren(..)) && args(list, itemCount, saveChanges))"
    .end annotation

    .prologue
    .line 128
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderPagedView;

    .line 129
    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->itemsPerPage()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 130
    invoke-static {p1, v1, p3, p4}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$around$com_lge_launcher3_folder_FolderLayoutModifiedAspect$5$5f2052fdproceed(Ljava/util/ArrayList;IZLorg/aspectj/runtime/internal/AroundClosure;)V

    .line 131
    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_FolderPagedView$setFolderNameGravity(Lcom/android/launcher3/FolderPagedView;)V

    .line 133
    return-void
.end method
