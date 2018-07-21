.class public Lcom/lge/launcher3/iconchange/IconChangeActivity;
.super Landroid/app/Activity;
.source "IconChangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/iconchange/IconChangeActivity$OnPhotoIconDeletedListener;,
        Lcom/lge/launcher3/iconchange/IconChangeActivity$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$iconchange$IconChangeActivity$State:[I = null

.field public static final INVALID_POSITION:I = -0x1

.field public static final MENU_ICONCHANGE_DELETE:I = 0x0

.field private static final RUNTIME_STATE_ICONCHANGE_CURRENT_STATE:Ljava/lang/String; = "iconchange.currentState"

.field private static final RUNTIME_STATE_ICONCHANGE_SELECTED_ITEM_ID:Ljava/lang/String; = "iconchange.iconChangeSelectedItemId"

.field private static final RUNTIME_STATE_ICONCHANGE_SELECTED_LIST:Ljava/lang/String; = "iconchange.iconChangeSelectedList"

.field private static final RUNTIME_STATE_ICONCHANGE_SELECT_SIZE_SPANX:Ljava/lang/String; = "iconchange.iconChangeSelectSizeSpanX"

.field private static final RUNTIME_STATE_ICONCHANGE_SELECT_SIZE_SPANY:Ljava/lang/String; = "iconchange.iconChangeSelectSizeSpanY"

.field public static final TAG:Ljava/lang/String; = "LGIconChangeActivity"


# instance fields
.field private actionBarDelete:Landroid/view/MenuItem;

.field private mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

.field private mCreatePhotoBtn:Landroid/view/View;

.field private mCreatePhotoBtnLayout:Landroid/view/View;

.field private mCreatePhotoLayout:Landroid/view/View;

.field private mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteIconBtnCancel:Landroid/view/View;

.field private mDeleteIconBtnOK:Landroid/view/View;

.field private mDeleteIconCount:Landroid/widget/TextView;

.field private mDeleteIconLayout:Landroid/view/View;

.field private mDeleteIconSelectAll:Landroid/widget/CheckBox;

.field private mDeleteIconSelectAllText:Landroid/widget/TextView;

.field private mDeleteViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFocusItemPosition:I

.field private mGridNumColumn:I

.field private mGridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mGridViewItemKeyListener:Landroid/view/View$OnKeyListener;

.field private mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

.field private mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

.field private mIconChangeLayout:Landroid/view/View;

.field private mIconChangePreviewIcon:Landroid/widget/ImageView;

.field private mIconChangePreviewSize:Landroid/widget/TextView;

.field private mIconChangeSelectSizeView:Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

.field private mIconListBtnCancel:Landroid/view/View;

.field private mIconListBtnOK:Landroid/view/View;

.field private mIconListDeleteGridview:Landroid/widget/GridView;

.field private mIconListGridview:Landroid/widget/GridView;

.field private mIconListGridviewTitle:Landroid/widget/TextView;

.field private mIconListLayout:Landroid/view/View;

.field private mIconSizeFormat:Ljava/lang/String;

.field private mLGIconChangeDbHelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

.field private mLGIconManager:Lcom/lge/launcher3/iconchange/IconChangeManager;

.field private mOnPhotoIconDeletedListener:Lcom/lge/launcher3/iconchange/IconChangeActivity$OnPhotoIconDeletedListener;

.field private mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mResources:Landroid/content/res/Resources;

.field private mSelectSizeBtnCancel:Landroid/view/View;

.field private mSelectSizeBtnOK:Landroid/view/View;

.field private mSelectSizeLayout:Landroid/view/View;

.field private mSelectedIconCountFormat:Ljava/lang/String;

.field private mSelectedItemPosition:I

.field private mToastDockIconOnly1x1:Landroid/widget/Toast;

.field private mToastNoImageIcon:Landroid/widget/Toast;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$iconchange$IconChangeActivity$State()[I
    .registers 3

    .prologue
    .line 48
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->$SWITCH_TABLE$com$lge$launcher3$iconchange$IconChangeActivity$State:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->values()[Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->DELETE_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->HIDDEN:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_PHOTO_ICON_SIZE:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->$SWITCH_TABLE$com$lge$launcher3$iconchange$IconChangeActivity$State:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 105
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 114
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->HIDDEN:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    .line 124
    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectedItemPosition:I

    .line 125
    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mFocusItemPosition:I

    .line 129
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;-><init>(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mGridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 153
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity$2;-><init>(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 165
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;-><init>(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mGridViewItemKeyListener:Landroid/view/View$OnKeyListener;

    .line 910
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$4;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity$4;-><init>(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOnPhotoIconDeletedListener:Lcom/lge/launcher3/iconchange/IconChangeActivity$OnPhotoIconDeletedListener;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeInfo;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeAdapter;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V
    .registers 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->updateDeleteIconCount()V

    return-void
.end method

.method static synthetic access$11(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lge/launcher3/iconchange/IconChangeActivity;I)V
    .registers 2

    .prologue
    .line 125
    iput p1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mFocusItemPosition:I

    return-void
.end method

.method static synthetic access$13(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mGridNumColumn:I

    return v0
.end method

.method static synthetic access$14(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mFocusItemPosition:I

    return v0
.end method

.method static synthetic access$15(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListBtnCancel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeManager;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconManager:Lcom/lge/launcher3/iconchange/IconChangeManager;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lge/launcher3/iconchange/IconChangeActivity;Lcom/android/launcher3/ShortcutInfo;)V
    .registers 2

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->deleteSelectedIcons(Lcom/android/launcher3/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$18(Lcom/lge/launcher3/iconchange/IconChangeActivity;Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V
    .registers 3

    .prologue
    .line 670
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/iconchange/IconChangeActivity;I)V
    .registers 2

    .prologue
    .line 124
    iput p1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectedItemPosition:I

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/Toast;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mToastNoImageIcon:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/iconchange/IconChangeActivity;Landroid/widget/Toast;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mToastDockIconOnly1x1:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$5(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/Toast;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mToastDockIconOnly1x1:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/launcher3/iconchange/IconChangeActivity;I)V
    .registers 2

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setChangedIconInfo(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V
    .registers 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->updatePreview()V

    return-void
.end method

.method static synthetic access$8(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private checkFinishIconChange()V
    .registers 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-boolean v0, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_25

    .line 780
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mToastDockIconOnly1x1:Landroid/widget/Toast;

    if-eqz v0, :cond_15

    .line 781
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mToastDockIconOnly1x1:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 784
    :cond_15
    const v0, 0x7f0f00e4

    const/4 v1, 0x0

    .line 783
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mToastNoImageIcon:Landroid/widget/Toast;

    .line 785
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mToastNoImageIcon:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 790
    :goto_24
    return-void

    .line 787
    :cond_25
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconManager:Lcom/lge/launcher3/iconchange/IconChangeManager;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeManager;->changeIcon(Lcom/lge/launcher3/iconchange/IconChangeInfo;)V

    .line 788
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->finishIconChangeActivity()V

    goto :goto_24
.end method

.method private deleteSelectedIcons(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 459
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getSelectedList()Ljava/util/HashSet;

    move-result-object v0

    .line 461
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 462
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 463
    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_52

    .line 499
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOnPhotoIconDeletedListener:Lcom/lge/launcher3/iconchange/IconChangeActivity$OnPhotoIconDeletedListener;

    if-eqz v0, :cond_3b

    .line 500
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOnPhotoIconDeletedListener:Lcom/lge/launcher3/iconchange/IconChangeActivity$OnPhotoIconDeletedListener;

    invoke-interface {v0, v2}, Lcom/lge/launcher3/iconchange/IconChangeActivity$OnPhotoIconDeletedListener;->onPhotoIconDeleted(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 501
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 502
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->requestReload(Landroid/content/Context;)V

    .line 503
    const v0, 0x7f0f008b

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 509
    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 513
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 514
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 515
    :goto_51
    return-void

    .line 464
    :cond_52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 467
    :try_start_5c
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/iconchange/IconItemInfo;
    :try_end_64
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5c .. :try_end_64} :catch_c0

    .line 473
    if-eqz v0, :cond_12

    .line 474
    iget-object v1, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->id:Ljava/lang/String;

    .line 477
    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v4, v4, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 478
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput-boolean v6, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    .line 479
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput v6, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    .line 480
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput v6, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 481
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    .line 482
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v4, v4, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    .line 483
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput-object v7, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    const/4 v4, -0x1

    iput v4, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    .line 485
    iput v5, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectedItemPosition:I

    .line 486
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v4, v4, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->setSelectedIconId(Ljava/lang/String;)V

    .line 487
    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectedItemPosition:I

    invoke-direct {p0, v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setChangedIconInfo(I)V

    .line 488
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->updatePreview()V

    .line 491
    :cond_aa
    const-string v1, "photo_icon_id"

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/iconchange/IconItemInfo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 492
    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconChangeDbHelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    invoke-virtual {v4, v1}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->delete(I)V

    .line 494
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 469
    :catch_c0
    move-exception v0

    const-string v0, "LGIconChangeActivity"

    const-string v1, "(Reason: index of Array is equals to size of Array)"

    new-array v2, v5, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_51

    .line 509
    :cond_cb
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/iconchange/IconItemInfo;

    .line 510
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->remove(Ljava/lang/Object;)V

    .line 511
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->remove(Ljava/lang/Object;)V

    goto/16 :goto_3f
.end method

.method private finishIconChangeActivity()V
    .registers 3

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->closeOptionsMenu()V

    .line 666
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->HIDDEN:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V

    .line 667
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->finish()V

    .line 668
    return-void
.end method

.method private goneVisibilityAllStateLayout()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 730
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 733
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 288
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconChangeDbHelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    .line 289
    invoke-static {p0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/iconchange/IconChangeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconManager:Lcom/lge/launcher3/iconchange/IconChangeManager;

    .line 291
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mGridNumColumn:I

    .line 292
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectedIconCountFormat:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconSizeFormat:Ljava/lang/String;

    .line 294
    return-void
.end method

.method private initActionBar()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 219
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 221
    const v1, 0x7f040025

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 222
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 224
    const v0, 0x7f0e006f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 223
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    .line 226
    const v0, 0x7f0e0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAllText:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f0e0071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconCount:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAllText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method private initIconListGridView()V
    .registers 6

    .prologue
    .line 638
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;-><init>(Landroid/app/Activity;)V

    .line 639
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconChangeDbHelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->setPhotoIconDBHelper(Lcom/lge/launcher3/iconchange/IconChangeDbHelper;)Lcom/lge/launcher3/iconchange/IconChangeListBuilder;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v1, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->originalIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->setOriginalIcon(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/iconchange/IconChangeListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->clear()V

    .line 643
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->addAll(Ljava/util/Collection;)V

    .line 645
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_62

    .line 651
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->clear()V

    .line 652
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->addAll(Ljava/util/Collection;)V

    .line 654
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v1, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->setSelectedIconId(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    if-ne v0, v1, :cond_5a

    .line 657
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 658
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 661
    :cond_5a
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mGridViewItemKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 662
    return-void

    .line 646
    :cond_62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/iconchange/IconItemInfo;

    .line 647
    iget-object v3, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->source:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

    sget-object v4, Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;->DB:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

    if-ne v3, v4, :cond_2a

    .line 648
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method private initLayout()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    const-string v0, "LGIconChangeActivity"

    const-string v1, "Initialize IconChangeManager."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mResources:Landroid/content/res/Resources;

    .line 299
    const v0, 0x7f0e0072

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    .line 301
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListLayout:Landroid/view/View;

    .line 302
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeLayout:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconLayout:Landroid/view/View;

    .line 306
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    .line 307
    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 306
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangePreviewIcon:Landroid/widget/ImageView;

    .line 309
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    .line 310
    const v1, 0x7f0e0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 309
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangePreviewSize:Landroid/widget/TextView;

    .line 311
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    .line 312
    const v1, 0x7f0e0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 311
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoBtnLayout:Landroid/view/View;

    .line 313
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_PHOTOICON_LAYOUT:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 314
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    .line 315
    const v1, 0x7f0e0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 314
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoLayout:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoBtn:Landroid/view/View;

    .line 320
    :cond_7c
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    .line 321
    const v1, 0x7f0e007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 320
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridviewTitle:Landroid/widget/TextView;

    .line 322
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    .line 323
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    .line 324
    const v2, 0x7f0e007d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    .line 326
    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 325
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    .line 328
    invoke-static {}, Lcom/lge/launcher3/util/TextUtils;->isRToLLanguage()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 329
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVerticalScrollbarPosition(I)V

    .line 330
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVerticalScrollbarPosition(I)V

    .line 334
    :cond_c1
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    invoke-direct {v0, p0, v3}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    .line 335
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-direct {v0, p0, v3}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    .line 337
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mGridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    .line 343
    const v1, 0x7f0e0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

    .line 342
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeSelectSizeView:Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

    .line 347
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListBtnCancel:Landroid/view/View;

    .line 348
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListBtnOK:Landroid/view/View;

    .line 349
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeBtnCancel:Landroid/view/View;

    .line 350
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeBtnOK:Landroid/view/View;

    .line 351
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconBtnCancel:Landroid/view/View;

    .line 352
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    const v1, 0x7f0e008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconBtnOK:Landroid/view/View;

    .line 354
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoBtn:Landroid/view/View;

    if-eqz v0, :cond_13c

    .line 355
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    :cond_13c
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoLayout:Landroid/view/View;

    if-eqz v0, :cond_145

    .line 358
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    :cond_145
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListBtnCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListBtnOK:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeBtnCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeBtnOK:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconBtnCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconBtnOK:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    return-void
.end method

.method private static requestReload(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.launcher2.FORCERELOAD_HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    return-void
.end method

.method private setActionBarState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 737
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 738
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 739
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 740
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 742
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    if-eqz v1, :cond_18

    .line 743
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 746
    :cond_18
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->$SWITCH_TABLE$com$lge$launcher3$iconchange$IconChangeActivity$State()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_74

    .line 776
    :cond_25
    :goto_25
    return-void

    .line 748
    :pswitch_26
    const v1, 0x7f0f00f3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 749
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_25

    .line 750
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 751
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 752
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    const v1, 0x7f020074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 753
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_25

    .line 755
    :cond_4b
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    const v1, 0x7f020075

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 756
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_25

    .line 761
    :pswitch_59
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 762
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 763
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f00e6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_25

    .line 767
    :pswitch_6a
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 768
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 769
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_25

    .line 746
    :pswitch_data_74
    .packed-switch 0x2
        :pswitch_26
        :pswitch_59
        :pswitch_6a
    .end packed-switch
.end method

.method private setChangedIconInfo(I)V
    .registers 5

    .prologue
    .line 617
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/iconchange/IconItemInfo;

    .line 618
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    .line 619
    iget-object v1, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->source:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

    sget-object v2, Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;->DB:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

    if-ne v1, v2, :cond_42

    .line 620
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v2, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanX:I

    iput v2, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    .line 621
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v2, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanY:I

    iput v2, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 622
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    .line 623
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    const-string v1, "photo_icon"

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/iconchange/IconItemInfo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v2, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    .line 624
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v2, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/lge/launcher3/iconchange/IconChangeUtil;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    .line 625
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v0, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->textColor:I

    iput v0, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    .line 635
    :goto_41
    return-void

    .line 627
    :cond_42
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v2, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanX:I

    iput v2, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    .line 628
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v2, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanY:I

    iput v2, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 629
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    .line 630
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    .line 631
    iget-object v0, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeUtil;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 630
    invoke-static {v0, v2}, Lcom/lge/launcher3/util/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    .line 632
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v1, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    .line 633
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    goto :goto_41
.end method

.method private setState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 671
    const-string v0, "LGIconChangeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    if-eq v0, p1, :cond_29

    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    if-nez v0, :cond_2a

    .line 727
    :cond_29
    :goto_29
    return-void

    .line 677
    :cond_2a
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoBtnLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 680
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->$SWITCH_TABLE$com$lge$launcher3$iconchange$IconChangeActivity$State()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c8

    .line 725
    :cond_47
    :goto_47
    invoke-direct {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setActionBarState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;)V

    .line 726
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    goto :goto_29

    .line 682
    :pswitch_4d
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->goneVisibilityAllStateLayout()V

    .line 683
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoBtnLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridviewTitle:Landroid/widget/TextView;

    .line 686
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 689
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mGridNumColumn:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 690
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    if-eqz v0, :cond_47

    .line 691
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput-boolean v3, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    goto :goto_47

    .line 696
    :pswitch_87
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->goneVisibilityAllStateLayout()V

    .line 697
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 699
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f00e6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_47

    .line 703
    :pswitch_9f
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->goneVisibilityAllStateLayout()V

    .line 704
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 705
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->updateDeleteIconCount()V

    .line 706
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_47

    .line 710
    :pswitch_b0
    if-nez p2, :cond_b5

    .line 711
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->goneVisibilityAllStateLayout()V

    .line 714
    :cond_b5
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_be

    .line 715
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 717
    :cond_be
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_47

    .line 718
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_47

    .line 680
    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_4d
        :pswitch_87
        :pswitch_9f
    .end packed-switch
.end method

.method private showDeleteDialog(I)V
    .registers 5

    .prologue
    const v2, 0x7f0f00f2

    .line 518
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    const v1, 0x7f0f00ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 520
    if-nez p1, :cond_2c

    .line 522
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 530
    :goto_13
    const v1, 0x7f0f008c

    new-instance v2, Lcom/lge/launcher3/iconchange/IconChangeActivity$5;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity$5;-><init>(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    const v1, 0x7f0f008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 539
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 540
    return-void

    .line 523
    :cond_2c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_36

    .line 525
    const v1, 0x7f0f00f1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_13

    .line 528
    :cond_36
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_13
.end method

.method private startCreatePhotoIconActivity()V
    .registers 5

    .prologue
    const/16 v3, 0xc

    .line 370
    const-string v0, "LGIconChangeActivity"

    const-string v1, "Call CreatePhotoIconActivity"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    const-string v1, "requestCode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v1, "spanX"

    .line 376
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeSelectSizeView:Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

    invoke-virtual {v2}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->getSpanX()I

    move-result v2

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    const-string v1, "spanY"

    .line 378
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeSelectSizeView:Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

    invoke-virtual {v2}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->getSpanY()I

    move-result v2

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-class v1, Lcom/lge/launcher3/iconchange/IconChangeCreatePhotoIconActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0, v3}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 382
    return-void
.end method

.method private updateDeleteIconCount()V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v2}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getSelectedCount()I

    move-result v2

    .line 448
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectedIconCountFormat:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconBtnOK:Landroid/view/View;

    if-lez v2, :cond_23

    :goto_1f
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 450
    return-void

    :cond_23
    move v0, v1

    .line 449
    goto :goto_1f
.end method

.method private updatePreview()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 431
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_76

    .line 432
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangePreviewIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v1, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 436
    :goto_12
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangePreviewIcon:Landroid/widget/ImageView;

    .line 437
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconSizeFormat:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v3, v3, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 438
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v3, v3, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 437
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangePreviewSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconSizeFormat:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v3, v3, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 440
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v3, v3, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 439
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangePreviewSize:Landroid/widget/TextView;

    .line 442
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconSizeFormat:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v3, v3, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 443
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget v3, v3, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 442
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 444
    return-void

    .line 434
    :cond_76
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangePreviewIcon:Landroid/widget/ImageView;

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12
.end method

.method private updateSelectAllContentDescription()V
    .registers 6

    .prologue
    .line 830
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f00e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 832
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 833
    if-eqz v2, :cond_4a

    .line 834
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f00f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 835
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 842
    :goto_49
    return-void

    .line 838
    :cond_4a
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 839
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 840
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method


# virtual methods
.method public changeStateToDeleteIcon()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 853
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 854
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->setSelectAll(Z)V

    .line 855
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 856
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 857
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->DELETE_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-direct {p0, v0, v2}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V

    .line 858
    return-void
.end method

.method public excutePhotoIconActivity()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 821
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeSelectSizeView:Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

    invoke-virtual {v0, v1, v1}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->setSpanXY(II)V

    .line 822
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-boolean v0, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isDockIcon:Z

    if-nez v0, :cond_13

    .line 823
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_PHOTO_ICON_SIZE:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V

    .line 827
    :goto_12
    return-void

    .line 825
    :cond_13
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->startCreatePhotoIconActivity()V

    goto :goto_12
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x1

    .line 386
    const-string v0, "LGIconChangeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/16 v0, 0xd

    if-eq p1, v0, :cond_29

    .line 388
    const/16 v0, 0xc

    if-eq p1, v0, :cond_29

    .line 428
    :cond_28
    :goto_28
    return-void

    .line 391
    :cond_29
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    if-eqz v0, :cond_28

    .line 395
    if-ne p2, v3, :cond_92

    if-eqz p3, :cond_92

    .line 397
    const-string v0, "photoIconPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    const-string v0, "photoIconThumbnailPath"

    .line 399
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    const-string v0, "spanX"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 402
    const-string v0, "spanY"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 404
    invoke-static {p0, v2}, Lcom/lge/launcher3/util/Utilities;->getBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    invoke-static {p0, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->calculateAdaptiveTextColorForBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)I

    move-result v6

    .line 406
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconChangeDbHelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    .line 408
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput-boolean v7, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    .line 409
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput-object v3, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    invoke-static {p0, v2}, Lcom/lge/launcher3/util/Utilities;->getBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    .line 411
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput v4, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    .line 412
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput v5, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 413
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iput v6, v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    .line 416
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 419
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 421
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconManager:Lcom/lge/launcher3/iconchange/IconChangeManager;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeManager;->changeIcon(Lcom/lge/launcher3/iconchange/IconChangeInfo;)V

    .line 422
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->finishIconChangeActivity()V

    goto :goto_28

    .line 424
    :cond_92
    if-ne p2, v3, :cond_28

    .line 425
    const-string v0, "LGIconChangeActivity"

    const-string v1, "Fail to change icon. (Reason: return data is null)"

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_28
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 862
    const-string v0, "LGIconChangeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBackPressed state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-static {}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->$SWITCH_TABLE$com$lge$launcher3$iconchange$IconChangeActivity$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 875
    :goto_25
    return-void

    .line 865
    :pswitch_26
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->finishIconChangeActivity()V

    goto :goto_25

    .line 869
    :pswitch_2a
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V

    goto :goto_25

    .line 863
    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_26
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 794
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListBtnCancel:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 795
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->finishIconChangeActivity()V

    .line 818
    :cond_c
    :goto_c
    return-void

    .line 796
    :cond_d
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListBtnOK:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 797
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->checkFinishIconChange()V

    goto :goto_c

    .line 798
    :cond_19
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoBtn:Landroid/view/View;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCreatePhotoBtn:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 799
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->excutePhotoIconActivity()V

    goto :goto_c

    .line 800
    :cond_29
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeBtnCancel:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconBtnCancel:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 801
    :cond_39
    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-direct {p0, v1, v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V

    goto :goto_c

    .line 802
    :cond_3f
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectSizeBtnOK:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 803
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->startCreatePhotoIconActivity()V

    goto :goto_c

    .line 804
    :cond_4b
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAllText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 805
    :cond_5b
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    .line 806
    invoke-virtual {v2}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getSelectedCount()I

    move-result v2

    .line 805
    if-ne v1, v2, :cond_87

    .line 807
    :goto_69
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 808
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->setSelectAll(Z)V

    .line 809
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 810
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 811
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->updateSelectAllContentDescription()V

    .line 812
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->updateDeleteIconCount()V

    goto :goto_c

    .line 805
    :cond_87
    const/4 v0, 0x1

    goto :goto_69

    .line 813
    :cond_89
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconBtnOK:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 814
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getCount()I

    move-result v2

    .line 815
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getSelectedCount()I

    move-result v1

    .line 816
    if-ne v1, v2, :cond_a4

    :goto_9f
    invoke-direct {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->showDeleteDialog(I)V

    goto/16 :goto_c

    :cond_a4
    move v0, v1

    goto :goto_9f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 198
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_PHOTOICON_LAYOUT:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 201
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setContentView(I)V

    .line 204
    :cond_18
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->initLayout()V

    .line 205
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->init()V

    .line 207
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconManager:Lcom/lge/launcher3/iconchange/IconChangeManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getOriginIconShortcutInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->showIconChangeView(Lcom/android/launcher3/ShortcutInfo;)V

    .line 208
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->initActionBar()V

    .line 210
    if-eqz p1, :cond_2f

    .line 211
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->restoreIconChangeView(Landroid/os/Bundle;)V

    .line 213
    :cond_2f
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 236
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_PHOTOICON_LAYOUT:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 238
    const v0, 0x7f0f008f

    .line 237
    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    .line 239
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    const v1, 0x7f020074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 240
    const/4 v1, 0x2

    .line 239
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 243
    :cond_1f
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 884
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    if-eqz v0, :cond_a

    .line 885
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 887
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    if-eqz v0, :cond_13

    .line 888
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconListDeleteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 890
    :cond_13
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconChangeDbHelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    if-eqz v0, :cond_19

    .line 891
    iput-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconChangeDbHelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    .line 893
    :cond_19
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    if-eqz v0, :cond_24

    .line 894
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->clear()V

    .line 895
    iput-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeAdapter:Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    .line 897
    :cond_24
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    if-eqz v0, :cond_2f

    .line 898
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->clear()V

    .line 899
    iput-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    .line 901
    :cond_2f
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOnPhotoIconDeletedListener:Lcom/lge/launcher3/iconchange/IconChangeActivity$OnPhotoIconDeletedListener;

    if-eqz v0, :cond_35

    .line 902
    iput-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOnPhotoIconDeletedListener:Lcom/lge/launcher3/iconchange/IconChangeActivity$OnPhotoIconDeletedListener;

    .line 904
    :cond_35
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mGridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_3b

    .line 905
    iput-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mGridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 907
    :cond_3b
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 908
    return-void
.end method

.method public onMenuKeyPressed()Z
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_9

    .line 846
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 849
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 272
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1c

    .line 284
    :cond_7
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 274
    :sswitch_c
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->changeStateToDeleteIcon()V

    .line 275
    const/4 v0, 0x1

    goto :goto_b

    .line 277
    :sswitch_11
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    if-eq v0, v1, :cond_7

    .line 278
    invoke-virtual {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->onBackPressed()V

    goto :goto_7

    .line 272
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_c
        0x102002c -> :sswitch_11
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_b

    .line 249
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 252
    :cond_b
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    if-ne v0, v1, :cond_33

    .line 253
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_1a

    .line 254
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    :cond_1a
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_33

    .line 258
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_38

    .line 259
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    const v1, 0x7f020074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 260
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 267
    :cond_33
    :goto_33
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 262
    :cond_38
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    const v1, 0x7f020075

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 263
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->actionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_33
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 559
    const-string v0, "LGIconChangeActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeSelectSizeView:Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    if-nez v0, :cond_10

    .line 573
    :cond_f
    :goto_f
    return-void

    .line 565
    :cond_10
    const-string v0, "iconchange.currentState"

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "iconchange.iconChangeSelectSizeSpanX"

    .line 567
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeSelectSizeView:Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->getSpanX()I

    move-result v1

    .line 566
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    const-string v0, "iconchange.iconChangeSelectSizeSpanY"

    .line 569
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeSelectSizeView:Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->getSpanY()I

    move-result v1

    .line 568
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 570
    const-string v0, "iconchange.iconChangeSelectedList"

    .line 571
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getSelectedListIntArray()[I

    move-result-object v1

    .line 570
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 572
    const-string v0, "iconchange.iconChangeSelectedItemId"

    iget v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mSelectedItemPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f
.end method

.method public restoreIconChangeView(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 576
    const-string v0, "LGIconChangeActivity"

    const-string v2, "restoreIconChangeView"

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeLayout:Landroid/view/View;

    if-nez v0, :cond_f

    .line 579
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->initLayout()V

    .line 582
    :cond_f
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    if-nez v0, :cond_20

    .line 583
    const-string v0, "LGIconChangeActivity"

    const-string v2, "Fail to restore icon change state. (OriginalIconInfo is null.)"

    new-array v1, v1, [I

    invoke-static {v0, v2, v1}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 584
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->finishIconChangeActivity()V

    .line 614
    :goto_1f
    return-void

    .line 589
    :cond_20
    const-string v0, "iconchange.currentState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->valueOf(Ljava/lang/String;)Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    move-result-object v2

    .line 591
    const-string v0, "iconchange.iconChangeSelectSizeSpanX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 593
    const-string v3, "iconchange.iconChangeSelectSizeSpanY"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 595
    const-string v4, "iconchange.iconChangeSelectedList"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 598
    const-string v5, "iconchange.iconChangeSelectedItemId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 600
    const/4 v6, -0x1

    if-eq v5, v6, :cond_48

    .line 601
    invoke-direct {p0, v5}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setChangedIconInfo(I)V

    .line 603
    :cond_48
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->initIconListGridView()V

    .line 604
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->updatePreview()V

    .line 606
    iget-object v5, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeSelectSizeView:Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;

    invoke-virtual {v5, v0, v3}, Lcom/lge/launcher3/iconchange/IconChangeSelectSizeView;->setSpanXY(II)V

    .line 607
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0, v4}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->setSelectedList([I)V

    .line 608
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mDeleteIconSelectAll:Landroid/widget/CheckBox;

    .line 609
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mIconChangeDeleteAdapter:Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    .line 610
    invoke-virtual {v4}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getSelectedCount()I

    move-result v4

    .line 609
    if-ne v0, v4, :cond_74

    const/4 v0, 0x1

    :goto_69
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 612
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->HIDDEN:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    .line 613
    invoke-direct {p0, v2, v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V

    goto :goto_1f

    :cond_74
    move v0, v1

    .line 609
    goto :goto_69
.end method

.method public showIconChangeView(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 543
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->HIDDEN:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mCurrentState:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    .line 544
    iput-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    .line 545
    iput-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    .line 548
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mLGIconChangeDbHelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    invoke-direct {v0, p0, p1, v1}, Lcom/lge/launcher3/iconchange/IconChangeInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/ShortcutInfo;Lcom/lge/launcher3/iconchange/IconChangeDbHelper;)V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    .line 550
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeInfo;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mOriginalIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeInfo;-><init>(Lcom/lge/launcher3/iconchange/IconChangeInfo;)V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity;->mChangedIconInfo:Lcom/lge/launcher3/iconchange/IconChangeInfo;

    .line 552
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->initIconListGridView()V

    .line 553
    invoke-direct {p0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->updatePreview()V

    .line 554
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->setState(Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V

    .line 555
    return-void
.end method
