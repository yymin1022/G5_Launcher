.class public final enum Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;
.super Ljava/lang/Enum;
.source "SortAppsByConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/sortappsby/SortAppsByConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNLOAD_DATE:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

.field public static final enum NAME:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;


# instance fields
.field private mDialogDescResId:I

.field private mDialogTitleResId:I

.field private mToastDescResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    const-string v1, "NAME"

    const v3, 0x7f0f0145

    .line 22
    const v4, 0x7f0f0146

    .line 23
    const v5, 0x7f0f0147

    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;-><init>(Ljava/lang/String;IIII)V

    .line 21
    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->NAME:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    .line 25
    new-instance v3, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    const-string v4, "DOWNLOAD_DATE"

    const v6, 0x7f0f0148

    .line 26
    const v7, 0x7f0f0149

    .line 27
    const v8, 0x7f0f014a

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;-><init>(Ljava/lang/String;IIII)V

    .line 25
    sput-object v3, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->DOWNLOAD_DATE:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    sget-object v1, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->NAME:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->DOWNLOAD_DATE:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->ENUM$VALUES:[Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->mDialogTitleResId:I

    .line 31
    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->mDialogDescResId:I

    .line 32
    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->mToastDescResId:I

    .line 35
    iput p3, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->mDialogTitleResId:I

    .line 36
    iput p4, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->mDialogDescResId:I

    .line 37
    iput p5, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->mToastDescResId:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->ENUM$VALUES:[Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDialogDesc()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->mDialogDescResId:I

    return v0
.end method

.method public getDialogTitle()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->mDialogTitleResId:I

    return v0
.end method

.method public getToastDesc()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->mToastDescResId:I

    return v0
.end method
