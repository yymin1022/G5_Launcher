.class public Lcom/lge/launcher3/folder/FolderColorAspect;
.super Ljava/lang/Object;
.source "FolderColorAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderColorAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_folder_FolderColorAspect$2$10dfcc58proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_folder_FolderColorAspect$8$6367fcdproceed(Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_folder_FolderColorAspect$com_lge_launcher3_folder_FolderColorAspect$setFolderIconColor(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/folder/FolderColorAspect;->setFolderIconColor(Landroid/content/Context;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;)Lcom/lge/launcher3/folder/FolderRenameDialog;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mRenameDialog(Lcom/android/launcher3/Folder;)Lcom/lge/launcher3/folder/FolderRenameDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$folderColor(Lcom/android/launcher3/FolderInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;)V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$folderColor(Lcom/android/launcher3/FolderInfo;)V
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$folderColor(Lcom/android/launcher3/FolderInfo;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderRenameDialog;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Folder;->ajc$set$mRenameDialog(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderRenameDialog;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$folderColor(Lcom/android/launcher3/FolderInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$applyFolderName(Lcom/android/launcher3/Folder;Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 217
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderName(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderEditText;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/Folder;->ajc$get$sHintText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderName(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mInfo(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 221
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$callRenameDialog(Lcom/android/launcher3/Folder;)V
    .registers 6

    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 167
    const-string v0, "LGFolderRename"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {p0, v0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderRenameDialog;)V

    .line 169
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;)Lcom/lge/launcher3/folder/FolderRenameDialog;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 170
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;)Lcom/lge/launcher3/folder/FolderRenameDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->dismiss()V

    .line 171
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 173
    :cond_27
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->getInstance(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/folder/FolderRenameDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderRenameDialog;)V

    .line 175
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;)Lcom/lge/launcher3/folder/FolderRenameDialog;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mInfo(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/folder/FolderRenameDialog;->setFolderInfo(Lcom/android/launcher3/FolderInfo;)V

    .line 177
    :try_start_3d
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;)Lcom/lge/launcher3/folder/FolderRenameDialog;

    move-result-object v0

    const-string v3, "LGFolderRename"

    invoke-virtual {v0, v1, v3}, Lcom/lge/launcher3/folder/FolderRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_46} :catch_4d

    .line 182
    :goto_46
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 183
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 184
    return-void

    .line 178
    :catch_4d
    move-exception v0

    .line 180
    const-string v3, "FolderColorAspect"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-static {v3, v0, v4}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_46
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$changeChildColor(Lcom/android/launcher3/Folder;I)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContent()Landroid/view/ViewGroup;

    move-result-object v7

    move v3, v4

    .line 74
    :goto_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v3, v0, :cond_d

    .line 88
    return-void

    .line 75
    :cond_d
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v5, v4

    .line 76
    :goto_14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v5, v1, :cond_1e

    .line 74
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 77
    :cond_1e
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 78
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    move v6, v4

    :goto_27
    move-object v1, v2

    .line 79
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v6, v1, :cond_34

    .line 76
    :cond_30
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_14

    :cond_34
    move-object v1, v2

    .line 80
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 81
    instance-of v8, v1, Landroid/widget/TextView;

    if-eqz v8, :cond_44

    .line 82
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_44
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_27
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$closeTalkback(Lcom/android/launcher3/Folder;)V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 197
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_45

    .line 199
    invoke-static {v1}, Lcom/android/launcher3/PagedView;->ajc$get$mNextPage(Lcom/android/launcher3/PagedView;)I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/PagedView;->ajc$get$INVALID_PAGE()I

    move-result v2

    if-eq v0, v2, :cond_46

    invoke-static {v1}, Lcom/android/launcher3/PagedView;->ajc$get$mNextPage(Lcom/android/launcher3/PagedView;)I

    move-result v0

    .line 200
    :goto_19
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0105

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 201
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 200
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mLauncher(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 204
    :cond_45
    return-void

    .line 199
    :cond_46
    invoke-static {v1}, Lcom/android/launcher3/PagedView;->ajc$get$mCurrentPage(Lcom/android/launcher3/PagedView;)I

    move-result v0

    goto :goto_19
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$dismissRenameDialog(Lcom/android/launcher3/Folder;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;)Lcom/lge/launcher3/folder/FolderRenameDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 159
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;)Lcom/lge/launcher3/folder/FolderRenameDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderRenameDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 160
    invoke-static {p0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$mRenameDialog(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderRenameDialog;)V

    .line 162
    :cond_11
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$onColorChanged(Lcom/android/launcher3/Folder;)V
    .registers 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mInfo(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/FolderInfo;->folderColor:I

    if-eqz v1, :cond_85

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mInfo(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/FolderInfo;->folderColor:I

    invoke-static {v1, v2}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderBGColor(Landroid/content/Context;I)I

    move-result v1

    .line 47
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 51
    :goto_1f
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/FolderInfo;->folderColor:I

    invoke-static {v0, v1}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderTextColor(Landroid/content/Context;I)I

    move-result v1

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setTextColor(I)V

    .line 53
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    const v0, 0x7f0e00e1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-static {p0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$changeChildColor(Lcom/android/launcher3/Folder;I)V

    .line 62
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mContent(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_76

    .line 64
    const/4 v0, 0x0

    :goto_6c
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mContent(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/FolderPagedView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_94

    .line 68
    :cond_76
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->invalidate()V

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mInfo(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 70
    return-void

    .line 49
    :cond_85
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    .line 65
    :cond_94
    invoke-static {p0}, Lcom/android/launcher3/Folder;->ajc$get$mContent(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/FolderPagedView;->ajc$privMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderPagedView$getPageIndicatorMarker(I)Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/PageIndicator;->ajc$privMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_PageIndicator$updateMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderIcon$onColorChanged(Lcom/android/launcher3/FolderIcon;)V
    .registers 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mPreviewBackground(Lcom/android/launcher3/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mInfo(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/FolderInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/FolderInfo;->folderColor:I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$privMethod$com_lge_launcher3_folder_FolderColorAspect$com_lge_launcher3_folder_FolderColorAspect$setFolderIconColor(Landroid/content/Context;Landroid/widget/ImageView;I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mInfo(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 93
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$changeFolderColor(Lcom/android/launcher3/FolderInfo;I)V
    .registers 4

    .prologue
    .line 96
    iput p1, p0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    .line 97
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-static {p0}, Lcom/android/launcher3/FolderInfo;->ajc$get$listeners(Lcom/android/launcher3/FolderInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_f

    .line 100
    return-void

    .line 98
    :cond_f
    invoke-static {p0}, Lcom/android/launcher3/FolderInfo;->ajc$get$listeners(Lcom/android/launcher3/FolderInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$FolderListener$onColorChanged(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderPagedView$getTextColor(Lcom/android/launcher3/FolderPagedView;)I
    .registers 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/FolderPagedView;->ajc$get$mFolder(Lcom/android/launcher3/FolderPagedView;)Lcom/android/launcher3/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/FolderInfo;->folderColor:I

    invoke-static {v0, v1}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderTextColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$applyFolderName(Lcom/android/launcher3/Folder;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Folder;->ajc$interMethodDispatch2$com_lge_launcher3_folder_FolderColorAspect$applyFolderName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$callRenameDialog(Lcom/android/launcher3/Folder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->callRenameDialog()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$changeChildColor(Lcom/android/launcher3/Folder;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Folder;->changeChildColor(I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$closeTalkback(Lcom/android/launcher3/Folder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->ajc$interMethodDispatch2$com_lge_launcher3_folder_FolderColorAspect$closeTalkback()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$dismissRenameDialog(Lcom/android/launcher3/Folder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->dismissRenameDialog()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$onColorChanged(Lcom/android/launcher3/Folder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->onColorChanged()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderIcon$onColorChanged(Lcom/android/launcher3/FolderIcon;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->onColorChanged()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$FolderListener$onColorChanged(Lcom/android/launcher3/FolderInfo$FolderListener;)V
    .registers 1

    invoke-interface {p0}, Lcom/android/launcher3/FolderInfo$FolderListener;->onColorChanged()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$changeFolderColor(Lcom/android/launcher3/FolderInfo;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderInfo;->changeFolderColor(I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderPagedView$getTextColor(Lcom/android/launcher3/FolderPagedView;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getTextColor()I

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/folder/FolderColorAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/folder/FolderColorAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderColorAspect;

    return-void
.end method

.method public static ajc$privMethod$com_lge_launcher3_folder_FolderColorAspect$com_lge_launcher3_folder_FolderColorAspect$setFolderIconColor(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/folder/FolderColorAspect;->setFolderIconColor(Landroid/content/Context;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderColorAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_folder_FolderColorAspect"

    sget-object v2, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderColorAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderColorAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static setFolderIconColor(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 140
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderIconMask(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 141
    if-eqz p2, :cond_3c

    .line 143
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    invoke-static {p0, p2}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderBGColor(Landroid/content/Context;I)I

    move-result v2

    .line 145
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 146
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 148
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 149
    invoke-virtual {v2, v1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 152
    :goto_38
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    return-void

    :cond_3c
    move-object v0, v1

    goto :goto_38
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_folder_FolderColorAspect$1$b8ce6778(Landroid/content/Context;Landroid/content/ContentValues;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "context,values"
        value = "(execution(* *FolderInfo.onAddToDatabase(Context, ContentValues)) && args(context, values))"
    .end annotation

    .prologue
    .line 104
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    .line 105
    const-string v1, "iconType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    return-void
.end method

.method public ajc$after$com_lge_launcher3_folder_FolderColorAspect$3$21038b2f(Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(* *Folder.bind(..))"
    .end annotation

    .prologue
    .line 116
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 117
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/FolderInfo;->folderColor:I

    if-eqz v2, :cond_2a

    .line 119
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/FolderInfo;->folderColor:I

    invoke-static {v2, v3}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderBGColor(Landroid/content/Context;I)I

    move-result v2

    .line 120
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 123
    :cond_2a
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/FolderInfo;->folderColor:I

    invoke-static {v1, v2}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderTextColor(Landroid/content/Context;I)I

    move-result v2

    .line 124
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/FolderEditText;->setTextColor(I)V

    .line 126
    const v1, 0x7f0e00e0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    const v1, 0x7f0e00e1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 130
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 131
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 132
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-static {v0}, Lcom/android/launcher3/Folder;->ajc$get$mInfo(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7e

    .line 135
    invoke-static {v0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderName(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderEditText;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/Folder;->ajc$get$mInfo(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_7e
    return-void
.end method

.method public ajc$after$com_lge_launcher3_folder_FolderColorAspect$5$1fe8b83a(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void Folder.onCloseComplete())"
    .end annotation

    .prologue
    .line 192
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 193
    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$closeTalkback(Lcom/android/launcher3/Folder;)V

    .line 194
    return-void
.end method

.method public ajc$after$com_lge_launcher3_folder_FolderColorAspect$6$b0936ab7(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void Folder.onFinishInflate())"
    .end annotation

    .prologue
    .line 207
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 208
    invoke-static {v0}, Lcom/android/launcher3/Folder;->ajc$get$mFolderName(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderEditText;

    move-result-object v1

    new-instance v2, Lcom/lge/launcher3/folder/FolderColorAspect$FolderColorAspect$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/launcher3/folder/FolderColorAspect$FolderColorAspect$1;-><init>(Lcom/lge/launcher3/folder/FolderColorAspect;Lcom/android/launcher3/Folder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/FolderEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method public ajc$after$com_lge_launcher3_folder_FolderColorAspect$7$4226011e(Ljava/lang/CharSequence;Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "title"
        value = "(execution(public void Folder.onTitleChanged(CharSequence)) && args(title))"
    .end annotation

    .prologue
    .line 224
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 225
    invoke-static {v0, p1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$applyFolderName(Lcom/android/launcher3/Folder;Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method

.method public ajc$after$com_lge_launcher3_folder_FolderColorAspect$9$820c8ef2(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "initialization(FolderInfo.new())"
    .end annotation

    .prologue
    .line 239
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 240
    const v2, 0x7f0c002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 239
    iput v1, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    .line 241
    return-void
.end method

.method public ajc$around$com_lge_launcher3_folder_FolderColorAspect$2$10dfcc58(Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon;
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "call(* *FolderIcon.fromXml(..))"
    .end annotation

    .prologue
    .line 109
    invoke-static {p1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$around$com_lge_launcher3_folder_FolderColorAspect$2$10dfcc58proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mPreviewBackground(Lcom/android/launcher3/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getFolderInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/FolderInfo;->folderColor:I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$privMethod$com_lge_launcher3_folder_FolderColorAspect$com_lge_launcher3_folder_FolderColorAspect$setFolderIconColor(Landroid/content/Context;Landroid/widget/ImageView;I)V

    .line 111
    invoke-static {v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setAppNotifierDrawer(Lcom/android/launcher3/FolderIcon;)V

    .line 112
    return-object v0
.end method

.method public ajc$around$com_lge_launcher3_folder_FolderColorAspect$8$6367fcd(Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/view/View;
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "item,ajc$aroundClosure"
        value = "(execution(public View FolderPagedView.createNewView(ShortcutInfo)) && args(item))"
    .end annotation

    .prologue
    .line 233
    invoke-static {p1, p2}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$around$com_lge_launcher3_folder_FolderColorAspect$8$6367fcdproceed(Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 234
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/FolderPagedView;

    invoke-static {v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderPagedView$getTextColor(Lcom/android/launcher3/FolderPagedView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    .line 235
    return-object v0
.end method

.method public ajc$before$com_lge_launcher3_folder_FolderColorAspect$4$1fe8b83a(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(void Folder.onCloseComplete())"
    .end annotation

    .prologue
    .line 187
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    .line 188
    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$dismissRenameDialog(Lcom/android/launcher3/Folder;)V

    .line 189
    return-void
.end method
