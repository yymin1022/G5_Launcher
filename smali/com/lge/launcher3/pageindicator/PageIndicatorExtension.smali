.class public Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;
.super Lcom/android/launcher3/PageIndicator;
.source "PageIndicatorExtension.java"


# static fields
.field private static final GOOGLE_NOW_MARKER:Lcom/android/launcher3/PageIndicator$PageMarkerResources;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsGoogleNowEnabled:I

.field public mListener:Lcom/lge/launcher3/pageindicator/PageIndicatorListener;

.field public mMakerPadding:I

.field public mMarkerClickIndexArray:[I

.field public mParentType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const-class v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    .line 18
    const v1, 0x7f02006b

    const v2, 0x7f02006d

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/PageIndicator$PageMarkerResources;-><init>(II)V

    sput-object v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->GOOGLE_NOW_MARKER:Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mIsGoogleNowEnabled:I

    .line 30
    iget v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMaxWindowSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkerClickIndexArray:[I

    .line 31
    return-void
.end method

.method private addGoogleNowMarker()V
    .registers 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->isGoogleNowEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 179
    :cond_e
    :goto_e
    return-void

    .line 175
    :cond_f
    invoke-direct {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->existGoogleNowMarker()Z

    move-result v0

    if-nez v0, :cond_e

    .line 178
    const/4 v0, 0x0

    sget-object v1, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->GOOGLE_NOW_MARKER:Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->addMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;Z)V

    goto :goto_e
.end method

.method private convertIndexWithGoogleNow(I)I
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer;

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->isGoogleNowEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    add-int/lit8 p1, p1, 0x1

    :cond_10
    return p1
.end method

.method private existGoogleNowMarker()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;

    .line 183
    invoke-virtual {v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->getMarkerResource()Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v0

    sget-object v2, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->GOOGLE_NOW_MARKER:Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    if-ne v0, v2, :cond_1f

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e
.end method

.method private isGoogleNowEnabled()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 155
    iget v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mIsGoogleNowEnabled:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_14

    .line 156
    invoke-virtual {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getGoogleNowEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_12
    iput v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mIsGoogleNowEnabled:I

    .line 159
    :cond_14
    iget v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mIsGoogleNowEnabled:I

    if-ne v0, v1, :cond_1b

    :goto_18
    return v1

    :cond_19
    move v0, v2

    .line 157
    goto :goto_12

    :cond_1b
    move v1, v2

    .line 159
    goto :goto_18
.end method

.method private revertIndexWithGoogleNow(I)I
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer;

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->isGoogleNowEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    add-int/lit8 p1, p1, -0x1

    :cond_10
    return p1
.end method


# virtual methods
.method protected addMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;Z)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 120
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_e

    sget-object v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->GOOGLE_NOW_MARKER:Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    if-eq p2, v0, :cond_e

    .line 121
    invoke-direct {p0, p1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->convertIndexWithGoogleNow(I)I

    move-result p1

    .line 123
    :cond_e
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 125
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 126
    const v2, 0x7f040035

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 125
    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;

    .line 127
    iget v2, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    iget v3, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    invoke-virtual {v0, v2, v3}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->setMarkerDrawables(II)V

    .line 128
    iget-object v2, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    iget v1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mActiveMarkerIndex:I

    invoke-virtual {p0, v1, p3}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->offsetWindowCenterTo(IZ)V

    .line 131
    invoke-virtual {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 132
    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 133
    iget v2, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMakerPadding:I

    iget v3, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMakerPadding:I

    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->setPadding(IIII)V

    .line 134
    iget v1, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mActiveColor:I

    iget v2, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mInactiveColor:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->setColor(II)V

    .line 135
    invoke-virtual {v0, p2}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->setMarkerResource(Lcom/android/launcher3/PageIndicator$PageMarkerResources;)V

    .line 137
    invoke-direct {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->addGoogleNowMarker()V

    .line 138
    return-void
.end method

.method protected offsetWindowCenterTo(IZ)V
    .registers 4

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->convertIndexWithGoogleNow(I)I

    move-result v0

    .line 114
    invoke-super {p0, v0, p2}, Lcom/android/launcher3/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 115
    invoke-virtual {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->preUpdateMarkerClickListner()V

    .line 116
    return-void
.end method

.method public preUpdateMarkerClickListner()V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mWindowRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mWindowRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->updateMarkerClickListner(II)V

    .line 44
    return-void
.end method

.method protected removeMarker(IZ)V
    .registers 4

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->convertIndexWithGoogleNow(I)I

    move-result v0

    .line 108
    invoke-super {p0, v0, p2}, Lcom/android/launcher3/PageIndicator;->removeMarker(IZ)V

    .line 109
    return-void
.end method

.method public setListener(Lcom/lge/launcher3/pageindicator/PageIndicatorListener;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mListener:Lcom/lge/launcher3/pageindicator/PageIndicatorListener;

    .line 40
    return-void
.end method

.method public setMarkerClickIndex()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 76
    iget v2, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMaxWindowSize:I

    if-le v1, v2, :cond_39

    .line 77
    iget v2, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMaxWindowSize:I

    div-int/lit8 v3, v2, 0x2

    .line 78
    :goto_f
    if-lt v0, v3, :cond_1f

    .line 81
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkerClickIndexArray:[I

    aput v3, v0, v3

    .line 82
    iget v4, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMaxWindowSize:I

    .line 83
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 84
    :goto_1a
    sub-int v5, v1, v3

    if-gt v0, v5, :cond_26

    .line 93
    :goto_1e
    return-void

    .line 79
    :cond_1f
    iget-object v2, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkerClickIndexArray:[I

    aput v0, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 85
    :cond_26
    iget-object v5, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkerClickIndexArray:[I

    sub-int v6, v4, v2

    sub-int v7, v1, v2

    aput v7, v5, v6

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 84
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 90
    :cond_33
    iget-object v2, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkerClickIndexArray:[I

    aput v0, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    :cond_39
    if-lt v0, v1, :cond_33

    goto :goto_1e
.end method

.method public setMarkerLongClicklistenr(Landroid/view/View$OnLongClickListener;)V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 103
    return-void

    .line 100
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/launcher3/PageIndicatorMarker;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_6
.end method

.method public setTypePadding(I)V
    .registers 2

    .prologue
    .line 96
    iput p1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMakerPadding:I

    .line 97
    return-void
.end method

.method protected updateMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;)V
    .registers 7

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->convertIndexWithGoogleNow(I)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3c

    .line 144
    sget-object v1, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The index is an exceed value. index :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Markers size :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 148
    :cond_3c
    invoke-super {p0, v0, p2}, Lcom/android/launcher3/PageIndicator;->updateMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;)V

    .line 149
    iget-object v1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;

    .line 150
    iget v1, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mActiveColor:I

    iget v2, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mInactiveColor:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->setColor(II)V

    .line 151
    return-void
.end method

.method public updateMarkerClickListner(II)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 48
    invoke-virtual {p0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setMarkerClickIndex()V

    .line 49
    iget v1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMaxWindowSize:I

    if-le v2, v1, :cond_36

    move v1, v0

    .line 51
    :goto_f
    if-lt p1, p2, :cond_12

    .line 72
    :cond_11
    return-void

    .line 52
    :cond_12
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;

    .line 53
    new-instance v2, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;

    .line 54
    invoke-direct {p0, v1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->revertIndexWithGoogleNow(I)I

    move-result v3

    iget-object v4, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mListener:Lcom/lge/launcher3/pageindicator/PageIndicatorListener;

    .line 55
    iget-object v5, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkerClickIndexArray:[I

    .line 53
    invoke-direct {v2, v3, v4, v5}, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;-><init>(ILcom/lge/launcher3/pageindicator/PageIndicatorListener;[I)V

    .line 56
    invoke-virtual {v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->getIsAddIconMaker()Z

    move-result v3

    if-nez v3, :cond_30

    .line 57
    invoke-virtual {v0, v2}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_30
    add-int/lit8 v0, v1, 0x1

    .line 51
    add-int/lit8 p1, p1, 0x1

    move v1, v0

    goto :goto_f

    :cond_36
    move v1, v0

    .line 62
    :goto_37
    if-ge v1, v2, :cond_11

    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;

    .line 64
    new-instance v3, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;

    .line 65
    invoke-direct {p0, v1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->revertIndexWithGoogleNow(I)I

    move-result v4

    iget-object v5, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mListener:Lcom/lge/launcher3/pageindicator/PageIndicatorListener;

    .line 66
    iget-object v6, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->mMarkerClickIndexArray:[I

    .line 64
    invoke-direct {v3, v4, v5, v6}, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;-><init>(ILcom/lge/launcher3/pageindicator/PageIndicatorListener;[I)V

    .line 67
    invoke-virtual {v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->getIsAddIconMaker()Z

    move-result v4

    if-nez v4, :cond_57

    .line 68
    invoke-virtual {v0, v3}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37
.end method
