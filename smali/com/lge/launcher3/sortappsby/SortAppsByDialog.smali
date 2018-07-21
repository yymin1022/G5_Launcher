.class public Lcom/lge/launcher3/sortappsby/SortAppsByDialog;
.super Ljava/lang/Object;
.source "SortAppsByDialog.java"


# static fields
.field private static sCheckedItem:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, -0x1

    sput v0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->sCheckedItem:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .prologue
    .line 99
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->showApplyDialog(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1(I)V
    .registers 1

    .prologue
    .line 23
    sput p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->sCheckedItem:I

    return-void
.end method

.method static synthetic access$2()I
    .registers 1

    .prologue
    .line 23
    sget v0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->sCheckedItem:I

    return v0
.end method

.method private static getArrayAdapter(Landroid/content/Context;I)Landroid/widget/ArrayAdapter;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-static {}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->values()[Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v3, :cond_16

    .line 89
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 90
    const v2, 0x1020014

    .line 89
    invoke-direct {v0, p0, p1, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 91
    return-object v0

    .line 85
    :cond_16
    aget-object v4, v2, v0

    .line 86
    invoke-virtual {v4}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->getDialogTitle()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private static showApplyDialog(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->getDialogDesc()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const v1, 0x7f0f014b

    new-instance v2, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;-><init>(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    const v1, 0x7f0f0029

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 131
    return-void
.end method

.method public static showSelectSortTypeDialog(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    const v1, 0x7f0f0144

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    sget v1, Lcom/lge/R$layout;->dialog_c_1:I

    invoke-static {p0, v1}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->getArrayAdapter(Landroid/content/Context;I)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 36
    new-instance v2, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$1;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    const v1, 0x7f0f0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 47
    return-void
.end method

.method public static showSelectSortTypeDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .prologue
    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    const v1, 0x7f0f0144

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    sget v1, Lcom/lge/R$layout;->dialog_c_6:I

    invoke-static {p0, v1}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->getArrayAdapter(Landroid/content/Context;I)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$2;

    invoke-direct {v2, p0, p2}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$2;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    const v1, 0x7f0f0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 76
    return-void
.end method
