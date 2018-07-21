.class public Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;
.super Ljava/lang/Object;
.source "SBTimeTickManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;,
        Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;
    }
.end annotation


# instance fields
.field private mBackgroundWallpaper:Landroid/widget/ImageView;

.field private mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

.field private final mContext:Landroid/content/Context;

.field private mItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;",
            "Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;",
            ">;"
        }
    .end annotation
.end field

.field private mNoProviderView:Landroid/view/View;

.field private mState:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;Landroid/widget/ImageView;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 19
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mBackgroundWallpaper:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mNoProviderView:Landroid/view/View;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE00:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mState:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    .line 49
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mNoProviderView:Landroid/view/View;

    .line 51
    iput-object p3, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 52
    iput-object p4, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mBackgroundWallpaper:Landroid/widget/ImageView;

    .line 53
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->initResource()V

    .line 54
    return-void
.end method

.method private getCustomStateNow()Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;
    .registers 5

    .prologue
    const/4 v3, 0x6

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 78
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 80
    if-ltz v0, :cond_1b

    if-ge v0, v3, :cond_1b

    .line 81
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE01:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    .line 90
    :goto_15
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 91
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE05:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    .line 93
    :cond_1a
    return-object v0

    .line 82
    :cond_1b
    if-lt v0, v3, :cond_24

    const/16 v2, 0xc

    if-ge v0, v2, :cond_24

    .line 83
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE02:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    goto :goto_15

    .line 84
    :cond_24
    const/16 v2, 0x12

    if-lt v0, v2, :cond_2f

    const/16 v2, 0x18

    if-ge v0, v2, :cond_2f

    .line 85
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE04:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    goto :goto_15

    .line 87
    :cond_2f
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE03:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    goto :goto_15
.end method

.method private initResource()V
    .registers 6

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE01:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    .line 58
    new-instance v2, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;

    const v3, 0x7f0f0078

    .line 59
    const v4, 0x7f0200c7

    .line 58
    invoke-direct {v2, p0, v3, v4}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;II)V

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE02:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    .line 61
    new-instance v2, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;

    const v3, 0x7f0f0079

    .line 62
    const v4, 0x7f0200ca

    .line 61
    invoke-direct {v2, p0, v3, v4}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;II)V

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE03:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    .line 64
    new-instance v2, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;

    const v3, 0x7f0f007a

    .line 65
    const v4, 0x7f0200c6

    .line 64
    invoke-direct {v2, p0, v3, v4}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;II)V

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE04:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    .line 67
    new-instance v2, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;

    const v3, 0x7f0f007b

    .line 68
    const v4, 0x7f0200c8

    .line 67
    invoke-direct {v2, p0, v3, v4}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;II)V

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;->STATE05:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    .line 70
    new-instance v2, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;

    const v3, 0x7f0f007c

    .line 71
    const v4, 0x7f0200c9

    .line 70
    invoke-direct {v2, p0, v3, v4}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;II)V

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method private setScaleTypeAsFitxy()V
    .registers 5

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 129
    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayWidth(Landroid/app/Activity;)I

    move-result v1

    .line 130
    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayHeight(Landroid/app/Activity;)I

    move-result v0

    .line 131
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mBackgroundWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 132
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mBackgroundWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 133
    if-eq v1, v2, :cond_1c

    if-ne v0, v3, :cond_23

    .line 134
    :cond_1c
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mBackgroundWallpaper:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    :cond_23
    return-void
.end method


# virtual methods
.method public updateHeaderBackground()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v0

    .line 111
    if-nez v0, :cond_34

    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 113
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mBackgroundWallpaper:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mState:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;->getWallpaperId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mNoProviderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0, v4}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->setVisibility(I)V

    .line 124
    :cond_30
    :goto_30
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->setScaleTypeAsFitxy()V

    .line 125
    return-void

    .line 118
    :cond_34
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 119
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mBackgroundWallpaper:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mState:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;->getWallpaperId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mNoProviderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mCategoryLayout:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->setVisibility(I)V

    goto :goto_30
.end method

.method public updateHeaderMessage()V
    .registers 3

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->getCustomStateNow()Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mState:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    if-ne v0, v1, :cond_9

    .line 107
    :cond_8
    :goto_8
    return-void

    .line 101
    :cond_9
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mState:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$CustomState;

    .line 104
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->mItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 105
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->updateHeaderBackground()V

    goto :goto_8
.end method
