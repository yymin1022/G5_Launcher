.class final Lcom/android/launcher3/allapps/FullMergeAlgorithm;
.super Ljava/lang/Object;
.source "AllAppsContainerView.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public continueMerging(Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;III)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 79
    iget-object v1, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v1, v0, :cond_8

    .line 80
    const/4 v0, 0x0

    .line 83
    :cond_8
    return v0
.end method
