.class public Lcom/lge/launcher3/util/ColorUtilsExtension;
.super Ljava/lang/Object;
.source "ColorUtilsExtension.java"


# static fields
.field private static final DISABLED_ALPHA:F = 0.35f


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getEnableAlpha(Z)F
    .registers 2

    .prologue
    .line 33
    if-eqz p0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    return v0

    :cond_5
    const v0, 0x3eb33333    # 0.35f

    goto :goto_4
.end method

.method public static randomColor()I
    .registers 5

    .prologue
    const/16 v4, 0x100

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 20
    const/16 v1, 0xff

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method
