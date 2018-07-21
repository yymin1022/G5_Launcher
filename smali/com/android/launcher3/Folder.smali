.class public Lcom/android/launcher3/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/launcher3/DragController$DragListener;
.implements Lcom/android/launcher3/UninstallDropTarget$UninstallSource;
.implements Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Folder$OnScrollFinishedListener;,
        Lcom/android/launcher3/Folder$OnScrollHintListener;
    }
.end annotation


# static fields
.field private static final FOLDER_NAME_ANIMATION_DURATION:I = 0x279

.field private static final ICON_OVERSCROLL_WIDTH_FACTOR:F = 0.45f

.field private static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_CONTENT_DIMEN:I = 0x5

.field private static final ON_EXIT_CLOSE_DELAY:I = 0x190

.field private static final REORDER_DELAY:I = 0xfa

.field public static final SCROLL_HINT_DURATION:I = 0x1f4

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field mContent:Lcom/android/launcher3/FolderPagedView;

.field mContentWrapper:Landroid/view/View;

.field private mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

.field private mCurrentDragView:Landroid/view/View;

.field mCurrentScrollDir:I

.field private mDeferDropAfterUninstall:Z

.field mDeferredAction:Ljava/lang/Runnable;

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z

.field protected mDragController:Lcom/android/launcher3/DragController;

.field private mDragInProgress:Z

.field mEmptyCellRank:I

.field private final mExpandDuration:I

.field mFolderIcon:Lcom/android/launcher3/FolderIcon;

.field mFolderIconPivotX:F

.field mFolderIconPivotY:F

.field mFolderName:Lcom/android/launcher3/FolderEditText;

.field mFolderPlusButton:Landroid/view/View;

.field private mFooter:Landroid/view/View;

.field private mFooterHeight:I

.field protected mInfo:Lcom/android/launcher3/FolderInfo;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mIsExternalDrag:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mMaterialExpandDuration:I

.field private final mMaterialExpandStagger:I

.field private final mOnExitAlarm:Lcom/android/launcher3/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private final mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

.field mPrevTargetRank:I

.field private mRearrangeOnClose:Z

.field private mRenameDialog:Lcom/lge/launcher3/folder/FolderRenameDialog;

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mScrollAreaOffset:I

.field mScrollHintDir:I

.field final mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

.field mState:I

.field private mSuppressFolderDeletion:Z

.field mSuppressOnAdd:Z

.field mTargetRank:I

.field public mTitle:Landroid/view/View;

.field public mTitleHeight:I

.field private mUninstallSuccessful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/launcher3/Folder;->ajc$preClinit()V

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    .line 1481
    new-instance v0, Lcom/android/launcher3/Folder$4;

    invoke-direct {v0}, Lcom/android/launcher3/Folder$4;-><init>()V

    sput-object v0, Lcom/android/launcher3/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    .line 1493
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interFieldInit$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$mTitleHeight(Lcom/android/launcher3/Folder;)V

    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interFieldInit$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$mTitle(Lcom/android/launcher3/Folder;)V

    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldInit$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;)V

    .line 112
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 113
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    .line 114
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    .line 115
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 142
    iput v2, p0, Lcom/android/launcher3/Folder;->mState:I

    .line 143
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mRearrangeOnClose:Z

    .line 144
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mSuppressOnAdd:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mSuppressFolderDeletion:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mIsEditingName:Z

    .line 166
    iput v2, p0, Lcom/android/launcher3/Folder;->mScrollHintDir:I

    .line 167
    iput v2, p0, Lcom/android/launcher3/Folder;->mCurrentScrollDir:I

    .line 226
    new-instance v0, Lcom/android/launcher3/Folder$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Folder$1;-><init>(Lcom/android/launcher3/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 702
    new-instance v0, Lcom/android/launcher3/Folder$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Folder$2;-><init>(Lcom/android/launcher3/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 785
    new-instance v0, Lcom/android/launcher3/Folder$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Folder$3;-><init>(Lcom/android/launcher3/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/Folder;->mExpandDuration:I

    .line 183
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/Folder;->mMaterialExpandDuration:I

    .line 184
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/Folder;->mMaterialExpandStagger:I

    .line 186
    sget-object v1, Lcom/android/launcher3/Folder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v1, :cond_99

    .line 187
    const v1, 0x7f0f001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Folder;->sDefaultFolderName:Ljava/lang/String;

    .line 189
    :cond_99
    sget-object v1, Lcom/android/launcher3/Folder;->sHintText:Ljava/lang/String;

    if-nez v1, :cond_a6

    .line 190
    const v1, 0x7f0f003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Folder;->sHintText:Ljava/lang/String;

    .line 192
    :cond_a6
    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setFocusableInTouchMode(Z)V

    .line 197
    return-void
.end method

.method public static ajc$get$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Folder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mContent(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderPagedView;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    return-object v0
.end method

.method public static ajc$get$mExpandDuration(Lcom/android/launcher3/Folder;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Folder;->mExpandDuration:I

    return v0
.end method

.method public static ajc$get$mFolderIcon(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderIcon;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    return-object v0
.end method

.method public static ajc$get$mFolderIconPivotX(Lcom/android/launcher3/Folder;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Folder;->mFolderIconPivotX:F

    return v0
.end method

.method public static ajc$get$mFolderIconPivotY(Lcom/android/launcher3/Folder;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Folder;->mFolderIconPivotY:F

    return v0
.end method

.method public static ajc$get$mFolderName(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderEditText;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    return-object v0
.end method

.method public static ajc$get$mFolderPlusButton(Lcom/android/launcher3/Folder;)Landroid/view/View;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderPlusButton:Landroid/view/View;

    return-object v0
.end method

.method public static ajc$get$mFooter(Lcom/android/launcher3/Folder;)Landroid/view/View;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    return-object v0
.end method

.method public static ajc$get$mFooterHeight(Lcom/android/launcher3/Folder;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/Folder;->mFooterHeight:I

    return v0
.end method

.method public static ajc$get$mInfo(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderInfo;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    return-object v0
.end method

.method public static ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public static ajc$get$mRenameDialog(Lcom/android/launcher3/Folder;)Lcom/lge/launcher3/folder/FolderRenameDialog;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mRenameDialog:Lcom/lge/launcher3/folder/FolderRenameDialog;

    return-object v0
.end method

.method public static ajc$get$sHintText()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Folder;->sHintText:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$sTempRect()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "Folder.java"

    const-class v2, Lcom/android/launcher3/Folder;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onFinishInflate"

    const-string v3, "com.android.launcher3.Folder"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Folder;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onLongClick"

    const-string v3, "com.android.launcher3.Folder"

    const-string v4, "android.view.View"

    const-string v5, "v"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xfa

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Folder;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "bind"

    const-string v3, "com.android.launcher3.Folder"

    const-string v4, "com.android.launcher3.FolderInfo"

    const-string v5, "info"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x175

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Folder;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDropCompleted"

    const-string v3, "com.android.launcher3.Folder"

    const-string v4, "android.view.View:com.android.launcher3.DropTarget$DragObject:boolean:boolean"

    const-string v5, "target:d:isFlingToDelete:success"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x34a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Folder;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "centerAboutIcon"

    const-string v3, "com.android.launcher3.Folder"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3de

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Folder;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "getFolderHeight"

    const-string v3, "com.android.launcher3.Folder"

    const-string v4, "int"

    const-string v5, "contentAreaHeight"

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x428

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Folder;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onMeasure"

    const-string v3, "com.android.launcher3.Folder"

    const-string v4, "int:int"

    const-string v5, "widthMeasureSpec:heightMeasureSpec"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x42c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Folder;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "onCloseComplete"

    const-string v3, "com.android.launcher3.Folder"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x461

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/Folder;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onTitleChanged"

    const-string v3, "com.android.launcher3.Folder"

    const-string v4, "java.lang.CharSequence"

    const-string v5, "title"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x56b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/Folder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mContent(Lcom/android/launcher3/Folder;Lcom/android/launcher3/FolderPagedView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    return-void
.end method

.method public static ajc$set$mExpandDuration(Lcom/android/launcher3/Folder;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Folder;->mExpandDuration:I

    return-void
.end method

.method public static ajc$set$mFolderIcon(Lcom/android/launcher3/Folder;Lcom/android/launcher3/FolderIcon;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    return-void
.end method

.method public static ajc$set$mFolderIconPivotX(Lcom/android/launcher3/Folder;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Folder;->mFolderIconPivotX:F

    return-void
.end method

.method public static ajc$set$mFolderIconPivotY(Lcom/android/launcher3/Folder;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Folder;->mFolderIconPivotY:F

    return-void
.end method

.method public static ajc$set$mFolderName(Lcom/android/launcher3/Folder;Lcom/android/launcher3/FolderEditText;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    return-void
.end method

.method public static ajc$set$mFolderPlusButton(Lcom/android/launcher3/Folder;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mFolderPlusButton:Landroid/view/View;

    return-void
.end method

.method public static ajc$set$mFooter(Lcom/android/launcher3/Folder;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    return-void
.end method

.method public static ajc$set$mFooterHeight(Lcom/android/launcher3/Folder;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/Folder;->mFooterHeight:I

    return-void
.end method

.method public static ajc$set$mInfo(Lcom/android/launcher3/Folder;Lcom/android/launcher3/FolderInfo;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    return-void
.end method

.method public static ajc$set$mLauncher(Lcom/android/launcher3/Folder;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static ajc$set$mRenameDialog(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderRenameDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mRenameDialog:Lcom/lge/launcher3/folder/FolderRenameDialog;

    return-void
.end method

.method public static ajc$set$sHintText(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/Folder;->sHintText:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$sTempRect(Landroid/graphics/Rect;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private beginDrag(Landroid/view/View;Z)Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 258
    instance-of v3, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v3, :cond_4d

    .line 259
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_14

    move v0, v1

    .line 277
    :goto_13
    return v0

    .line 264
    :cond_14
    iget-object v3, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, p1, v4, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Landroid/graphics/Point;Lcom/android/launcher3/DragSource;Z)V

    .line 266
    iput-object v0, p0, Lcom/android/launcher3/Folder;->mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 267
    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/Folder;->mEmptyCellRank:I

    .line 268
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget-object v3, p0, Lcom/android/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v3, p0, Lcom/android/launcher3/Folder;->mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;)V

    .line 271
    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    .line 272
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->snapToDestination()V

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$setState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->enterSpringLoadedDragMode()V

    :cond_4d
    move v0, v2

    .line 277
    goto :goto_13
.end method

.method private centerAboutIcon()V
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/Folder;->centerAboutIcon_aroundBody7$advice(Lcom/android/launcher3/Folder;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method private static final centerAboutIcon_aroundBody6(Lcom/android/launcher3/Folder;Lorg/aspectj/lang/JoinPoint;)V
    .registers 13

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 991
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    .line 993
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e0051

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/DragLayer;

    .line 994
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/FolderPagedView;->getDesiredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 995
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->getFolderHeight()I

    move-result v4

    .line 997
    iget-object v2, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    sget-object v5, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v1

    .line 999
    iget-object v2, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    .line 1001
    sget-object v2, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sget-object v6, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    div-float/2addr v6, v8

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 1002
    sget-object v6, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sget-object v7, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v1, v7

    div-float/2addr v1, v8

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 1003
    div-int/lit8 v6, v3, 0x2

    sub-int v6, v2, v6

    .line 1004
    div-int/lit8 v2, v4, 0x2

    sub-int v7, v1, v2

    .line 1007
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getPageAreaRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 1008
    sget-object v1, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1009
    sget-object v2, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget-object v8, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v2, v8

    sub-int/2addr v2, v3

    .line 1008
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1010
    sget-object v2, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1011
    sget-object v8, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sget-object v9, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    .line 1010
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1012
    iget-boolean v8, v5, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v8, :cond_f9

    iget v8, v5, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v8, v3

    iget v9, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    if-ge v8, v9, :cond_f9

    .line 1014
    iget v1, v5, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 1019
    :cond_aa
    :goto_aa
    sget-object v5, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_c0

    .line 1020
    sget-object v2, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget-object v5, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 1023
    :cond_c0
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v6, v1

    add-int/2addr v5, v6

    .line 1024
    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v7, v2

    add-int/2addr v6, v7

    .line 1025
    int-to-float v7, v5

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Folder;->setPivotX(F)V

    .line 1026
    int-to-float v7, v6

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Folder;->setPivotY(F)V

    .line 1027
    iget-object v7, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    .line 1028
    int-to-float v5, v5

    mul-float/2addr v5, v10

    int-to-float v8, v3

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    .line 1027
    iput v5, p0, Lcom/android/launcher3/Folder;->mFolderIconPivotX:F

    .line 1029
    iget-object v5, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/FolderIcon;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    .line 1030
    int-to-float v6, v6

    mul-float/2addr v6, v10

    int-to-float v7, v4

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    .line 1029
    iput v5, p0, Lcom/android/launcher3/Folder;->mFolderIconPivotY:F

    .line 1032
    iput v3, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    .line 1033
    iput v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    .line 1034
    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->x:I

    .line 1035
    iput v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->y:I

    .line 1036
    return-void

    .line 1015
    :cond_f9
    sget-object v5, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v3, v5, :cond_aa

    .line 1017
    sget-object v1, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget-object v5, Lcom/android/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    goto :goto_aa
.end method

.method private static final centerAboutIcon_aroundBody7$advice(Lcom/android/launcher3/Folder;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6

    .prologue
    .line 119
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$centerAboutIconModify(Lcom/android/launcher3/Folder;)V

    .line 120
    return-void
.end method

.method private clearDragInfo()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 804
    iput-object v1, p0, Lcom/android/launcher3/Folder;->mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 805
    iput-object v1, p0, Lcom/android/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    .line 806
    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mSuppressOnAdd:Z

    .line 807
    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mIsExternalDrag:Z

    .line 808
    return-void
.end method

.method static fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Folder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    return-object v0
.end method

.method private getContentAreaHeight()I
    .registers 4

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1047
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget-boolean v1, v1, Lcom/android/launcher3/FolderPagedView;->mIsRtl:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 1048
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 1049
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 1048
    sub-int/2addr v0, v2

    .line 1049
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 1048
    sub-int/2addr v0, v1

    .line 1050
    iget v1, p0, Lcom/android/launcher3/Folder;->mFooterHeight:I

    .line 1048
    sub-int/2addr v0, v1

    .line 1052
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/FolderPagedView;->getDesiredHeight()I

    move-result v1

    .line 1051
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1053
    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getContentAreaWidth()I
    .registers 3

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getDesiredWidth()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getFolderHeight()I
    .registers 2

    .prologue
    .line 1061
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Folder;->getFolderHeight(I)I

    move-result v0

    return v0
.end method

.method private getFolderHeight(I)I
    .registers 8

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Folder;->getFolderHeight_aroundBody9$advice(Lcom/android/launcher3/Folder;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)I

    move-result v0

    return v0
.end method

.method private static final getFolderHeight_aroundBody8(Lcom/android/launcher3/Folder;ILorg/aspectj/lang/JoinPoint;)I
    .registers 5

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/Folder;->mFooterHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static final getFolderHeight_aroundBody9$advice(Lcom/android/launcher3/Folder;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)I
    .registers 8

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Folder;->getFolderHeight_aroundBody8(Lcom/android/launcher3/Folder;ILorg/aspectj/lang/JoinPoint;)I

    move-result v1

    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    iget v0, v0, Lcom/android/launcher3/Folder;->mTitleHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I
    .registers 7

    .prologue
    .line 725
    invoke-virtual {p1, p2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    .line 726
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    .line 727
    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    .line 726
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/FolderPagedView;->findNearestArea(II)I

    move-result v0

    return v0
.end method

.method private getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .registers 4

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/Folder$14;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/Folder$14;-><init>(Lcom/android/launcher3/Folder;Lcom/android/launcher3/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static final onLongClick_aroundBody0(Lcom/android/launcher3/Folder;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 253
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Folder;->beginDrag(Landroid/view/View;Z)Z

    move-result v0

    goto :goto_9
.end method

.method private static final onLongClick_aroundBody1$advice(Lcom/android/launcher3/Folder;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderAspect;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9

    .prologue
    .line 83
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 84
    invoke-static {v0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 87
    invoke-static {}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_folder_FolderAspect$com_lge_launcher3_folder_FolderAspect$TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Memory is full. so onLongClick() is canceled."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_1b
    return v0

    :cond_1c
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/Folder;->onLongClick_aroundBody0(Lcom/android/launcher3/Folder;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_1b
.end method

.method private positionAndSizeAsIcon()V
    .registers 3

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    .line 433
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer;

    if-nez v0, :cond_c

    .line 438
    :goto_b
    return-void

    .line 434
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Folder;->setScaleX(F)V

    .line 435
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Folder;->setScaleY(F)V

    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setAlpha(F)V

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Folder;->mState:I

    goto :goto_b
.end method

.method private prepareReveal()V
    .registers 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setScaleX(F)V

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setScaleY(F)V

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setAlpha(F)V

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Folder;->mState:I

    .line 445
    return-void
.end method

.method private showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V
    .registers 7

    .prologue
    .line 768
    iget v0, p0, Lcom/android/launcher3/Folder;->mScrollHintDir:I

    if-eq v0, p1, :cond_b

    .line 769
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderPagedView;->showScrollHint(I)V

    .line 770
    iput p1, p0, Lcom/android/launcher3/Folder;->mScrollHintDir:I

    .line 774
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/launcher3/Folder;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_38

    .line 775
    :cond_17
    iput p1, p0, Lcom/android/launcher3/Folder;->mCurrentScrollDir:I

    .line 776
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 777
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/android/launcher3/Folder$OnScrollHintListener;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/Folder$OnScrollHintListener;-><init>(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 778
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 780
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 781
    iget v0, p0, Lcom/android/launcher3/Folder;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/Folder;->mTargetRank:I

    .line 783
    :cond_38
    return-void
.end method

.method private static final supportsAppInfoDropTarget_aroundBody4(Lcom/android/launcher3/Folder;)Z
    .registers 2

    .prologue
    .line 935
    const/4 v0, 0x0

    return v0
.end method

.method private static final supportsAppInfoDropTarget_aroundBody5$advice(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4

    .prologue
    .line 67
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/Folder;->supportsAppInfoDropTarget_aroundBody4(Lcom/android/launcher3/Folder;)Z

    move-result v0

    goto :goto_7
.end method

.method private static final supportsFlingToDelete_aroundBody2(Lcom/android/launcher3/Folder;)Z
    .registers 2

    .prologue
    .line 930
    const/4 v0, 0x1

    return v0
.end method

.method private static final supportsFlingToDelete_aroundBody3$advice(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4

    .prologue
    .line 59
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/Folder;->supportsFlingToDelete_aroundBody2(Lcom/android/launcher3/Folder;)Z

    move-result v0

    goto :goto_7
.end method

.method private updateItemLocationsInDatabaseBatch()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 954
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 955
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 956
    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1b

    .line 963
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v6, v1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-static {v0, v4, v6, v7, v2}, Lcom/android/launcher3/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    .line 964
    return-void

    .line 957
    :cond_1b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 958
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 959
    iput v1, v0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 960
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 687
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 688
    iget v0, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 689
    if-eqz v0, :cond_b

    .line 690
    if-ne v0, v1, :cond_13

    .line 691
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->isFull()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 689
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public addItemLocationsInDatabase()V
    .registers 11

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v9

    .line 968
    const/4 v0, 0x0

    move v8, v0

    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_d

    .line 974
    return-void

    .line 969
    :cond_d
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 970
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 971
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    .line 972
    iget v6, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 971
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 968
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_6
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_folder_FolderColorAspect$applyFolderName(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$applyFolderName(Lcom/android/launcher3/Folder;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_folder_FolderColorAspect$closeTalkback()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$closeTalkback(Lcom/android/launcher3/Folder;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_folder_FolderLayoutModifiedAspect$centerAboutIconModify()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$centerAboutIconModify(Lcom/android/launcher3/Folder;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_folder_FolderLayoutModifiedAspect$startFolderPlus()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$startFolderPlus(Lcom/android/launcher3/Folder;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$getContentAreaWidth()I
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->getContentAreaWidth()I

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$getFolderHeight()I
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->getFolderHeight()I

    move-result v0

    return v0
.end method

.method public varargs animateClosed([Z)V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const v6, 0x3f666666    # 0.9f

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/DragLayer;

    if-nez v1, :cond_f

    .line 684
    :goto_e
    return-void

    .line 655
    :cond_f
    const-string v1, "alpha"

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 656
    const-string v2, "scaleX"

    new-array v3, v5, [F

    aput v6, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 657
    const-string v3, "scaleY"

    new-array v4, v5, [F

    aput v6, v4, v0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 659
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v0

    aput-object v2, v4, v5

    aput-object v3, v4, v7

    invoke-static {p0, v4}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 661
    new-instance v2, Lcom/android/launcher3/Folder$10;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Folder$10;-><init>(Lcom/android/launcher3/Folder;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 681
    array-length v2, p1

    if-ne v2, v5, :cond_56

    aget-boolean v2, p1, v0

    if-nez v2, :cond_56

    :goto_4a
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 682
    const/4 v0, 0x0

    invoke-virtual {p0, v7, v0}, Lcom/android/launcher3/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 683
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_e

    .line 681
    :cond_56
    iget v0, p0, Lcom/android/launcher3/Folder;->mExpandDuration:I

    goto :goto_4a
.end method

.method public animateOpen()V
    .registers 14

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer;

    if-nez v0, :cond_f

    .line 605
    :goto_e
    return-void

    .line 450
    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->completePendingPageChanges()V

    .line 451
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    if-nez v0, :cond_1d

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderPagedView;->snapToPageImmediately(I)V

    .line 458
    :cond_1d
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-nez v0, :cond_e2

    .line 459
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->positionAndSizeAsIcon()V

    .line 460
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->centerAboutIcon()V

    .line 462
    const-string v0, "alpha"

    new-array v1, v3, [F

    aput v12, v1, v2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 463
    const-string v1, "scaleX"

    new-array v4, v3, [F

    aput v12, v4, v2

    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 464
    const-string v4, "scaleY"

    new-array v5, v3, [F

    aput v12, v5, v2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 466
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v11

    invoke-static {p0, v5}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 467
    iget v0, p0, Lcom/android/launcher3/Folder;->mExpandDuration:I

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 470
    const/4 v0, 0x0

    invoke-virtual {p0, v11, v0}, Lcom/android/launcher3/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 471
    new-instance v0, Lcom/android/launcher3/Folder$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Folder$6;-><init>(Lcom/android/launcher3/Folder;)V

    .line 536
    :goto_63
    new-instance v4, Lcom/android/launcher3/Folder$8;

    invoke-direct {v4, p0, v0}, Lcom/android/launcher3/Folder$8;-><init>(Lcom/android/launcher3/Folder;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 562
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getPageCount()I

    move-result v0

    if-le v0, v3, :cond_213

    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/FolderInfo;->hasOption(I)Z

    move-result v0

    if-nez v0, :cond_213

    .line 563
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getDesiredWidth()I

    move-result v0

    .line 564
    iget-object v4, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 563
    sub-int/2addr v0, v4

    .line 564
    iget-object v4, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 563
    sub-int/2addr v0, v4

    .line 566
    iget-object v4, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v4}, Lcom/android/launcher3/FolderEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v5}, Lcom/android/launcher3/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 567
    int-to-float v0, v0

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 568
    iget-object v4, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    iget-object v5, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget-boolean v5, v5, Lcom/android/launcher3/FolderPagedView;->mIsRtl:Z

    if-eqz v5, :cond_b2

    neg-float v0, v0

    :cond_b2
    invoke-virtual {v4, v0}, Lcom/android/launcher3/FolderEditText;->setTranslationX(F)V

    .line 569
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/FolderPagedView;->setMarkerScale(F)V

    .line 573
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_210

    move v0, v2

    .line 574
    :goto_bf
    new-instance v2, Lcom/android/launcher3/Folder$9;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/Folder$9;-><init>(Lcom/android/launcher3/Folder;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 596
    :goto_c7
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 599
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 600
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->forceTouchMove()V

    .line 603
    :cond_d7
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    .line 604
    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderPagedView;->verifyVisibleHighResIcons(I)V

    goto/16 :goto_e

    .line 478
    :cond_e2
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->prepareReveal()V

    .line 479
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->centerAboutIcon()V

    .line 481
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 482
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingRight()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/FolderPagedView;->getDesiredWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 483
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->getFolderHeight()I

    move-result v4

    .line 485
    const v5, -0x42666666    # -0.075f

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPivotX()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 486
    const v6, -0x42666666    # -0.075f

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPivotY()F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    .line 487
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Folder;->setTranslationX(F)V

    .line 488
    invoke-virtual {p0, v6}, Lcom/android/launcher3/Folder;->setTranslationY(F)V

    .line 489
    const-string v7, "translationX"

    new-array v8, v11, [F

    aput v5, v8, v2

    aput v10, v8, v3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 490
    const-string v7, "translationY"

    new-array v8, v11, [F

    aput v6, v8, v2

    aput v10, v8, v3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 492
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v7, v2

    aput-object v6, v7, v3

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 493
    iget v6, p0, Lcom/android/launcher3/Folder;->mMaterialExpandDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 494
    iget v6, p0, Lcom/android/launcher3/Folder;->mMaterialExpandStagger:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 495
    new-instance v6, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v7, 0x64

    invoke-direct {v6, v7, v2}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 497
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPivotX()F

    move-result v6

    sub-float/2addr v0, v6

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPivotX()F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 498
    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPivotY()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPivotY()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 499
    int-to-double v6, v0

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 501
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPivotX()F

    move-result v4

    float-to-int v4, v4

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPivotY()F

    move-result v6

    float-to-int v6, v6

    .line 501
    invoke-static {p0, v4, v6, v10, v0}, Lcom/android/launcher3/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 503
    iget v4, p0, Lcom/android/launcher3/Folder;->mMaterialExpandDuration:I

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 504
    new-instance v4, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v6, 0x64

    invoke-direct {v4, v6, v2}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 506
    iget-object v4, p0, Lcom/android/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    .line 507
    iget-object v4, p0, Lcom/android/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v11, [F

    fill-array-data v7, :array_220

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 508
    iget v6, p0, Lcom/android/launcher3/Folder;->mMaterialExpandDuration:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 509
    iget v6, p0, Lcom/android/launcher3/Folder;->mMaterialExpandStagger:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 510
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 512
    iget-object v6, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setAlpha(F)V

    .line 513
    iget-object v6, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v11, [F

    fill-array-data v8, :array_228

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 514
    iget v7, p0, Lcom/android/launcher3/Folder;->mMaterialExpandDuration:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 515
    iget v7, p0, Lcom/android/launcher3/Folder;->mMaterialExpandStagger:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 516
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-direct {v7, v8}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 518
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 519
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 520
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 521
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 525
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 526
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 527
    new-instance v0, Lcom/android/launcher3/Folder$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Folder$7;-><init>(Lcom/android/launcher3/Folder;)V

    goto/16 :goto_63

    :cond_210
    move v0, v3

    .line 573
    goto/16 :goto_bf

    .line 592
    :cond_213
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/FolderEditText;->setTranslationX(F)V

    .line 593
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/FolderPagedView;->setMarkerScale(F)V

    goto/16 :goto_c7

    .line 507
    nop

    :array_220
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 513
    :array_228
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public beginExternalDrag(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 621
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 622
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderPagedView;->allocateRankForNewItem(Lcom/android/launcher3/ShortcutInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Folder;->mEmptyCellRank:I

    .line 623
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mIsExternalDrag:Z

    .line 624
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    .line 628
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 629
    return-void
.end method

.method bind(Lcom/android/launcher3/FolderInfo;)V
    .registers 6

    .prologue
    sget-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 374
    :try_start_6
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    .line 375
    iget-object v0, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 376
    sget-object v2, Lcom/android/launcher3/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 378
    iget-object v2, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/FolderPagedView;->bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_69

    .line 388
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    .line 389
    if-nez v0, :cond_34

    .line 390
    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    .line 391
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->customPosition:Z

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    :cond_34
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->centerAboutIcon()V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 397
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->updateTextViewFocus()V

    .line 398
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderInfo;->addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 400
    sget-object v0, Lcom/android/launcher3/Folder;->sDefaultFolderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 401
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :goto_57
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    new-instance v2, Lcom/android/launcher3/Folder$5;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Folder$5;-><init>(Lcom/android/launcher3/Folder;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderIcon;->post(Ljava/lang/Runnable;)Z
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_61} :catch_7a

    .line 414
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$3$21038b2f(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 383
    :cond_69
    :try_start_69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 384
    iget-object v3, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;)V

    .line 385
    iget-object v3, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v0}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_79} :catch_7a

    goto :goto_19

    .line 414
    :catch_7a
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$3$21038b2f(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 403
    :cond_83
    :try_start_83
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8a} :catch_7a

    goto :goto_57
.end method

.method public callRenameDialog()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$callRenameDialog(Lcom/android/launcher3/Folder;)V

    return-void
.end method

.method public changeChildColor(I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$changeChildColor(Lcom/android/launcher3/Folder;I)V

    return-void
.end method

.method public completeDragExit()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 792
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-boolean v0, v0, Lcom/android/launcher3/FolderInfo;->opened:Z

    if-eqz v0, :cond_12

    .line 793
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 794
    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->mRearrangeOnClose:Z

    .line 801
    :goto_11
    return-void

    .line 795
    :cond_12
    iget v0, p0, Lcom/android/launcher3/Folder;->mState:I

    if-ne v0, v2, :cond_19

    .line 796
    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->mRearrangeOnClose:Z

    goto :goto_11

    .line 798
    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->rearrangeChildren()V

    .line 799
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->clearDragInfo()V

    goto :goto_11
.end method

.method public deferCompleteDropAfterUninstallActivity()V
    .registers 2

    .prologue
    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mDeferDropAfterUninstall:Z

    .line 912
    return-void
.end method

.method public dismissEditingName()V
    .registers 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->doneEditingFolderName(Z)V

    .line 309
    return-void
.end method

.method public dismissRenameDialog()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$dismissRenameDialog(Lcom/android/launcher3/Folder;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public doneEditingFolderName(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    sget-object v1, Lcom/android/launcher3/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 319
    if-eqz p1, :cond_39

    .line 320
    const/16 v1, 0x20

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f004d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 325
    :cond_39
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->requestFocus()Z

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v4, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 328
    iput-boolean v4, p0, Lcom/android/launcher3/Folder;->mIsEditingName:Z

    .line 329
    return-void
.end method

.method public enableAccessibleDrag(Z)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSearchBar()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/SearchDropTargetBar;->enableAccessibleDrag(Z)V

    move v0, v1

    .line 288
    :goto_c
    iget-object v3, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_28

    .line 292
    iget-object v3, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    if-eqz p1, :cond_34

    const/4 v0, 0x4

    :goto_19
    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eqz p1, :cond_36

    :goto_24
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setAddNewPageOnDrag(Z)V

    .line 295
    return-void

    .line 289
    :cond_28
    iget-object v3, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_34
    move v0, v1

    .line 293
    goto :goto_19

    :cond_36
    move v1, v2

    .line 294
    goto :goto_24
.end method

.method public exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Ljava/lang/Runnable;
    .registers 6

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/Stats$LaunchSourceUtils;->populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1427
    const-string v0, "sub_container"

    const-string v1, "folder"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string v0, "sub_container_page"

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/FolderPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1429
    return-void
.end method

.method public getContent()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    return-object v0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    return-object v0
.end method

.method public getExpandDuration()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$getExpandDuration(Lcom/android/launcher3/Folder;)I

    move-result v0

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 1418
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 1419
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/Folder;->mScrollAreaOffset:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1420
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/launcher3/Folder;->mScrollAreaOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1421
    return-void
.end method

.method public getInfo()Lcom/android/launcher3/FolderInfo;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .registers 2

    .prologue
    .line 925
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    if-eqz v0, :cond_16

    .line 1392
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1393
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/Folder$15;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Folder$15;-><init>(Lcom/android/launcher3/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    .line 1401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 1403
    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocationInDragLayer([I)V
    .registers 3

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 1408
    return-void
.end method

.method getPivotXForIconAnimation()F
    .registers 2

    .prologue
    .line 1039
    iget v0, p0, Lcom/android/launcher3/Folder;->mFolderIconPivotX:F

    return v0
.end method

.method getPivotYForIconAnimation()F
    .registers 2

    .prologue
    .line 1042
    iget v0, p0, Lcom/android/launcher3/Folder;->mFolderIconPivotY:F

    return v0
.end method

.method public hideItem(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 4

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1300
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    return-void
.end method

.method isDestroyed()Z
    .registers 2

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled()Z
    .registers 2

    .prologue
    .line 983
    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .registers 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->isFull()Z

    move-result v0

    return v0
.end method

.method public isLayoutRtl()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 716
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public notifyDrop()V
    .registers 2

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_7

    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 980
    :cond_7
    return-void
.end method

.method public onAdd(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 10

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mSuppressOnAdd:Z

    if-eqz v0, :cond_5

    .line 1316
    :goto_4
    return-void

    .line 1312
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/FolderPagedView;->allocateRankForNewItem(Lcom/android/launcher3/ShortcutInfo;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;

    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 1315
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    iget v6, p1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    move-object v1, p1

    .line 1314
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    goto :goto_4
.end method

.method public onAdd(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1343
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mSuppressOnAdd:Z

    if-eqz v0, :cond_5

    .line 1352
    :cond_4
    return-void

    .line 1346
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderPagedView;->createAndAddViews(Ljava/util/List;)V

    .line 1347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 1348
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 1349
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    iget v6, v1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 1350
    iget v7, v1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 1349
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    goto :goto_11
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 245
    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_d

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    .line 248
    :cond_d
    return-void
.end method

.method onCloseComplete()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 1122
    :try_start_7
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$before$com_lge_launcher3_folder_FolderColorAspect$4$1fe8b83a(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    .line 1123
    if-eqz v0, :cond_19

    .line 1124
    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    .line 1126
    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 1127
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->clearFocus()V

    .line 1128
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getItemCount()I

    move-result v0

    if-le v0, v2, :cond_2c

    .line 1129
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->requestFocus()Z

    .line 1132
    :cond_2c
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mRearrangeOnClose:Z

    if-eqz v0, :cond_36

    .line 1133
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->rearrangeChildren()V

    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mRearrangeOnClose:Z

    .line 1136
    :cond_36
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_47

    .line 1137
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mSuppressFolderDeletion:Z

    if-nez v0, :cond_55

    .line 1138
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->replaceFolderWithFinalItem()V

    .line 1143
    :cond_47
    :goto_47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mSuppressFolderDeletion:Z

    .line 1144
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->clearDragInfo()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4d} :catch_5d

    .line 1145
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$5$1fe8b83a(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 1139
    :cond_55
    :try_start_55
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_47

    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mDeleteFolderOnDropCompleted:Z
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_5c} :catch_5d

    goto :goto_47

    .line 1145
    :catch_5d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$5$1fe8b83a(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onColorChanged()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$onColorChanged(Lcom/android/launcher3/Folder;)V

    return-void
.end method

.method public onDragEnd()V
    .registers 2

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_b

    .line 637
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->completeDragExit()V

    .line 639
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mDragController:Lcom/android/launcher3/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragController;->removeDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 640
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    .prologue
    .line 695
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Folder;->mPrevTargetRank:I

    .line 696
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 699
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/DragView;->getDragRegionWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/Folder;->mScrollAreaOffset:I

    .line 700
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 813
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_2e

    .line 814
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 815
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 820
    :goto_13
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 822
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 823
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 824
    iget v0, p0, Lcom/android/launcher3/Folder;->mScrollHintDir:I

    if-eq v0, v4, :cond_2d

    .line 825
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->clearScrollHint()V

    .line 826
    iput v4, p0, Lcom/android/launcher3/Folder;->mScrollHintDir:I

    .line 828
    :cond_2d
    return-void

    .line 817
    :cond_2e
    const/16 v0, 0x20

    .line 818
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f010d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    goto :goto_13
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    .prologue
    .line 721
    const/16 v0, 0xfa

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Folder;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;I)V

    .line 722
    return-void
.end method

.method onDragOver(Lcom/android/launcher3/DropTarget$DragObject;I)V
    .registers 11

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 731
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 764
    :cond_b
    :goto_b
    return-void

    .line 734
    :cond_c
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 735
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/Folder;->mTargetRank:I

    .line 737
    iget v3, p0, Lcom/android/launcher3/Folder;->mTargetRank:I

    iget v4, p0, Lcom/android/launcher3/Folder;->mPrevTargetRank:I

    if-eq v3, v4, :cond_32

    .line 738
    iget-object v3, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 739
    iget-object v3, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iget-object v4, p0, Lcom/android/launcher3/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 740
    iget-object v3, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 741
    iget v3, p0, Lcom/android/launcher3/Folder;->mTargetRank:I

    iput v3, p0, Lcom/android/launcher3/Folder;->mPrevTargetRank:I

    .line 744
    :cond_32
    aget v3, v0, v2

    .line 745
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getNextPage()I

    move-result v4

    .line 747
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    .line 748
    const v5, 0x3ee66666    # 0.45f

    .line 747
    mul-float/2addr v5, v0

    .line 749
    cmpg-float v0, v3, v5

    if-gez v0, :cond_68

    move v0, v1

    .line 750
    :goto_4e
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v5, v6, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6a

    move v3, v1

    .line 752
    :goto_5a
    if-lez v4, :cond_6e

    iget-object v5, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget-boolean v5, v5, Lcom/android/launcher3/FolderPagedView;->mIsRtl:Z

    if-eqz v5, :cond_6c

    if-eqz v3, :cond_6e

    .line 753
    :cond_64
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_b

    :cond_68
    move v0, v2

    .line 749
    goto :goto_4e

    :cond_6a
    move v3, v2

    .line 750
    goto :goto_5a

    .line 752
    :cond_6c
    if-nez v0, :cond_64

    .line 754
    :cond_6e
    iget-object v2, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/FolderPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_86

    .line 755
    iget-object v2, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget-boolean v2, v2, Lcom/android/launcher3/FolderPagedView;->mIsRtl:Z

    if-eqz v2, :cond_84

    if-eqz v0, :cond_86

    .line 756
    :cond_80
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_b

    .line 755
    :cond_84
    if-nez v3, :cond_80

    .line 758
    :cond_86
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 759
    iget v0, p0, Lcom/android/launcher3/Folder;->mScrollHintDir:I

    if-eq v0, v7, :cond_b

    .line 760
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->clearScrollHint()V

    .line 761
    iput v7, p0, Lcom/android/launcher3/Folder;->mScrollHintDir:I

    goto/16 :goto_b
.end method

.method public onDragStart(Lcom/android/launcher3/DragSource;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 632
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 16

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1215
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/Folder;

    if-nez v0, :cond_1a

    .line 1216
    new-instance v0, Lcom/android/launcher3/Folder$13;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Folder$13;-><init>(Lcom/android/launcher3/Folder;)V

    .line 1228
    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget v1, p0, Lcom/android/launcher3/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1230
    invoke-direct {p0, p1, v12}, Lcom/android/launcher3/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Folder;->mTargetRank:I

    .line 1233
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, v1}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 1235
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1236
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1238
    :cond_3b
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->completePendingPageChanges()V

    .line 1241
    new-instance v9, Lcom/android/launcher3/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/Folder;->mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v9, v0}, Lcom/android/launcher3/ItemInfo;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 1242
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 1243
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_be

    .line 1244
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget v2, p0, Lcom/android/launcher3/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;

    move-result-object v8

    .line 1248
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    iget v6, v1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 1247
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1251
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_6b

    .line 1252
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->updateItemLocationsInDatabaseBatch()V

    .line 1254
    :cond_6b
    iput-boolean v10, p0, Lcom/android/launcher3/Folder;->mIsExternalDrag:Z

    move-object v0, v8

    .line 1260
    :goto_6e
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-static {p0, v2, p0, v1, v9}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderAspect$com_android_launcher3_Folder$exitSpringLoadedDragModeOnDrop(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/DropTarget;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)Ljava/lang/Runnable;

    move-result-object v2

    .line 1263
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/DragView;->hasDrawn()Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 1266
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getScaleX()F

    move-result v3

    .line 1267
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getScaleY()F

    move-result v4

    .line 1268
    invoke-virtual {p0, v13}, Lcom/android/launcher3/Folder;->setScaleX(F)V

    .line 1269
    invoke-virtual {p0, v13}, Lcom/android/launcher3/Folder;->setScaleY(F)V

    .line 1270
    iget-object v5, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v5

    iget-object v6, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v5, v6, v0, v2, v12}, Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 1272
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Folder;->setScaleX(F)V

    .line 1273
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Folder;->setScaleY(F)V

    .line 1278
    :goto_9b
    iput-boolean v11, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 1279
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->rearrangeChildren()V

    .line 1282
    iput-boolean v11, p0, Lcom/android/launcher3/Folder;->mSuppressOnAdd:Z

    .line 1283
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;)V

    .line 1284
    iput-boolean v10, p0, Lcom/android/launcher3/Folder;->mSuppressOnAdd:Z

    .line 1286
    iput-object v12, p0, Lcom/android/launcher3/Folder;->mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 1287
    iput-boolean v10, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    .line 1289
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getPageCount()I

    move-result v0

    if-le v0, v11, :cond_bd

    .line 1291
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/launcher3/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 1293
    :cond_bd
    return-void

    .line 1256
    :cond_be
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1257
    iget-object v2, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget v3, p0, Lcom/android/launcher3/Folder;->mEmptyCellRank:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/launcher3/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    goto :goto_6e

    .line 1275
    :cond_c8
    iput-boolean v10, p1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1276
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9b
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v7

    aput-object p2, v1, v6

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v5

    .line 844
    invoke-static {}, Lcom/lge/launcher3/folder/FolderAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderAspect;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/launcher3/folder/FolderAspect;->ajc$before$com_lge_launcher3_folder_FolderAspect$1$4c5eadfd(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZLorg/aspectj/lang/JoinPoint;)V

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mDeferDropAfterUninstall:Z

    if-eqz v0, :cond_41

    .line 845
    const-string v0, "Launcher.Folder"

    const-string v1, "Deferred handling drop because waiting for uninstall."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v0, Lcom/android/launcher3/Folder$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Folder$11;-><init>(Lcom/android/launcher3/Folder;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mDeferredAction:Ljava/lang/Runnable;

    .line 907
    :cond_40
    :goto_40
    return-void

    .line 855
    :cond_41
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_9c

    move v0, v6

    .line 857
    :goto_46
    if-eqz p4, :cond_9e

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mUninstallSuccessful:Z

    if-eqz v0, :cond_9e

    :cond_4e
    move v2, v6

    .line 859
    :goto_4f
    if-eqz v2, :cond_a0

    .line 860
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez v0, :cond_5e

    if-eq p1, p0, :cond_5e

    .line 861
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->replaceFolderWithFinalItem()V

    .line 878
    :cond_5e
    :goto_5e
    if-eq p1, p0, :cond_79

    .line 879
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 880
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 881
    if-nez v2, :cond_71

    .line 882
    iput-boolean v6, p0, Lcom/android/launcher3/Folder;->mSuppressFolderDeletion:Z

    .line 884
    :cond_71
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->completeDragExit()V

    .line 889
    :cond_79
    iput-boolean v7, p0, Lcom/android/launcher3/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 890
    iput-boolean v7, p0, Lcom/android/launcher3/Folder;->mDragInProgress:Z

    .line 891
    iput-boolean v7, p0, Lcom/android/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 892
    iput-object v9, p0, Lcom/android/launcher3/Folder;->mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 893
    iput-object v9, p0, Lcom/android/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    .line 894
    iput-boolean v7, p0, Lcom/android/launcher3/Folder;->mSuppressOnAdd:Z

    .line 898
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->updateItemLocationsInDatabaseBatch()V

    .line 902
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/FolderPagedView;->itemsPerPage()I

    move-result v1

    if-gt v0, v1, :cond_40

    .line 904
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v8, v7, v1}, Lcom/android/launcher3/FolderInfo;->setOption(IZLandroid/content/Context;)V

    goto :goto_40

    :cond_9c
    move v0, v7

    .line 855
    goto :goto_46

    :cond_9e
    move v2, v7

    .line 856
    goto :goto_4f

    .line 865
    :cond_a0
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 866
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    if-eqz v1, :cond_d0

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_d0

    .line 867
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    .line 868
    :goto_b2
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 869
    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->rank:I

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 870
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 871
    iput-boolean v6, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 873
    iput-boolean v6, p0, Lcom/android/launcher3/Folder;->mSuppressOnAdd:Z

    .line 874
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 875
    iput-boolean v7, p0, Lcom/android/launcher3/Folder;->mSuppressOnAdd:Z

    goto :goto_5e

    .line 867
    :cond_d0
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderPagedView;->createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_b2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 332
    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->dismissEditingName()V

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 201
    :try_start_6
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 202
    const v0, 0x7f0e00e2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    .line 203
    const v0, 0x7f0e00e3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderPagedView;->setFolder(Lcom/android/launcher3/Folder;)V

    .line 206
    const v0, 0x7f0e0093

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderEditText;

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderEditText;->setFolder(Lcom/android/launcher3/Folder;)V

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v2}, Lcom/android/launcher3/FolderEditText;->getInputType()I

    move-result v2

    .line 215
    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x2000

    .line 214
    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderEditText;->setInputType(I)V

    .line 217
    const v0, 0x7f0e00e5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    .line 221
    const/4 v0, 0x0

    .line 222
    iget-object v2, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Folder;->mFooterHeight:I
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_70} :catch_7f

    .line 224
    :try_start_70
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$6$b0936ab7(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_77} :catch_88

    invoke-static {}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$after$com_lge_launcher3_folder_FolderLayoutModifiedAspect$1$b0936ab7(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_7f
    move-exception v0

    :try_start_80
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$6$b0936ab7(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_88} :catch_88

    :catch_88
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$after$com_lge_launcher3_folder_FolderLayoutModifiedAspect$1$b0936ab7(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onFlingToDelete(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .registers 3

    .prologue
    .line 946
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .registers 1

    .prologue
    .line 951
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_9

    .line 1412
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->startEditingFolderName()V

    .line 1414
    :cond_9
    return-void
.end method

.method public onItemsChanged()V
    .registers 1

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->updateTextViewFocus()V

    .line 1385
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/folder/FolderAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Folder;->onLongClick_aroundBody1$advice(Lcom/android/launcher3/Folder;Landroid/view/View;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderAspect;Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 12

    .prologue
    sget-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 1069
    :try_start_e
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->getContentAreaWidth()I

    move-result v0

    .line 1070
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->getContentAreaHeight()I

    move-result v2

    .line 1072
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1073
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1075
    iget-object v5, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v5, v0, v2}, Lcom/android/launcher3/FolderPagedView;->setFixedSize(II)V

    .line 1076
    iget-object v5, p0, Lcom/android/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1078
    iget-object v4, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_69

    .line 1079
    iget-object v4, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v4

    .line 1080
    iget-object v5, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 1079
    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1081
    iget-object v5, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/FolderPagedView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v4

    .line 1082
    iget-object v7, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 1083
    iget-object v8, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/FolderPagedView;->getPaddingRight()I

    move-result v8

    add-int/2addr v4, v8

    .line 1084
    iget-object v8, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    .line 1081
    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1086
    :cond_69
    iget-object v4, p0, Lcom/android/launcher3/Folder;->mFooter:Landroid/view/View;

    .line 1087
    iget v5, p0, Lcom/android/launcher3/Folder;->mFooterHeight:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1086
    invoke-virtual {v4, v3, v5}, Landroid/view/View;->measure(II)V

    .line 1089
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 1090
    invoke-direct {p0, v2}, Lcom/android/launcher3/Folder;->getFolderHeight(I)I

    move-result v2

    .line 1091
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/Folder;->setMeasuredDimension(II)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_87} :catch_8f

    .line 1092
    invoke-static {}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$after$com_lge_launcher3_folder_FolderLayoutModifiedAspect$2$b9dbdbcd(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_8f
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$after$com_lge_launcher3_folder_FolderLayoutModifiedAspect$2$b9dbdbcd(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onRemove(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1319
    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 1322
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mCurrentDragInfo:Lcom/android/launcher3/ShortcutInfo;

    if-ne p1, v0, :cond_8

    .line 1336
    :cond_7
    :goto_7
    return-void

    .line 1323
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1324
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 1325
    iget v0, p0, Lcom/android/launcher3/Folder;->mState:I

    if-ne v0, v2, :cond_2f

    .line 1326
    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->mRearrangeOnClose:Z

    .line 1330
    :goto_17
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_7

    .line 1331
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-boolean v0, v0, Lcom/android/launcher3/FolderInfo;->opened:Z

    if-eqz v0, :cond_2b

    .line 1332
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 1334
    :cond_2b
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->replaceFolderWithFinalItem()V

    goto :goto_7

    .line 1328
    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->rearrangeChildren()V

    goto :goto_17
.end method

.method public onRemove(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1356
    iput-boolean v3, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 1357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1362
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->rearrangeChildren()V

    .line 1363
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getItemCount()I

    move-result v0

    if-gt v0, v3, :cond_27

    .line 1364
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-boolean v0, v0, Lcom/android/launcher3/FolderInfo;->opened:Z

    if-eqz v0, :cond_24

    .line 1365
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    .line 1367
    :cond_24
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->replaceFolderWithFinalItem()V

    .line 1369
    :cond_27
    return-void

    .line 1357
    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 1358
    invoke-direct {p0, v0}, Lcom/android/launcher3/Folder;->getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1359
    iget-object v2, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/FolderPagedView;->removeItem(Landroid/view/View;)V

    goto :goto_7
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/Folder;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 1388
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$7$4226011e(Ljava/lang/CharSequence;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public onUninstallActivityReturned(Z)V
    .registers 3

    .prologue
    .line 916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mDeferDropAfterUninstall:Z

    .line 917
    iput-boolean p1, p0, Lcom/android/launcher3/Folder;->mUninstallSuccessful:Z

    .line 918
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 919
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mDeferredAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 921
    :cond_e
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .registers 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 837
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 838
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, v1}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 840
    :cond_14
    return-void
.end method

.method public rearrangeChildren()V
    .registers 2

    .prologue
    .line 1098
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->rearrangeChildren(I)V

    .line 1099
    return-void
.end method

.method public rearrangeChildren(I)V
    .registers 5

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 1108
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 1109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mItemsInvalidated:Z

    .line 1110
    return-void
.end method

.method replaceFolderWithFinalItem()V
    .registers 4

    .prologue
    .line 1149
    new-instance v0, Lcom/android/launcher3/Folder$12;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Folder$12;-><init>(Lcom/android/launcher3/Folder;)V

    .line 1185
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    .line 1186
    if-eqz v1, :cond_16

    .line 1187
    iget-object v2, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/FolderIcon;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1191
    :goto_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mDestroyed:Z

    .line 1192
    return-void

    .line 1189
    :cond_16
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_12
.end method

.method sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 645
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 646
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 647
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 648
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 651
    :cond_23
    return-void
.end method

.method public setDragController(Lcom/android/launcher3/DragController;)V
    .registers 2

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mDragController:Lcom/android/launcher3/DragController;

    .line 354
    return-void
.end method

.method public setFocusOnFirstChild()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 618
    :cond_7
    :goto_7
    return-void

    .line 612
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 613
    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_7

    .line 615
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 616
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_7
.end method

.method public setFolderIcon(Lcom/android/launcher3/FolderIcon;)V
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/launcher3/Folder;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    .line 358
    return-void
.end method

.method public setFolderTitle()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$setFolderTitle(Lcom/android/launcher3/Folder;)V

    return-void
.end method

.method public showItem(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 4

    .prologue
    .line 1303
    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1304
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1305
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Z)V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/Folder;->beginDrag(Landroid/view/View;Z)Z

    .line 283
    return-void
.end method

.method public startEditingFolderName()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->mIsEditingName:Z

    .line 304
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/Folder;->supportsAppInfoDropTarget_aroundBody5$advice(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .registers 2

    .prologue
    .line 940
    const/4 v0, 0x1

    return v0
.end method

.method public supportsFlingToDelete()Z
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/Folder;->supportsFlingToDelete_aroundBody3$advice(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public updateTextViewFocus()V
    .registers 4

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v0

    .line 1202
    if-eqz v0, :cond_2c

    .line 1203
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/FolderEditText;->setNextFocusDownId(I)V

    .line 1204
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/FolderEditText;->setNextFocusRightId(I)V

    .line 1205
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/FolderEditText;->setNextFocusLeftId(I)V

    .line 1206
    iget-object v1, p0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderEditText;->setNextFocusUpId(I)V

    .line 1208
    :cond_2c
    return-void
.end method
