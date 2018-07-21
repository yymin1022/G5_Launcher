.class public Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;
.super Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;
.source "ScreenEffectPreviewTargetInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;-><init>(Landroid/content/res/Resources;)V

    .line 25
    return-void
.end method


# virtual methods
.method public setScrollX(I)V
    .registers 4

    .prologue
    .line 54
    iput p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mScrollX:I

    .line 56
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->getScrollWidthForPage(Landroid/view/View;)I

    move-result v0

    .line 57
    if-lez v0, :cond_10

    .line 58
    int-to-float v1, p1

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mScrollRatio:F

    .line 60
    :cond_10
    return-void
.end method

.method public setWhichPageToDraw(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mWhichPageToDraw:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    .line 48
    return-void
.end method

.method public updateInfo(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 32
    :cond_6
    const/4 v0, 0x0

    .line 40
    :goto_7
    return v0

    .line 35
    :cond_8
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mChild:Landroid/view/View;

    .line 37
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->TO_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mScrollDirection:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    .line 38
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mOverscrollState:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;

    .line 40
    const/4 v0, 0x1

    goto :goto_7
.end method
