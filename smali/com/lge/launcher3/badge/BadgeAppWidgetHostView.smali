.class public Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;
.super Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;
.source "BadgeAppWidgetHostView.java"

# interfaces
.implements Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType:[I


# instance fields
.field private mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType()[I
    .registers 3

    .prologue
    .line 22
    sget-object v0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->$SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->values()[Lcom/lge/launcher3/badge/BadgeUtils$LocationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->BOTTOM_LEFT:Lcom/lge/launcher3/badge/BadgeUtils$LocationType;

    invoke-virtual {v1}, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->TOP_LEFT:Lcom/lge/launcher3/badge/BadgeUtils$LocationType;

    invoke-virtual {v1}, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->TOP_RIGHT:Lcom/lge/launcher3/badge/BadgeUtils$LocationType;

    invoke-virtual {v1}, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->$SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 25
    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    .line 33
    return-void
.end method

.method private getBadgeLocationX(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)I
    .registers 8

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    .line 68
    int-to-float v0, v2

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->$SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_22

    move v0, v1

    .line 83
    :goto_18
    :pswitch_18
    return v0

    .line 77
    :pswitch_19
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->getWidth()I

    move-result v1

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 78
    goto :goto_18

    .line 71
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private setBadgeLocationRect(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)V
    .registers 7

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->getBadgeLocationX(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)I

    move-result v0

    .line 54
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->getBadgeLocationY(Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v1

    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 58
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 59
    return-void
.end method

.method private setContentDescriptionForUninstallMode(Z)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 134
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetInfoItds$com_android_launcher3_LauncherAppWidgetInfo$getHostView(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    .line 136
    if-nez v3, :cond_e

    .line 159
    :cond_d
    :goto_d
    return-void

    :cond_e
    move v0, v1

    .line 140
    :goto_f
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v2

    if-le v0, v2, :cond_46

    .line 148
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    if-eqz v0, :cond_d

    .line 151
    if-eqz p1, :cond_57

    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0117

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 141
    :cond_46
    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_52

    .line 143
    if-eqz p1, :cond_55

    .line 144
    const/4 v2, 0x4

    .line 143
    :goto_4f
    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 140
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_55
    move v2, v1

    .line 144
    goto :goto_4f

    .line 156
    :cond_57
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method


# virtual methods
.method public ajc$privMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_lge_launcher3_badge_BadgeAppWidgetHostView$dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_13

    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->TOP_LEFT:Lcom/lge/launcher3/badge/BadgeUtils$LocationType;

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->setBadgeLocationRect(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)V

    .line 43
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    :cond_13
    return-void
.end method

.method public getBadgeLocationY(Landroid/graphics/drawable/BitmapDrawable;)I
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 91
    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 92
    return v0
.end method

.method public getUninstallType()Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    return-object v0
.end method

.method public isUninstallable()Z
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setUninstallType(Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    .line 100
    return-void
.end method

.method public setVisibilityForUninstallBadge(Z)V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, p1}, Lcom/lge/launcher3/badge/BadgeUtils;->isChanged(Landroid/graphics/drawable/BitmapDrawable;Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 130
    :goto_8
    return-void

    .line 124
    :cond_9
    if-eqz p1, :cond_1f

    .line 125
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils;->createUninstallBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 124
    :goto_13
    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->setClickable(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->invalidate()V

    .line 129
    invoke-direct {p0, p1}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->setContentDescriptionForUninstallMode(Z)V

    goto :goto_8

    .line 125
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method
