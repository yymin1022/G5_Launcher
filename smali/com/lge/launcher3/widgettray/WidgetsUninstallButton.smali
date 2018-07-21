.class public Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;
.super Landroid/widget/ImageButton;
.source "WidgetsUninstallButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$widgettray$WidgetsUninstallButton$MODE:[I


# instance fields
.field mCurMode:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$widgettray$WidgetsUninstallButton$MODE()[I
    .registers 3

    .prologue
    .line 13
    sget-object v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->$SWITCH_TABLE$com$lge$launcher3$widgettray$WidgetsUninstallButton$MODE:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->values()[Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->NORMAL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->UNINSTALL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->$SWITCH_TABLE$com$lge$launcher3$widgettray$WidgetsUninstallButton$MODE:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget-object v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->NORMAL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mCurMode:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    .line 34
    invoke-virtual {p0, p0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher3/widget/WidgetsContainerView;Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;)V
    .registers 5

    .prologue
    .line 38
    iput-object p3, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    .line 39
    const v0, 0x7f0e0102

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 40
    return-void
.end method

.method public isUninstallMode()Z
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mCurMode:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    sget-object v1, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->NORMAL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    if-ne v0, v1, :cond_8

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 44
    invoke-static {}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->$SWITCH_TABLE$com$lge$launcher3$widgettray$WidgetsUninstallButton$MODE()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mCurMode:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 53
    :goto_f
    return-void

    .line 46
    :pswitch_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->setUninstallMode(Z)V

    goto :goto_f

    .line 49
    :pswitch_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->setUninstallMode(Z)V

    goto :goto_f

    .line 44
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method

.method public setUninstallMode(Z)V
    .registers 5

    .prologue
    const v2, 0x7f0f002f

    .line 56
    if-eqz p1, :cond_47

    .line 57
    sget-object v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->UNINSTALL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mCurMode:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    .line 58
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->setUninstallBadge(Landroid/support/v4/view/ViewPager;Z)V

    .line 68
    :goto_46
    return-void

    .line 63
    :cond_47
    sget-object v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;->NORMAL:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mCurMode:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton$MODE;

    .line 64
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->setUninstallBadge(Landroid/support/v4/view/ViewPager;Z)V

    goto :goto_46
.end method
