.class public Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;
.super Landroid/widget/ScrollView;
.source "FlutterScrollView.java"


# static fields
.field private static final MULTIPLE_FACTOR:F = 2.0f

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mFlutterItemSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mStartedNestedScrollView:Landroid/view/View;

.field private mStartedNestedScrollY:I

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mFlutterItemSet:Ljava/util/HashSet;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollView:Landroid/view/View;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollY:I

    .line 22
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->initConfiguration(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mFlutterItemSet:Ljava/util/HashSet;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollView:Landroid/view/View;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollY:I

    .line 27
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->initConfiguration(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private initConfiguration(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 70
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mTouchSlop:I

    .line 72
    return-void
.end method

.method private setFlutterItemTranslationY(I)V
    .registers 6

    .prologue
    .line 50
    const/4 v0, 0x1

    if-lt v0, p1, :cond_15

    const/4 v0, -0x1

    if-gt v0, p1, :cond_15

    .line 51
    const/4 v0, 0x0

    move v1, v0

    .line 55
    :goto_8
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mFlutterItemSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 58
    return-void

    .line 53
    :cond_15
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    goto :goto_8

    .line 55
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 56
    int-to-float v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_e
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 76
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN_NESTED_SCROLL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 78
    if-ne v0, v3, :cond_32

    .line 79
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollView:Landroid/view/View;

    if-eqz v1, :cond_32

    .line 80
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mTouchSlop:I

    if-le v1, v2, :cond_32

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 82
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 83
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 87
    :cond_32
    if-eqz v0, :cond_36

    if-ne v0, v3, :cond_3c

    .line 88
    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollView:Landroid/view/View;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollY:I

    .line 92
    :cond_3c
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 63
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 33
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 38
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 6

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 43
    sub-int v0, p2, p4

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->setFlutterItemTranslationY(I)V

    .line 44
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_e

    .line 99
    iput-object p2, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollView:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/smartbulletin/view/FlutterScrollView;->mStartedNestedScrollY:I

    .line 102
    :cond_e
    return v0
.end method
