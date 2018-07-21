.class public Lcom/lge/launcher3/folder/FolderRenameDialog;
.super Landroid/app/DialogFragment;
.source "FolderRenameDialog.java"

# interfaces
.implements Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;,
        Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;,
        Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;
    }
.end annotation


# static fields
.field private static final MAX_INPUT_TEXT_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "LGRenameFolder"

.field private static final UNKNOWN_COLOR:I = -0x1

.field private static sFolderRename:Lcom/lge/launcher3/folder/FolderRenameDialog;


# instance fields
.field private curSelectedColor:I

.field private mColorPallette:Landroid/widget/GridView;

.field private mFolderInfo:Lcom/android/launcher3/FolderInfo;

.field private mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOriginalColor:I

.field private mPickerAdapter:Lcom/lge/launcher3/folder/FolderPicker;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 59
    iput v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->curSelectedColor:I

    .line 60
    iput v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/folder/FolderRenameDialog;)Lcom/android/launcher3/FolderInfo;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/folder/FolderRenameDialog;)I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    return v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/folder/FolderRenameDialog;I)V
    .registers 2

    .prologue
    .line 60
    iput p1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/folder/FolderRenameDialog;)V
    .registers 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->changeFolderName()V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/launcher3/folder/FolderRenameDialog;)I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->curSelectedColor:I

    return v0
.end method

.method static synthetic access$5(Lcom/lge/launcher3/folder/FolderRenameDialog;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/launcher3/folder/FolderRenameDialog;)V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->updateCurrentFolderColor()V

    return-void
.end method

.method private changeFolderName()V
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    if-nez v0, :cond_9

    .line 197
    :cond_8
    :goto_8
    return-void

    .line 193
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-virtual {v0}, Lcom/lge/launcher3/folder/FolderColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 195
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public static getInstance(Lcom/android/launcher3/Launcher;)Lcom/lge/launcher3/folder/FolderRenameDialog;
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lcom/lge/launcher3/folder/FolderRenameDialog;->sFolderRename:Lcom/lge/launcher3/folder/FolderRenameDialog;

    if-nez v0, :cond_10

    .line 69
    new-instance v0, Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-direct {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;-><init>()V

    sput-object v0, Lcom/lge/launcher3/folder/FolderRenameDialog;->sFolderRename:Lcom/lge/launcher3/folder/FolderRenameDialog;

    .line 70
    sget-object v0, Lcom/lge/launcher3/folder/FolderRenameDialog;->sFolderRename:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 73
    :cond_10
    sget-object v0, Lcom/lge/launcher3/folder/FolderRenameDialog;->sFolderRename:Lcom/lge/launcher3/folder/FolderRenameDialog;

    return-object v0
.end method

.method private requestHideInputMethod()V
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    if-eqz v0, :cond_1a

    .line 255
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 256
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 258
    if-eqz v0, :cond_1a

    .line 259
    :try_start_10
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-virtual {v1}, Lcom/lge/launcher3/folder/FolderColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 265
    :cond_1a
    :goto_1a
    return-void

    .line 261
    :catch_1b
    move-exception v0

    .line 262
    const-string v1, "LGRenameFolder"

    const-string v2, "hideSoftInputFromWindow failed"

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1a
.end method

.method private setupView()Landroid/view/View;
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 93
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v3, Lcom/lge/R$style;->Theme_LGE_White:I

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 94
    const v2, 0x7f04002a

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 96
    const v0, 0x7f0e0093

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/folder/FolderColorEditText;

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    .line 97
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-virtual {v0, v6}, Lcom/lge/launcher3/folder/FolderColorEditText;->setSelectAllOnFocus(Z)V

    .line 99
    new-array v0, v8, [Landroid/text/InputFilter;

    new-instance v3, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;

    iget-object v4, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-direct {v3, p0, v4, v5, v7}, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;-><init>(Lcom/lge/launcher3/folder/FolderRenameDialog;Landroid/content/Context;Landroid/widget/EditText;I)V

    aput-object v3, v0, v1

    .line 100
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    .line 101
    iget-object v3, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-virtual {v3, v0}, Lcom/lge/launcher3/folder/FolderColorEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 102
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    iget-object v3, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/folder/FolderColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "type_d03_sp"

    invoke-static {v3, v4}, Lcom/lge/launcher3/util/DDTUtils;->getLGEDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/lge/launcher3/folder/FolderColorEditText;->setTextSize(IF)V

    .line 105
    const v0, 0x7f0e0095

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    .line 106
    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/DDTUtils;->isAdditionalThemeApplied(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 107
    const v0, 0x7f0e0094

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setVisibility(I)V

    .line 110
    :cond_7e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 111
    :goto_84
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorUtil;->getColorMax()I

    move-result v4

    if-lt v0, v4, :cond_e0

    .line 115
    new-instance v0, Lcom/lge/launcher3/folder/FolderPicker;

    iget-object v4, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v4, v3}, Lcom/lge/launcher3/folder/FolderPicker;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mPickerAdapter:Lcom/lge/launcher3/folder/FolderPicker;

    .line 116
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mPickerAdapter:Lcom/lge/launcher3/folder/FolderPicker;

    if-eqz v0, :cond_9c

    .line 117
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mPickerAdapter:Lcom/lge/launcher3/folder/FolderPicker;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/folder/FolderPicker;->setPickerListener(Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;)V

    .line 120
    :cond_9c
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    if-eqz v0, :cond_d5

    .line 121
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 122
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mPickerAdapter:Lcom/lge/launcher3/folder/FolderPicker;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/lge/launcher3/util/TextUtils;->isRToLLanguage()Z

    move-result v3

    if-eqz v3, :cond_d5

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v8, :cond_d5

    .line 126
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const/16 v3, 0x3c

    invoke-virtual {v0, v3, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :cond_d5
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-virtual {v0}, Lcom/lge/launcher3/folder/FolderColorEditText;->requestFocus()Z

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-static {v0, v7}, Lcom/lge/launcher3/util/IMEUtils;->showInputMethodDelayed(Landroid/view/View;I)V

    .line 133
    return-object v2

    .line 112
    :cond_e0
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderColorDrawble(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_84
.end method

.method private updateCurrentFolderColor()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_f

    .line 82
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    iput v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->curSelectedColor:I

    .line 83
    iget v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->curSelectedColor:I

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->setSelectedColorView(I)V

    .line 85
    :cond_f
    return-void
.end method


# virtual methods
.method isDictionaryCalled()Z
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    if-eqz v0, :cond_b

    .line 307
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-virtual {v0}, Lcom/lge/launcher3/folder/FolderColorEditText;->isDictionaryCalled()Z

    move-result v0

    .line 309
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 201
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 202
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 203
    iget v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    if-eq v0, v2, :cond_1f

    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    iget v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    if-eq v0, v1, :cond_1f

    .line 204
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    iget v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    invoke-static {v0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$changeFolderColor(Lcom/android/launcher3/FolderInfo;I)V

    .line 205
    iput v2, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    .line 207
    :cond_1f
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/folder/FolderRenameDialog;->sFolderRename:Lcom/lge/launcher3/folder/FolderRenameDialog;

    .line 208
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    .line 156
    :goto_5
    return-object v0

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    .line 142
    invoke-direct {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->setupView()Landroid/view/View;

    move-result-object v0

    .line 143
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0f00de

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;-><init>(Lcom/lge/launcher3/folder/FolderRenameDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0029

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;

    invoke-direct {v3, p0}, Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;-><init>(Lcom/lge/launcher3/folder/FolderRenameDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/lge/launcher3/folder/FolderRenameDialog$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/folder/FolderRenameDialog$1;-><init>(Lcom/lge/launcher3/folder/FolderRenameDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_5
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 212
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 213
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 214
    iget v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    if-eq v0, v2, :cond_17

    .line 215
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    iget v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    invoke-static {v0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$changeFolderColor(Lcom/android/launcher3/FolderInfo;I)V

    .line 216
    iput v2, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    .line 218
    :cond_17
    iput v2, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->curSelectedColor:I

    .line 219
    invoke-direct {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->requestHideInputMethod()V

    .line 220
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    if-eqz v0, :cond_26

    .line 221
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderColorEditText;->setIsDictionaryCalled(Z)V

    .line 223
    :cond_26
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/folder/FolderRenameDialog;->sFolderRename:Lcom/lge/launcher3/folder/FolderRenameDialog;

    .line 224
    return-void
.end method

.method public requestFocusOnPalette()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    move v1, v2

    .line 271
    :goto_8
    if-lt v1, v3, :cond_b

    .line 281
    return-void

    .line 272
    :cond_b
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mColorPallette:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 273
    const v4, 0x7f0e0068

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 274
    iget v4, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->curSelectedColor:I

    if-eq v1, v4, :cond_28

    .line 275
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    :goto_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 277
    :cond_28
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24
.end method

.method public resetFocusedColorView()V
    .registers 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->requestFocusOnPalette()V

    .line 303
    return-void
.end method

.method public setFocusedColorView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 288
    if-eqz v0, :cond_c

    if-nez v1, :cond_16

    .line 291
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    if-eqz v0, :cond_15

    .line 292
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-virtual {v0}, Lcom/lge/launcher3/folder/FolderColorEditText;->requestFocus()Z

    .line 298
    :cond_15
    :goto_15
    return-void

    .line 295
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->curSelectedColor:I

    .line 296
    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->requestFocusOnPalette()V

    goto :goto_15
.end method

.method public setFocusededColorView(I)V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_8

    .line 247
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    iput p1, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    .line 250
    :cond_8
    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->requestFocusOnPalette()V

    .line 251
    return-void
.end method

.method public setFolderInfo(Lcom/android/launcher3/FolderInfo;)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    .line 89
    iget v0, p1, Lcom/android/launcher3/FolderInfo;->folderColor:I

    iput v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mOriginalColor:I

    .line 90
    return-void
.end method

.method setIsDictionaryCalled(Z)V
    .registers 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 314
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    if-eqz v0, :cond_f

    .line 315
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mInput:Lcom/lge/launcher3/folder/FolderColorEditText;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/folder/FolderColorEditText;->setIsDictionaryCalled(Z)V

    .line 318
    :cond_f
    return-void
.end method

.method public setLauncher(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 78
    return-void
.end method

.method public setSelectedColorView(I)V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    iput p1, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    .line 241
    :cond_8
    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->requestFocusOnPalette()V

    .line 242
    return-void
.end method

.method public setSelectedColorView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 228
    if-eqz p1, :cond_18

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->curSelectedColor:I

    .line 230
    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->requestFocusOnPalette()V

    .line 231
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    iget v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog;->curSelectedColor:I

    invoke-static {v0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$changeFolderColor(Lcom/android/launcher3/FolderInfo;I)V

    .line 233
    :cond_18
    return-void
.end method
