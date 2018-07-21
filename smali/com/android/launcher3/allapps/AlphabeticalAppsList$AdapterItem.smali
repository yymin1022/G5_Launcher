.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterItem"
.end annotation


# instance fields
.field public appIndex:I

.field public appInfo:Lcom/android/launcher3/AppInfo;

.field public position:I

.field public rowAppIndex:I

.field public rowIndex:I

.field public sectionAppIndex:I

.field public sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

.field public sectionName:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 96
    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 100
    iput-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 102
    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 78
    return-void
.end method

.method public static asApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .registers 8

    .prologue
    .line 122
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 123
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 124
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 125
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 126
    iput-object p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 127
    iput p3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 128
    iput-object p4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 129
    iput p5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 130
    return-object v0
.end method

.method public static asPredictedApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .registers 8

    .prologue
    .line 115
    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 116
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 117
    return-object v0
.end method

.method public static asSectionBreak(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .registers 4

    .prologue
    .line 105
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 106
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 107
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 108
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 109
    iput-object v0, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 110
    return-object v0
.end method
