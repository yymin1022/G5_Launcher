.class public Lcom/lge/launcher3/folder/FolderPicker;
.super Landroid/widget/ArrayAdapter;
.source "FolderPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private colorList:[Ljava/lang/String;

.field private mColorMax:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorUtil;->getColorMax()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/folder/FolderPicker;->mColorMax:I

    .line 38
    if-eqz p1, :cond_f

    .line 39
    invoke-direct {p0, p1}, Lcom/lge/launcher3/folder/FolderPicker;->setTalkbackResString(Landroid/content/Context;)V

    .line 41
    :cond_f
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderPicker;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/folder/FolderPicker;)Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderPicker;->mListener:Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;

    return-object v0
.end method

.method private setTalkbackResString(Landroid/content/Context;)V
    .registers 9

    .prologue
    const v3, 0x7f0a0008

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 100
    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderPicker;->colorList:[Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 103
    const/4 v0, 0x0

    :goto_15
    array-length v4, v2

    if-lt v0, v4, :cond_19

    .line 111
    return-void

    .line 104
    :cond_19
    aget-object v4, v2, v0

    const-string v5, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 105
    if-lez v4, :cond_32

    .line 106
    iget-object v5, p0, Lcom/lge/launcher3/folder/FolderPicker;->colorList:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    .line 103
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 108
    :cond_32
    iget-object v4, p0, Lcom/lge/launcher3/folder/FolderPicker;->colorList:[Ljava/lang/String;

    aget-object v5, v3, v0

    aput-object v5, v4, v0

    goto :goto_2f
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/lge/launcher3/folder/FolderPicker;->mColorMax:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/folder/FolderPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 57
    if-nez p2, :cond_13

    .line 58
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderPicker;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040021

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_13
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderPicker;->colorList:[Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 61
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderPicker;->colorList:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {p2, v1}, Lcom/lge/launcher3/util/TalkBackUtils;->setTalkBack(Landroid/view/View;Ljava/lang/String;)V

    .line 63
    :cond_1e
    const v1, 0x7f0e0067

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 67
    const v0, 0x7f0e0068

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_54

    .line 70
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/lge/launcher3/folder/FolderPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderBGColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 72
    :cond_54
    new-instance v0, Lcom/lge/launcher3/folder/FolderPicker$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/folder/FolderPicker$1;-><init>(Lcom/lge/launcher3/folder/FolderPicker;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    new-instance v0, Lcom/lge/launcher3/folder/FolderPicker$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/folder/FolderPicker$2;-><init>(Lcom/lge/launcher3/folder/FolderPicker;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-object p2
.end method

.method public setPickerListener(Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderPicker;->mListener:Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;

    .line 46
    return-void
.end method
