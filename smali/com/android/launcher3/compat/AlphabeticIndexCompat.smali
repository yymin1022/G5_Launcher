.class public Lcom/android/launcher3/compat/AlphabeticIndexCompat;
.super Lcom/android/launcher3/compat/BaseAlphabeticIndex;
.source "AlphabeticIndexCompat.java"


# static fields
.field private static final MID_DOT:Ljava/lang/String; = "\u2219"


# instance fields
.field private mAddLabelsMethod:Ljava/lang/reflect/Method;

.field private mAlphabeticIndex:Ljava/lang/Object;

.field private mDefaultMiscLabel:Ljava/lang/String;

.field private mGetBucketIndexMethod:Ljava/lang/reflect/Method;

.field private mGetBucketLabelMethod:Ljava/lang/reflect/Method;

.field private mHasValidAlphabeticIndex:Z

.field private mSetMaxLabelCountMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/launcher3/compat/BaseAlphabeticIndex;-><init>()V

    .line 68
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 69
    const-string v0, "libcore.icu.AlphabeticIndex"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 71
    const-string v3, "addLabels"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Locale;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mAddLabelsMethod:Ljava/lang/reflect/Method;

    .line 72
    const-string v3, "setMaxLabelCount"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mSetMaxLabelCountMethod:Ljava/lang/reflect/Method;

    .line 73
    const-string v3, "getBucketIndex"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    .line 74
    const-string v3, "getBucketLabel"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mGetBucketLabelMethod:Ljava/lang/reflect/Method;

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_a8

    .line 78
    :try_start_6c
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mAddLabelsMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_8b} :catch_a3

    .line 84
    :cond_8b
    :goto_8b
    :try_start_8b
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 86
    const-string v0, "\u4ed6"

    iput-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    .line 92
    :goto_9f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    .line 96
    :goto_a2
    return-void

    .line 81
    :catch_a3
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_a7} :catch_a8

    goto :goto_8b

    .line 94
    :catch_a8
    move-exception v0

    iput-boolean v7, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    goto :goto_a2

    .line 90
    :cond_ac
    :try_start_ac
    const-string v0, "\u2219"

    iput-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b0} :catch_a8

    goto :goto_9f
.end method


# virtual methods
.method public computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 118
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 121
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 122
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    .line 123
    if-eqz v1, :cond_2a

    .line 125
    const-string v0, "#"

    .line 138
    :cond_29
    :goto_29
    return-object v0

    .line 127
    :cond_2a
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    .line 128
    if-eqz v0, :cond_33

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    goto :goto_29

    .line 134
    :cond_33
    const-string v0, "\u2219"

    goto :goto_29
.end method

.method protected getBucketIndex(Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    if-eqz v0, :cond_1d

    .line 149
    :try_start_4
    iget-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_19

    move-result v0

    .line 154
    :goto_18
    return v0

    .line 150
    :catch_19
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/launcher3/compat/BaseAlphabeticIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_18
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    if-eqz v0, :cond_1d

    .line 163
    :try_start_4
    iget-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mGetBucketLabelMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    .line 168
    :goto_18
    return-object v0

    .line 164
    :catch_19
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/launcher3/compat/BaseAlphabeticIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public setMaxLabelCount(I)V
    .registers 7

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    if-eqz v0, :cond_1b

    .line 105
    :try_start_4
    iget-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mSetMaxLabelCountMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 112
    :goto_15
    return-void

    .line 106
    :catch_16
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 110
    :cond_1b
    invoke-super {p0, p1}, Lcom/android/launcher3/compat/BaseAlphabeticIndex;->setMaxLabelCount(I)V

    goto :goto_15
.end method
