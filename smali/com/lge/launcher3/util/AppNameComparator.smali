.class public Lcom/lge/launcher3/util/AppNameComparator;
.super Ljava/lang/Object;
.source "AppNameComparator.java"


# static fields
.field private static final CHAR_TYPE_ENGLISH:I = 0x96

.field private static final CHAR_TYPE_JAPANESE_HANJA_CJK:I = 0x8c

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_A:I = 0x28

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_HA:I = 0x5a

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_KA:I = 0x32

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_MA:I = 0x64

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_NA:I = 0x50

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_RA:I = 0x78

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_SA:I = 0x3c

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_TA:I = 0x46

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_WA_WO_N:I = 0x82

.field private static final CHAR_TYPE_JAPANESE_HIRAGANA_YA:I = 0x6e

.field private static final CHAR_TYPE_KOREAN:I = 0x1e

.field private static final CHAR_TYPE_NUMBER:I = 0x14

.field private static final CHAR_TYPE_OTHER:I = 0xa0

.field private static final CHAR_TYPE_SYMBOL:I = 0xa

.field private static sCollator:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/util/AppNameComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .prologue
    const/16 v2, 0xa0

    const/16 v6, 0x8c

    const/16 v5, 0x28

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 28
    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 29
    invoke-static {p0}, Lcom/lge/launcher3/util/AppNameComparator;->getCharType(Ljava/lang/String;)I

    move-result v4

    .line 30
    invoke-static {p1}, Lcom/lge/launcher3/util/AppNameComparator;->getCharType(Ljava/lang/String;)I

    move-result v3

    .line 32
    if-gt v5, v4, :cond_21

    .line 33
    if-gt v4, v6, :cond_21

    move v4, v2

    .line 37
    :cond_21
    if-gt v5, v3, :cond_55

    .line 38
    if-gt v3, v6, :cond_55

    .line 42
    :goto_25
    if-ge v4, v2, :cond_28

    .line 64
    :cond_27
    :goto_27
    return v0

    .line 45
    :cond_28
    if-le v4, v2, :cond_4e

    move v0, v1

    .line 46
    goto :goto_27

    .line 49
    :cond_2c
    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 50
    invoke-static {p0}, Lcom/lge/launcher3/util/AppNameComparator;->getCharType(Ljava/lang/String;)I

    move-result v2

    .line 51
    invoke-static {p1}, Lcom/lge/launcher3/util/AppNameComparator;->getCharType(Ljava/lang/String;)I

    move-result v3

    .line 53
    invoke-static {v2}, Lcom/lge/launcher3/util/AppNameComparator;->setCustomType(I)I

    move-result v2

    .line 54
    invoke-static {v3}, Lcom/lge/launcher3/util/AppNameComparator;->setCustomType(I)I

    move-result v3

    .line 56
    if-lt v2, v3, :cond_27

    .line 59
    if-le v2, v3, :cond_4e

    move v0, v1

    .line 60
    goto :goto_27

    .line 64
    :cond_4e
    sget-object v0, Lcom/lge/launcher3/util/AppNameComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_27

    :cond_55
    move v2, v3

    goto :goto_25
.end method

.method private static final getCharType(Ljava/lang/String;)I
    .registers 8

    .prologue
    const/16 v6, 0x306a

    const/16 v5, 0x305f

    const/16 v4, 0x3055

    const/16 v3, 0x304b

    const/16 v0, 0x5a

    .line 68
    if-eqz p0, :cond_1aa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1aa

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 71
    const/16 v2, 0x30

    if-lt v1, v2, :cond_22

    const/16 v2, 0x39

    if-gt v1, v2, :cond_22

    .line 72
    const/16 v0, 0x14

    .line 131
    :cond_21
    :goto_21
    return v0

    .line 74
    :cond_22
    const/16 v2, 0x41

    if-lt v1, v2, :cond_28

    if-le v1, v0, :cond_30

    :cond_28
    const/16 v2, 0x61

    if-lt v1, v2, :cond_33

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_33

    .line 75
    :cond_30
    const/16 v0, 0x96

    goto :goto_21

    .line 77
    :cond_33
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_3a

    .line 78
    const/16 v0, 0xa

    goto :goto_21

    .line 80
    :cond_3a
    const v2, 0xac00

    if-lt v1, v2, :cond_44

    const v2, 0xd7a3

    if-le v1, v2, :cond_4c

    :cond_44
    const/16 v2, 0x3131

    if-lt v1, v2, :cond_4f

    const/16 v2, 0x318e

    if-gt v1, v2, :cond_4f

    .line 81
    :cond_4c
    const/16 v0, 0x1e

    goto :goto_21

    .line 83
    :cond_4f
    const/16 v2, 0x3041

    if-lt v1, v2, :cond_55

    if-lt v1, v3, :cond_75

    :cond_55
    const/16 v2, 0xc16

    if-eq v1, v2, :cond_75

    .line 84
    const/16 v2, 0x30a1

    if-lt v1, v2, :cond_61

    const/16 v2, 0x30ab

    if-lt v1, v2, :cond_75

    :cond_61
    const v2, 0xff71

    if-lt v1, v2, :cond_6b

    const v2, 0xff76

    if-lt v1, v2, :cond_75

    .line 85
    :cond_6b
    const v2, 0xff67

    if-lt v1, v2, :cond_78

    const v2, 0xff6c

    if-ge v1, v2, :cond_78

    .line 86
    :cond_75
    const/16 v0, 0x28

    goto :goto_21

    .line 88
    :cond_78
    if-lt v1, v3, :cond_7c

    if-lt v1, v4, :cond_9e

    :cond_7c
    const/16 v2, 0x3095

    if-eq v1, v2, :cond_9e

    const/16 v2, 0x3096

    if-eq v1, v2, :cond_9e

    .line 89
    const/16 v2, 0x30ab

    if-lt v1, v2, :cond_8c

    const/16 v2, 0x30b5

    if-lt v1, v2, :cond_9e

    :cond_8c
    const/16 v2, 0x30f5

    if-eq v1, v2, :cond_9e

    const/16 v2, 0x30f6

    if-eq v1, v2, :cond_9e

    .line 90
    const v2, 0xff76

    if-lt v1, v2, :cond_a1

    const v2, 0xff7b

    if-ge v1, v2, :cond_a1

    .line 91
    :cond_9e
    const/16 v0, 0x32

    goto :goto_21

    .line 93
    :cond_a1
    if-lt v1, v4, :cond_a5

    if-lt v1, v5, :cond_b7

    :cond_a5
    const/16 v2, 0x30b5

    if-lt v1, v2, :cond_ad

    const/16 v2, 0x30bf

    if-lt v1, v2, :cond_b7

    .line 94
    :cond_ad
    const v2, 0xff7b

    if-lt v1, v2, :cond_bb

    const v2, 0xff80

    if-ge v1, v2, :cond_bb

    .line 95
    :cond_b7
    const/16 v0, 0x3c

    goto/16 :goto_21

    .line 97
    :cond_bb
    if-lt v1, v5, :cond_bf

    if-lt v1, v6, :cond_d6

    :cond_bf
    const/16 v2, 0x30bf

    if-lt v1, v2, :cond_c7

    const/16 v2, 0x30ca

    if-lt v1, v2, :cond_d6

    .line 98
    :cond_c7
    const v2, 0xff80

    if-lt v1, v2, :cond_d1

    const v2, 0xff85

    if-lt v1, v2, :cond_d6

    :cond_d1
    const v2, 0xff6f

    if-ne v1, v2, :cond_da

    .line 99
    :cond_d6
    const/16 v0, 0x46

    goto/16 :goto_21

    .line 101
    :cond_da
    if-lt v1, v6, :cond_e0

    const/16 v2, 0x306f

    if-lt v1, v2, :cond_f2

    :cond_e0
    const/16 v2, 0x30ca

    if-lt v1, v2, :cond_e8

    const/16 v2, 0x30cf

    if-lt v1, v2, :cond_f2

    .line 102
    :cond_e8
    const v2, 0xff85

    if-lt v1, v2, :cond_f6

    const v2, 0xff8a

    if-ge v1, v2, :cond_f6

    .line 103
    :cond_f2
    const/16 v0, 0x50

    goto/16 :goto_21

    .line 105
    :cond_f6
    const/16 v2, 0x306f

    if-lt v1, v2, :cond_fe

    const/16 v2, 0x307e

    if-lt v1, v2, :cond_21

    :cond_fe
    const/16 v2, 0x30cf

    if-lt v1, v2, :cond_106

    const/16 v2, 0x30de

    if-lt v1, v2, :cond_21

    .line 106
    :cond_106
    const v2, 0xff8a

    if-lt v1, v2, :cond_110

    const v2, 0xff8f

    if-lt v1, v2, :cond_21

    .line 109
    :cond_110
    const/16 v0, 0x307e

    if-lt v1, v0, :cond_118

    const/16 v0, 0x3083

    if-lt v1, v0, :cond_12a

    :cond_118
    const/16 v0, 0x30de

    if-lt v1, v0, :cond_120

    const/16 v0, 0x30e3

    if-lt v1, v0, :cond_12a

    .line 110
    :cond_120
    const v0, 0xff8f

    if-lt v1, v0, :cond_12e

    const v0, 0xff94

    if-ge v1, v0, :cond_12e

    .line 111
    :cond_12a
    const/16 v0, 0x64

    goto/16 :goto_21

    .line 113
    :cond_12e
    const/16 v0, 0x3083

    if-lt v1, v0, :cond_136

    const/16 v0, 0x3089

    if-lt v1, v0, :cond_148

    :cond_136
    const/16 v0, 0x30e3

    if-lt v1, v0, :cond_13e

    const/16 v0, 0x30e9

    if-lt v1, v0, :cond_148

    .line 114
    :cond_13e
    const v0, 0xff94

    if-lt v1, v0, :cond_14c

    const v0, 0xff97

    if-ge v1, v0, :cond_14c

    .line 115
    :cond_148
    const/16 v0, 0x6e

    goto/16 :goto_21

    .line 117
    :cond_14c
    const/16 v0, 0x3089

    if-lt v1, v0, :cond_154

    const/16 v0, 0x308e

    if-lt v1, v0, :cond_166

    :cond_154
    const/16 v0, 0x30e9

    if-lt v1, v0, :cond_15c

    const/16 v0, 0x30ee

    if-lt v1, v0, :cond_166

    .line 118
    :cond_15c
    const v0, 0xff97

    if-lt v1, v0, :cond_16a

    const v0, 0xff9c

    if-ge v1, v0, :cond_16a

    .line 119
    :cond_166
    const/16 v0, 0x78

    goto/16 :goto_21

    .line 121
    :cond_16a
    const/16 v0, 0x308e

    if-lt v1, v0, :cond_172

    const/16 v0, 0x3093

    if-lt v1, v0, :cond_189

    :cond_172
    const/16 v0, 0x30ee

    if-lt v1, v0, :cond_17a

    const/16 v0, 0x30f4

    if-lt v1, v0, :cond_189

    .line 122
    :cond_17a
    const v0, 0xff66

    if-eq v1, v0, :cond_189

    const v0, 0xff9c

    if-eq v1, v0, :cond_189

    const v0, 0xff9d

    if-ne v1, v0, :cond_18d

    .line 123
    :cond_189
    const/16 v0, 0x82

    goto/16 :goto_21

    .line 125
    :cond_18d
    const/16 v0, 0x3300

    if-lt v1, v0, :cond_195

    const/16 v0, 0x33ff

    if-le v1, v0, :cond_1a6

    :cond_195
    const/16 v0, 0x3400

    if-lt v1, v0, :cond_19d

    const/16 v0, 0x4db5

    if-le v1, v0, :cond_1a6

    .line 126
    :cond_19d
    const/16 v0, 0x4e00

    if-lt v1, v0, :cond_1aa

    const v0, 0x9fff

    if-gt v1, v0, :cond_1aa

    .line 127
    :cond_1a6
    const/16 v0, 0x8c

    goto/16 :goto_21

    .line 131
    :cond_1aa
    const/16 v0, 0xa0

    goto/16 :goto_21
.end method

.method private static final setCustomType(I)I
    .registers 2

    .prologue
    .line 136
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_7

    .line 137
    const/16 p0, 0xa0

    .line 143
    :cond_6
    :goto_6
    return p0

    .line 138
    :cond_7
    const/16 v0, 0x14

    if-ne p0, v0, :cond_e

    .line 139
    const/16 p0, 0x97

    .line 140
    goto :goto_6

    :cond_e
    const/16 v0, 0xa

    if-ne p0, v0, :cond_6

    .line 141
    const/16 p0, 0x98

    goto :goto_6
.end method
