.class final enum Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;
.super Ljava/lang/Enum;
.source "InitialGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/initialguide/InitialGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DotPageIndicatorDrawable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuideActivity$DotPageIndicatorDrawable:[I

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

.field public static final enum OFF:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

.field public static final enum ON:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuideActivity$DotPageIndicatorDrawable()[I
    .registers 3

    .prologue
    .line 53
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->$SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuideActivity$DotPageIndicatorDrawable:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->values()[Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->OFF:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ON:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->$SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuideActivity$DotPageIndicatorDrawable:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ON:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->OFF:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ON:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->OFF:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ENUM$VALUES:[Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ENUM$VALUES:[Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->$SWITCH_TABLE$com$lge$launcher3$initialguide$InitialGuideActivity$DotPageIndicatorDrawable()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_58

    .line 83
    const-string v0, "ic_page_view_off"

    const-string v2, "drawable"

    const-string v3, "com.lge"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 84
    if-nez v0, :cond_24

    .line 85
    const v0, 0x7f020059

    .line 87
    :cond_24
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 69
    :pswitch_2d
    const-string v0, "ic_page_view_on"

    const-string v2, "drawable"

    const-string v3, "com.lge"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 70
    if-nez v0, :cond_3c

    .line 71
    const v0, 0x7f02005a

    .line 73
    :cond_3c
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    const-string v0, "color_accent_ui"

    const-string v2, "color"

    const-string v3, "com.lge"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 76
    if-eqz v0, :cond_2a

    .line 77
    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/lge/launcher3/util/ColorUtilsExtension;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2a

    .line 67
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2d
    .end packed-switch
.end method
