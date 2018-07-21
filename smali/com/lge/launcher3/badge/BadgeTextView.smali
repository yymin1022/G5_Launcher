.class public Lcom/lge/launcher3/badge/BadgeTextView;
.super Landroid/widget/TextView;
.source "BadgeTextView.java"

# interfaces
.implements Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;
.implements Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType:[I = null

.field private static final EXTRA_EMAIL_ACCOUNT_ID:Ljava/lang/String; = "AccountId"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAppNotifierBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mAppNotifierCount:I

.field private mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

.field private mIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mRegisteredComponentName:Ljava/lang/String;

.field private mShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType()[I
    .registers 3

    .prologue
    .line 34
    sget-object v0, Lcom/lge/launcher3/badge/BadgeTextView;->$SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType:[I

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
    sput-object v0, Lcom/lge/launcher3/badge/BadgeTextView;->$SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType:[I

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

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/lge/launcher3/badge/BadgeTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/badge/BadgeTextView;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->NULL:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierCount:I

    .line 45
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    .line 52
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->NULL:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierCount:I

    .line 45
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    .line 52
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->NULL:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierCount:I

    .line 45
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    .line 52
    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 74
    return-void
.end method

.method private getBadgeLocationX(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)I
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getScrollX()I

    move-result v2

    .line 199
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getWidth()I

    move-result v3

    .line 202
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    .line 203
    if-eqz v0, :cond_41

    .line 204
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    .line 207
    :goto_1e
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    .line 208
    int-to-float v5, v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 211
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeTextView;->$SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType()[I

    move-result-object v6

    invoke-virtual {p2}, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_44

    .line 225
    :goto_34
    return v1

    .line 214
    :pswitch_35
    add-int/2addr v0, v2

    sub-int v1, v0, v5

    .line 215
    goto :goto_34

    .line 218
    :pswitch_39
    add-int v1, v2, v3

    add-int/2addr v0, v4

    sub-int v0, v1, v0

    add-int v1, v0, v5

    .line 220
    goto :goto_34

    :cond_41
    move v0, v1

    goto :goto_1e

    .line 211
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_35
        :pswitch_39
        :pswitch_35
    .end packed-switch
.end method

.method private getTalkbackStringForUninstallMode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 368
    const v1, 0x7f0f0117

    .line 369
    iget v2, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v2, :cond_21

    .line 370
    iget-object v2, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->isShortcutWithApplicationType(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 371
    const v0, 0x7f0f0118

    .line 374
    :goto_18
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    move v0, v1

    goto :goto_18
.end method

.method private setBadgeLocationRect(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)V
    .registers 7

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeTextView;->getBadgeLocationX(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)I

    move-result v0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeTextView;->getBadgeLocationY(Landroid/graphics/drawable/Drawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)I

    move-result v1

    .line 186
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 187
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 189
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 190
    return-void
.end method

.method private updateVisibilityForShortcutBadge(Lcom/android/launcher3/ItemInfo;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 382
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 383
    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-ne v0, v5, :cond_3a

    move v0, v1

    .line 384
    :goto_1f
    iget v5, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq v5, v1, :cond_3c

    .line 385
    invoke-static {v3, p1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->isShortcutWithApplicationType(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 386
    :goto_29
    if-nez v4, :cond_39

    if-eqz v0, :cond_39

    if-eqz v2, :cond_39

    .line 387
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_39

    .line 388
    invoke-static {v3}, Lcom/lge/launcher3/badge/BadgeUtils;->createShortcutBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 391
    :cond_39
    return-void

    :cond_3a
    move v0, v2

    .line 383
    goto :goto_1f

    :cond_3c
    move v2, v1

    .line 384
    goto :goto_29
.end method


# virtual methods
.method public getBadgeLocationY(Landroid/graphics/drawable/Drawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)I
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getScrollY()I

    move-result v2

    .line 235
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getPaddingTop()I

    move-result v3

    .line 238
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    .line 239
    if-eqz v0, :cond_4c

    .line 240
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 243
    :goto_1a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 244
    int-to-float v5, v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 247
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeTextView;->$SWITCH_TABLE$com$lge$launcher3$badge$BadgeUtils$LocationType()[I

    move-result-object v6

    invoke-virtual {p2}, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_4e

    .line 272
    :cond_30
    :goto_30
    return v1

    .line 250
    :pswitch_31
    add-int v0, v2, v3

    sub-int/2addr v0, v5

    .line 251
    if-ltz v0, :cond_30

    :cond_36
    move v1, v0

    goto :goto_30

    .line 257
    :pswitch_38
    add-int v1, v2, v3

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 261
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->isTextTransparent()Z

    move-result v1

    if-nez v1, :cond_36

    .line 262
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 263
    if-le v0, v1, :cond_36

    goto :goto_30

    :cond_4c
    move v0, v1

    goto :goto_1a

    .line 247
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_38
    .end packed-switch
.end method

.method public getUninstallType()Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    return-object v0
.end method

.method public isIconChangeBadgeVisible()Z
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTextTransparent()Z
    .registers 4

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isUninstallable()Z
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 119
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mRegisteredComponentName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 120
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mRegisteredComponentName:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/lge/launcher3/badge/BadgeTextView;->registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;Ljava/lang/String;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    .line 122
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 130
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->unregisterAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;)V

    .line 131
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 157
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_13

    .line 158
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->TOP_LEFT:Lcom/lge/launcher3/badge/BadgeUtils$LocationType;

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/badge/BadgeTextView;->setBadgeLocationRect(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)V

    .line 159
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    :cond_13
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_23

    .line 163
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->TOP_RIGHT:Lcom/lge/launcher3/badge/BadgeUtils$LocationType;

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/badge/BadgeTextView;->setBadgeLocationRect(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)V

    .line 164
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    :cond_23
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_33

    .line 168
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->TOP_RIGHT:Lcom/lge/launcher3/badge/BadgeUtils$LocationType;

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/badge/BadgeTextView;->setBadgeLocationRect(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)V

    .line 169
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    :cond_33
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_43

    .line 173
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/lge/launcher3/badge/BadgeUtils$LocationType;->BOTTOM_LEFT:Lcom/lge/launcher3/badge/BadgeUtils$LocationType;

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/badge/BadgeTextView;->setBadgeLocationRect(Landroid/graphics/drawable/BitmapDrawable;Lcom/lge/launcher3/badge/BadgeUtils$LocationType;)V

    .line 174
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mShortcutBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    :cond_43
    return-void
.end method

.method public onUpdateAppNotifier(I)V
    .registers 5

    .prologue
    .line 292
    iput p1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierCount:I

    .line 293
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 294
    iget-object v1, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 295
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwnerAsUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierCount:I

    .line 298
    :cond_2b
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierCount:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->createBadgeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 299
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/badge/BadgeTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->invalidate()V

    .line 301
    return-void
.end method

.method public registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;Ljava/lang/String;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;Ljava/lang/String;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 6

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    move-result-object v1

    iget v2, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierCount:I

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getCountDescription(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_25

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_25
    iget-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_46

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getTalkbackStringForUninstallMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 82
    if-eqz p1, :cond_9

    instance-of v0, p1, Lcom/android/launcher3/ItemInfo;

    if-nez v0, :cond_a

    .line 111
    :cond_9
    :goto_9
    return-void

    .line 86
    :cond_a
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    .line 89
    :try_start_c
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_5b

    .line 92
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mRegisteredComponentName:Ljava/lang/String;

    .line 93
    const-string v1, "AccountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 94
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    const-string v1, "AccountId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mRegisteredComponentName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mRegisteredComponentName:Ljava/lang/String;

    .line 98
    :cond_43
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mRegisteredComponentName:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/lge/launcher3/badge/BadgeTextView;->registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;Ljava/lang/String;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    .line 99
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    invoke-virtual {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_57

    .line 100
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->NULL:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_57} :catch_60

    .line 110
    :cond_57
    :goto_57
    invoke-direct {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->updateVisibilityForShortcutBadge(Lcom/android/launcher3/ItemInfo;)V

    goto :goto_9

    .line 103
    :cond_5b
    :try_start_5b
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->NULL:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5f} :catch_60

    goto :goto_57

    .line 105
    :catch_60
    move-exception v0

    .line 106
    sget-object v1, Lcom/lge/launcher3/badge/BadgeTextView;->TAG:Ljava/lang/String;

    const-string v2, "setTag() : RuntimeException(%s), tag(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 106
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57
.end method

.method public setUninstallType(Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallType:Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    .line 325
    return-void
.end method

.method public setVisibilityForUninstallBadge(Z)V
    .registers 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, p1}, Lcom/lge/launcher3/badge/BadgeUtils;->isChanged(Landroid/graphics/drawable/BitmapDrawable;Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 361
    :cond_8
    :goto_8
    return-void

    .line 349
    :cond_9
    if-eqz p1, :cond_28

    .line 350
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils;->createUninstallBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 349
    :goto_13
    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mUninstallBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 351
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->invalidate()V

    .line 353
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 354
    if-eqz p1, :cond_2a

    .line 355
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/badge/BadgeTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 350
    :cond_28
    const/4 v0, 0x0

    goto :goto_13

    .line 357
    :cond_2a
    iget-object v1, v0, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    .line 358
    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/badge/BadgeTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public updateIconChangeBadge(Z)V
    .registers 3

    .prologue
    .line 307
    if-eqz p1, :cond_17

    .line 308
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/badge/BadgeUtils;->createIconChangeBadgeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 307
    :goto_a
    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeTextView;->mIconChangeBadgeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 309
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/badge/BadgeTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->invalidate()V

    .line 311
    return-void

    .line 308
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method
