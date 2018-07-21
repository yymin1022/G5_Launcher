.class Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$WallpaperComparator;
.super Ljava/lang/Object;
.source "LGWallpaperManagerUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;)I
    .registers 5

    .prologue
    .line 84
    iget-object v0, p1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->displayLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->displayLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$WallpaperComparator;->koreanCompapre(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    check-cast p2, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$WallpaperComparator;->compare(Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;)I

    move-result v0

    return v0
.end method

.method public final getCharType(Ljava/lang/String;)I
    .registers 9

    .prologue
    const/16 v6, 0x306f

    const/16 v5, 0x306a

    const/16 v4, 0x305f

    const/16 v3, 0x3055

    const/16 v2, 0x304b

    .line 114
    if-eqz p1, :cond_174

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_174

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 117
    const/16 v1, 0x30

    if-lt v0, v1, :cond_21

    const/16 v1, 0x39

    if-gt v0, v1, :cond_21

    .line 118
    const/4 v0, 0x2

    .line 169
    :goto_20
    return v0

    .line 120
    :cond_21
    const/16 v1, 0x41

    if-lt v0, v1, :cond_29

    const/16 v1, 0x5a

    if-le v0, v1, :cond_31

    :cond_29
    const/16 v1, 0x61

    if-lt v0, v1, :cond_33

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_33

    .line 121
    :cond_31
    const/4 v0, 0x5

    goto :goto_20

    .line 123
    :cond_33
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_39

    .line 124
    const/4 v0, 0x1

    goto :goto_20

    .line 126
    :cond_39
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->access$0()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 127
    const v1, 0xac00

    if-lt v0, v1, :cond_49

    const v1, 0xd7a3

    if-le v0, v1, :cond_51

    :cond_49
    const/16 v1, 0x3131

    if-lt v0, v1, :cond_53

    const/16 v1, 0x318e

    if-gt v0, v1, :cond_53

    .line 128
    :cond_51
    const/4 v0, 0x3

    goto :goto_20

    .line 132
    :cond_53
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->access$1()Z

    move-result v1

    if-eqz v1, :cond_174

    .line 133
    const/16 v1, 0x3041

    if-lt v0, v1, :cond_5f

    if-lt v0, v2, :cond_171

    :cond_5f
    const/16 v1, 0xc16

    if-eq v0, v1, :cond_171

    .line 134
    const/16 v1, 0x30a1

    if-lt v0, v1, :cond_6b

    const/16 v1, 0x30ab

    if-lt v0, v1, :cond_171

    .line 135
    :cond_6b
    const v1, 0xff71

    if-lt v0, v1, :cond_75

    const v1, 0xff76

    if-lt v0, v1, :cond_171

    .line 136
    :cond_75
    const v1, 0xff67

    if-lt v0, v1, :cond_7f

    const v1, 0xff6c

    if-lt v0, v1, :cond_171

    .line 137
    :cond_7f
    if-lt v0, v2, :cond_83

    if-lt v0, v3, :cond_171

    :cond_83
    const/16 v1, 0x3095

    if-eq v0, v1, :cond_171

    .line 138
    const/16 v1, 0x3096

    if-eq v0, v1, :cond_171

    const/16 v1, 0x30ab

    if-lt v0, v1, :cond_93

    const/16 v1, 0x30b5

    if-lt v0, v1, :cond_171

    .line 139
    :cond_93
    const/16 v1, 0x30f5

    if-eq v0, v1, :cond_171

    const/16 v1, 0x30f6

    if-eq v0, v1, :cond_171

    .line 140
    const v1, 0xff76

    if-lt v0, v1, :cond_a5

    const v1, 0xff7b

    if-lt v0, v1, :cond_171

    .line 141
    :cond_a5
    if-lt v0, v3, :cond_a9

    if-lt v0, v4, :cond_171

    .line 142
    :cond_a9
    const/16 v1, 0x30b5

    if-lt v0, v1, :cond_b1

    const/16 v1, 0x30bf

    if-lt v0, v1, :cond_171

    .line 143
    :cond_b1
    const v1, 0xff7b

    if-lt v0, v1, :cond_bb

    const v1, 0xff80

    if-lt v0, v1, :cond_171

    .line 144
    :cond_bb
    if-lt v0, v4, :cond_bf

    if-lt v0, v5, :cond_171

    .line 145
    :cond_bf
    const/16 v1, 0x30bf

    if-lt v0, v1, :cond_c7

    const/16 v1, 0x30ca

    if-lt v0, v1, :cond_171

    .line 146
    :cond_c7
    const v1, 0xff80

    if-lt v0, v1, :cond_d1

    const v1, 0xff85

    if-lt v0, v1, :cond_171

    :cond_d1
    const v1, 0xff6f

    if-eq v0, v1, :cond_171

    .line 147
    if-lt v0, v5, :cond_da

    if-lt v0, v6, :cond_171

    .line 148
    :cond_da
    const/16 v1, 0x30ca

    if-lt v0, v1, :cond_e2

    const/16 v1, 0x30cf

    if-lt v0, v1, :cond_171

    .line 149
    :cond_e2
    const v1, 0xff85

    if-lt v0, v1, :cond_ec

    const v1, 0xff8a

    if-lt v0, v1, :cond_171

    .line 150
    :cond_ec
    if-lt v0, v6, :cond_f2

    const/16 v1, 0x307e

    if-lt v0, v1, :cond_171

    .line 151
    :cond_f2
    const/16 v1, 0x30cf

    if-lt v0, v1, :cond_fa

    const/16 v1, 0x30de

    if-lt v0, v1, :cond_171

    .line 152
    :cond_fa
    const v1, 0xff8a

    if-lt v0, v1, :cond_104

    const v1, 0xff8f

    if-lt v0, v1, :cond_171

    .line 153
    :cond_104
    const/16 v1, 0x307e

    if-lt v0, v1, :cond_10c

    const/16 v1, 0x3083

    if-lt v0, v1, :cond_171

    .line 154
    :cond_10c
    const/16 v1, 0x30de

    if-lt v0, v1, :cond_114

    const/16 v1, 0x30e3

    if-lt v0, v1, :cond_171

    .line 155
    :cond_114
    const v1, 0xff8f

    if-lt v0, v1, :cond_11e

    const v1, 0xff94

    if-lt v0, v1, :cond_171

    .line 156
    :cond_11e
    const/16 v1, 0x3083

    if-lt v0, v1, :cond_126

    const/16 v1, 0x3089

    if-lt v0, v1, :cond_171

    .line 157
    :cond_126
    const/16 v1, 0x30e3

    if-lt v0, v1, :cond_12e

    const/16 v1, 0x30e9

    if-lt v0, v1, :cond_171

    .line 158
    :cond_12e
    const v1, 0xff94

    if-lt v0, v1, :cond_138

    const v1, 0xff97

    if-lt v0, v1, :cond_171

    .line 159
    :cond_138
    const/16 v1, 0x3089

    if-lt v0, v1, :cond_140

    const/16 v1, 0x308e

    if-lt v0, v1, :cond_171

    .line 160
    :cond_140
    const/16 v1, 0x30e9

    if-lt v0, v1, :cond_148

    const/16 v1, 0x30ee

    if-lt v0, v1, :cond_171

    .line 161
    :cond_148
    const v1, 0xff97

    if-lt v0, v1, :cond_152

    const v1, 0xff9c

    if-lt v0, v1, :cond_171

    .line 162
    :cond_152
    const/16 v1, 0x308e

    if-lt v0, v1, :cond_15a

    const/16 v1, 0x3093

    if-lt v0, v1, :cond_171

    .line 163
    :cond_15a
    const/16 v1, 0x30ee

    if-lt v0, v1, :cond_162

    const/16 v1, 0x30f4

    if-lt v0, v1, :cond_171

    :cond_162
    const v1, 0xff66

    if-eq v0, v1, :cond_171

    .line 164
    const v1, 0xff9c

    if-eq v0, v1, :cond_171

    const v1, 0xff9d

    if-ne v0, v1, :cond_174

    .line 165
    :cond_171
    const/4 v0, 0x4

    goto/16 :goto_20

    .line 169
    :cond_174
    const/4 v0, 0x6

    goto/16 :goto_20
.end method

.method public koreanCompapre(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 88
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->access$0()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 89
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$WallpaperComparator;->getCharType(Ljava/lang/String;)I

    move-result v2

    .line 90
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$WallpaperComparator;->getCharType(Ljava/lang/String;)I

    move-result v3

    .line 92
    if-ge v2, v3, :cond_13

    .line 110
    :cond_12
    :goto_12
    return v0

    .line 95
    :cond_13
    if-le v2, v3, :cond_2b

    move v0, v1

    .line 96
    goto :goto_12

    .line 98
    :cond_17
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->access$1()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 99
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$WallpaperComparator;->getCharType(Ljava/lang/String;)I

    move-result v2

    .line 100
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$WallpaperComparator;->getCharType(Ljava/lang/String;)I

    move-result v3

    .line 102
    if-lt v2, v3, :cond_12

    .line 105
    if-le v2, v3, :cond_2b

    move v0, v1

    .line 106
    goto :goto_12

    .line 110
    :cond_2b
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->access$2()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_12
.end method
