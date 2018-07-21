.class public Lcom/lge/launcher3/badge/BadgeFolderIcon;
.super Landroid/widget/FrameLayout;
.source "BadgeFolderIcon.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppNotifierDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

.field private mBadgeCount:I

.field private mDrawAppNotifier:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/lge/launcher3/badge/BadgeFolderIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->NULL:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mBadgeCount:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mDrawAppNotifier:Z

    .line 54
    return-void
.end method

.method public static ajc$get$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mAppNotifierDrawer(Lcom/lge/launcher3/badge/BadgeFolderIcon;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    return-object v0
.end method

.method public static ajc$set$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mAppNotifierDrawer(Lcom/lge/launcher3/badge/BadgeFolderIcon;Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    return-void
.end method

.method private getBadgeLocationX(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)I
    .registers 6

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    if-nez v0, :cond_12

    .line 180
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 188
    :goto_11
    return v0

    .line 182
    :cond_12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 183
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 184
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 186
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    goto :goto_11
.end method

.method private getBadgeLocationY(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)I
    .registers 5

    .prologue
    .line 200
    if-nez p2, :cond_7

    .line 201
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollY()I

    move-result v0

    .line 212
    :cond_6
    :goto_6
    return v0

    .line 203
    :cond_7
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_11

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-nez v0, :cond_16

    .line 205
    :cond_11
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollY()I

    move-result v0

    goto :goto_6

    .line 208
    :cond_16
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    .line 210
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollY()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollY()I

    move-result v0

    goto :goto_6
.end method

.method private setNotifierRect(Landroid/graphics/drawable/BitmapDrawable;Landroid/widget/ImageView;)V
    .registers 11

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getBadgeLocationX(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)I

    move-result v1

    sub-int v3, v0, v1

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getBadgeLocationY(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)I

    move-result v4

    .line 153
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 154
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v2, v0, v5

    .line 155
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollY()I

    move-result v6

    .line 156
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 157
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v7, v0

    .line 159
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 160
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    .line 161
    if-eqz v0, :cond_59

    .line 162
    int-to-float v0, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 163
    add-int/2addr v2, v0

    .line 164
    add-int/2addr v0, v1

    move v1, v2

    .line 166
    :goto_4f
    sub-int/2addr v1, v3

    add-int v2, v6, v4

    sub-int/2addr v0, v3

    .line 167
    add-int v3, v7, v4

    .line 166
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 168
    return-void

    :cond_59
    move v0, v1

    move v1, v2

    goto :goto_4f
.end method


# virtual methods
.method public drawBadge(Landroid/graphics/Canvas;Landroid/widget/ImageView;)V
    .registers 8

    .prologue
    .line 134
    sget-object v0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->TAG:Ljava/lang/String;

    const-string v1, "drawBadge() : mAppNotifierDrawable(%s), mDrawAppNotifier(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 135
    iget-object v4, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawable:Landroid/graphics/drawable/BitmapDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mDrawAppNotifier:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 134
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mDrawAppNotifier:Z

    if-eqz v0, :cond_56

    .line 138
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v0, p2}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->setNotifierRect(Landroid/graphics/drawable/BitmapDrawable;Landroid/widget/ImageView;)V

    .line 139
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    sget-object v0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawBadge() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_56
    return-void
.end method

.method protected getContentsByString(Lcom/android/launcher3/FolderInfo;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/FolderInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 79
    return-object v2

    .line 63
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 64
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 65
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 67
    if-eqz v4, :cond_59

    const-string v5, "AccountId"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 68
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 69
    const-string v5, "AccountId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    :cond_59
    iget-object v4, v0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 74
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, v0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v4, v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwnerAsUser(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 75
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method protected onUpdateAppNotifier(ILandroid/widget/TextView;)V
    .registers 6

    .prologue
    .line 111
    iput p1, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mBadgeCount:I

    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    iget-object v1, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mBadgeCount:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->createBadgeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mAppNotifierDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 114
    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_39

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mContext:Landroid/content/Context;

    const v2, 0x7f0f001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    :goto_35
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->invalidate()V

    .line 120
    return-void

    .line 117
    :cond_39
    iget-object v0, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0f003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_35
.end method

.method protected registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->registerAppNotifierGroup(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 6

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    move-result-object v1

    .line 88
    iget v2, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mBadgeCount:I

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getCountDescription(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_25

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method protected setDrawAppNotifier(Z)V
    .registers 2

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/lge/launcher3/badge/BadgeFolderIcon;->mDrawAppNotifier:Z

    .line 127
    return-void
.end method
