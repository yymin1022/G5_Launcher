.class public abstract Lcom/lge/launcher3/liveicon/LiveIcon;
.super Ljava/util/Observable;
.source "LiveIcon.java"


# static fields
.field private static final MSG_UPDATE_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LiveIcon"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mEventListener:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    new-instance v0, Lcom/lge/launcher3/liveicon/LiveIcon$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/liveicon/LiveIcon$1;-><init>(Lcom/lge/launcher3/liveicon/LiveIcon;)V

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/lge/launcher3/liveicon/LiveIcon$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/liveicon/LiveIcon$2;-><init>(Lcom/lge/launcher3/liveicon/LiveIcon;)V

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mEventListener:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/liveicon/LiveIcon;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getBadgedIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/LiveIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method protected abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method protected abstract shouldUpdate()Z
.end method

.method public startEventListening()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/LiveIcon;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method public stopEventListening()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/launcher3/liveicon/LiveIcon;->mEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    return-void
.end method

.method public updateIcon()V
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/LiveIcon;->shouldUpdate()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 53
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/LiveIcon;->updateIconImpl()V

    .line 54
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/LiveIcon;->setChanged()V

    .line 57
    :cond_c
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/LiveIcon;->hasChanged()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 58
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/LiveIcon;->notifyObservers()V

    .line 60
    :cond_15
    return-void
.end method

.method protected abstract updateIconImpl()V
.end method
