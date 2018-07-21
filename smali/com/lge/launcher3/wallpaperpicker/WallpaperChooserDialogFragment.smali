.class public Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;,
        Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final INVALID_NUMBER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.WallpaperChooserDialogFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurSelectedPosition:I

.field private mCurrentPos:I

.field private mDestClickItemPostion:I

.field protected mEmbedded:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mIsClickItem:Z

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorWallpaperTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewH:I

.field private mPreviewW:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 59
    iput v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mPreviewW:I

    .line 60
    iput v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mPreviewH:I

    .line 61
    iput v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurrentPos:I

    .line 63
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mOperatorWallpaperTable:Ljava/util/LinkedHashMap;

    .line 64
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mContext:Landroid/content/Context;

    .line 65
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mActivity:Landroid/app/Activity;

    .line 68
    iput v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurSelectedPosition:I

    .line 69
    iput v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mDestClickItemPostion:I

    .line 51
    return-void
.end method

.method private LGWallpaperCarrierHashClear()V
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mOperatorWallpaperTable:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_5

    .line 353
    :goto_4
    return-void

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mOperatorWallpaperTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mOperatorWallpaperTable:Ljava/util/LinkedHashMap;

    goto :goto_4
.end method

.method static synthetic access$0(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mPreviewW:I

    return v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mPreviewH:I

    return v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getWallpaperPackageContext(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;I)V
    .registers 2

    .prologue
    .line 59
    iput p1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mPreviewW:I

    return-void
.end method

.method static synthetic access$5(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;I)V
    .registers 2

    .prologue
    .line 60
    iput p1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mPreviewH:I

    return-void
.end method

.method static synthetic access$6(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;I)V
    .registers 2

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    return-void
.end method

.method private findWallpapers()V
    .registers 3

    .prologue
    .line 217
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    .line 219
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_18
    if-gez v1, :cond_1b

    .line 224
    return-void

    .line 220
    :cond_1b
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    if-nez v0, :cond_38

    .line 221
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    :cond_38
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_18
.end method

.method private getWallpaperPackageContext(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;)Landroid/content/Context;
    .registers 6

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 229
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_12

    iget-object v2, p1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 231
    iget-object v2, p1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mPackageName:Ljava/lang/String;

    .line 232
    const/4 v3, 0x2

    .line 231
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    .line 237
    :cond_12
    :goto_12
    return-object v0

    .line 234
    :catch_13
    move-exception v1

    .line 235
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_12
.end method

.method public static newInstance()Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;
    .registers 2

    .prologue
    .line 72
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;-><init>()V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->setCancelable(Z)V

    .line 74
    return-object v0
.end method

.method private restoreSelection()V
    .registers 4

    .prologue
    .line 339
    iget v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurrentPos:I

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_16

    .line 340
    :cond_12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurrentPos:I

    .line 345
    :goto_15
    return-void

    .line 342
    :cond_16
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getDefaultSharedPreferences(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;

    move-result-object v0

    const-string v1, "wallpaper_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurrentPos:I

    .line 343
    const-string v0, "Launcher.WallpaperChooserDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreSelection posistion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurrentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private selectWallpaper(I)V
    .registers 5

    .prologue
    .line 147
    if-gez p1, :cond_3

    .line 172
    :goto_2
    return-void

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 151
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 152
    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getWallpaperPackageContext(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;)Landroid/content/Context;

    move-result-object v1

    .line 154
    iget-boolean v2, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->isExternalItem:Z

    if-nez v2, :cond_21

    if-nez v1, :cond_64

    .line 155
    :cond_21
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperSwitchUtil;->changeWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 160
    :goto_2a
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getDefaultSharedPreferences(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->edit()Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    move-result-object v0

    .line 161
    const-string v1, "wallpaper_index"

    invoke-virtual {v0, v1, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->putInt(Ljava/lang/String;I)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->apply()V

    .line 162
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getDefaultSharedPreferences(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->edit()Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    move-result-object v0

    .line 163
    const-string v1, "wallpaper_check_launched"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->apply()V

    .line 164
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mContext:Landroid/content/Context;

    const-string v1, "Home_WallpapaerPicker"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 166
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 157
    :cond_64
    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperSwitchUtil;->changeWallpaper(Landroid/content/Context;I)V

    goto :goto_2a

    .line 169
    :cond_6a
    const-string v0, "Launcher.WallpaperChooserDialogFragment"

    const-string v1, "Failed at selectWallpaper() : wci is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mActivity:Landroid/app/Activity;

    .line 82
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 121
    const v0, 0x7f040047

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 122
    const v0, 0x7f0e00e9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mImageView:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0e00ea

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;

    .line 126
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;->setCallbackDuringFling(Z)V

    .line 127
    invoke-virtual {v0, p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 128
    invoke-virtual {v0, p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    new-instance v1, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$ImageAdapter;-><init>(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    iget v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurrentPos:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3c

    .line 131
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->restoreSelection()V

    .line 133
    :cond_3c
    iget v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurrentPos:I

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;->setSelection(I)V

    .line 135
    const v1, 0x7f0e00eb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 136
    new-instance v3, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$1;-><init>(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-object v2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 87
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->LGWallpaperCarrierHashClear()V

    .line 89
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_1e

    .line 90
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 93
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mList:Ljava/util/List;

    .line 96
    :cond_1e
    return-void

    .line 90
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 91
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->destoryItem()V

    goto :goto_10
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 101
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_c

    .line 103
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    :cond_c
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/config/LGFeatureConfig;->isFolderPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 177
    invoke-direct {p0, p3}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    .line 191
    :goto_11
    return-void

    .line 179
    :cond_12
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurSelectedPosition:I

    .line 180
    iget v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mDestClickItemPostion:I

    if-eq v0, p3, :cond_20

    iget v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mCurSelectedPosition:I

    if-ne v0, p3, :cond_27

    .line 181
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mIsClickItem:Z

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mDestClickItemPostion:I

    goto :goto_11

    .line 184
    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mIsClickItem:Z

    .line 185
    iput p3, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mDestClickItemPostion:I

    .line 186
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;

    invoke-direct {v0, p0, p3}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;-><init>(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;I)V

    .line 188
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 196
    iget v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mDestClickItemPostion:I

    if-ne v0, v1, :cond_17

    .line 197
    iput-boolean v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mIsClickItem:Z

    .line 205
    :cond_8
    :goto_8
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mIsClickItem:Z

    if-nez v0, :cond_16

    .line 206
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;

    invoke-direct {v0, p0, p3}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$WallpaperLoadRunnable;-><init>(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;I)V

    .line 207
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    :cond_16
    return-void

    .line 199
    :cond_17
    iget v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mDestClickItemPostion:I

    if-ne v0, p3, :cond_8

    .line 200
    iput-boolean v2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mIsClickItem:Z

    .line 201
    iput v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->mDestClickItemPostion:I

    goto :goto_8
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 214
    return-void
.end method
