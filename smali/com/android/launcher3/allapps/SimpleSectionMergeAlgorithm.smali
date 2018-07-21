.class final Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;
.super Ljava/lang/Object;
.source "AllAppsContainerView.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;


# instance fields
.field private mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

.field private mMaxAllowableMerges:I

.field private mMinAppsPerRow:I

.field private mMinRowsInMergedSection:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;->mMinAppsPerRow:I

    .line 101
    iput p2, p0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;->mMinRowsInMergedSection:I

    .line 102
    iput p3, p0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;->mMaxAllowableMerges:I

    .line 103
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;->mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 104
    return-void
.end method


# virtual methods
.method public continueMerging(Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;III)Z
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    iget-object v2, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v2, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v2, v1, :cond_9

    .line 128
    :cond_8
    :goto_8
    return v0

    .line 118
    :cond_9
    div-int v3, p3, p4

    .line 119
    rem-int v4, p3, p4

    .line 124
    iget-object v2, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v2, :cond_3c

    iget-object v2, p2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v2, :cond_3c

    .line 125
    iget-object v2, p0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;->mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v5, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 126
    iget-object v5, p0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;->mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 125
    xor-int/2addr v2, v5

    .line 128
    :goto_2a
    if-lez v4, :cond_8

    iget v5, p0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;->mMinAppsPerRow:I

    if-ge v4, v5, :cond_8

    .line 129
    iget v4, p0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;->mMinRowsInMergedSection:I

    if-ge v3, v4, :cond_8

    .line 130
    iget v3, p0, Lcom/android/launcher3/allapps/SimpleSectionMergeAlgorithm;->mMaxAllowableMerges:I

    if-ge p5, v3, :cond_8

    .line 131
    if-nez v2, :cond_8

    move v0, v1

    .line 128
    goto :goto_8

    :cond_3c
    move v2, v0

    goto :goto_2a
.end method
