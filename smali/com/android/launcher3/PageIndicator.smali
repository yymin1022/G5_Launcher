.class public Lcom/android/launcher3/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    }
.end annotation


# static fields
.field private static final MODULATE_ALPHA_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "PageIndicator"


# instance fields
.field protected mActiveMarkerIndex:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/PageIndicatorMarker;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxWindowSize:I

.field protected mWindowRange:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/PageIndicator;->mWindowRange:[I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 81
    sget-object v0, Lcom/lge/launcher3/R$styleable;->PageIndicator:[I

    .line 80
    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    const/16 v1, 0xf

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PageIndicator;->mMaxWindowSize:I

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->mWindowRange:[I

    aput v3, v1, v3

    .line 84
    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->mWindowRange:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 90
    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 91
    return-void
.end method

.method private disableLayoutTransitions()V
    .registers 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 103
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 104
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 107
    return-void
.end method

.method private enableLayoutTransitions()V
    .registers 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 95
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 96
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 99
    return-void
.end method


# virtual methods
.method protected addMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;Z)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040035

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    .line 186
    iget v2, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    iget v3, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/PageIndicatorMarker;->setMarkerDrawables(II)V

    .line 188
    iget-object v2, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 189
    iget v0, p0, Lcom/android/launcher3/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 190
    return-void
.end method

.method public addMarkers(Ljava/util/ArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/PageIndicator$PageMarkerResources;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_9

    .line 196
    return-void

    .line 194
    :cond_9
    const v2, 0x7fffffff

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/launcher3/PageIndicator;->addMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;Z)V

    .line 193
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public ajc$privMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_PageIndicator$updateMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;)V
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PageIndicator;->updateMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;)V

    return-void
.end method

.method dumpState(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\tmMarkers: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    .line 225
    :goto_21
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_8b

    .line 229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\twindow: ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/PageIndicator;->mWindowRange:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/PageIndicator;->mWindowRange:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\tchildren: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :goto_6e
    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getChildCount()I

    move-result v0

    if-lt v2, v0, :cond_b6

    .line 235
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tactive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    return-void

    .line 226
    :cond_8b
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    .line 227
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t\t("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_21

    .line 232
    :cond_b6
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    .line 233
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t\t("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e
.end method

.method protected offsetWindowCenterTo(IZ)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 110
    if-gez p1, :cond_c

    .line 111
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PageIndicator;->mMaxWindowSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 114
    div-int/lit8 v1, v0, 0x2

    .line 115
    int-to-float v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 116
    sub-int v1, p1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 117
    iget-object v3, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v5, p0, Lcom/android/launcher3/PageIndicator;->mMaxWindowSize:I

    add-int/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v6, v5, v0

    .line 119
    sub-int v0, v5, v6

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    .line 120
    if-nez v6, :cond_44

    .line 121
    :cond_44
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v5, v0, :cond_4c

    .line 122
    :cond_4c
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mWindowRange:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_7e

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mWindowRange:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_7e

    move v3, v2

    .line 125
    :goto_59
    if-nez p2, :cond_5e

    .line 126
    invoke-direct {p0}, Lcom/android/launcher3/PageIndicator;->disableLayoutTransitions()V

    .line 130
    :cond_5e
    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_65
    if-gez v1, :cond_80

    move v1, v2

    .line 139
    :goto_68
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_97

    .line 172
    if-nez p2, :cond_75

    .line 173
    invoke-direct {p0}, Lcom/android/launcher3/PageIndicator;->enableLayoutTransitions()V

    .line 176
    :cond_75
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mWindowRange:[I

    aput v6, v0, v2

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mWindowRange:[I

    aput v5, v0, v4

    .line 178
    return-void

    :cond_7e
    move v3, v4

    .line 122
    goto :goto_59

    .line 131
    :cond_80
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    .line 132
    iget-object v7, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 133
    if-lt v7, v6, :cond_90

    if-lt v7, v5, :cond_93

    .line 134
    :cond_90
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PageIndicator;->removeView(Landroid/view/View;)V

    .line 130
    :cond_93
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_65

    .line 140
    :cond_97
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    .line 141
    if-gt v6, v1, :cond_c1

    if-ge v1, v5, :cond_c1

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PageIndicator;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-gez v7, :cond_ae

    .line 143
    sub-int v7, v1, v6

    invoke-virtual {p0, v0, v7}, Lcom/android/launcher3/PageIndicator;->addView(Landroid/view/View;I)V

    .line 145
    :cond_ae
    if-ne v1, p1, :cond_b7

    .line 146
    invoke-virtual {v0, v3}, Lcom/android/launcher3/PageIndicatorMarker;->activate(Z)V

    .line 139
    :cond_b3
    :goto_b3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_68

    .line 148
    :cond_b7
    invoke-virtual {v0}, Lcom/android/launcher3/PageIndicatorMarker;->isActive()Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 149
    invoke-virtual {v0, v3}, Lcom/android/launcher3/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_b3

    .line 153
    :cond_c1
    invoke-virtual {v0}, Lcom/android/launcher3/PageIndicatorMarker;->isActive()Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 154
    invoke-virtual {v0, v4}, Lcom/android/launcher3/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_b3
.end method

.method public removeAllMarkers(Z)V
    .registers 3

    .prologue
    .line 211
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 214
    return-void

    .line 212
    :cond_9
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/PageIndicator;->removeMarker(IZ)V

    goto :goto_0
.end method

.method protected removeMarker(IZ)V
    .registers 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 205
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 207
    iget v0, p0, Lcom/android/launcher3/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 209
    :cond_23
    return-void
.end method

.method public setActiveMarker(I)V
    .registers 3

    .prologue
    .line 218
    iput p1, p0, Lcom/android/launcher3/PageIndicator;->mActiveMarkerIndex:I

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 220
    return-void
.end method

.method protected updateMarker(ILcom/android/launcher3/PageIndicator$PageMarkerResources;)V
    .registers 6

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    .line 200
    iget v1, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    iget v2, p2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/PageIndicatorMarker;->setMarkerDrawables(II)V

    .line 201
    return-void
.end method
