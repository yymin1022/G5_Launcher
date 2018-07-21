.class public Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;
.super Lcom/android/launcher3/PageIndicatorMarker;
.source "PageIndicatorMarkerExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsAddMaker:Z

.field private mResource:Lcom/android/launcher3/PageIndicator$PageMarkerResources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->mIsAddMaker:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->mResource:Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    .line 28
    return-void
.end method


# virtual methods
.method public getIsAddIconMaker()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->mIsAddMaker:Z

    return v0
.end method

.method public getMarkerResource()Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->mResource:Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/launcher3/PageIndicatorMarker;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setColor(II)V
    .registers 5

    .prologue
    .line 51
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 62
    :cond_4
    :goto_4
    return-void

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_14

    .line 56
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 58
    :cond_14
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_4

    .line 60
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_4
.end method

.method public setIsAddIconMaker(Z)Z
    .registers 2

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->mIsAddMaker:Z

    return p1
.end method

.method public setMarkerDrawables(II)V
    .registers 4

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PageIndicatorMarker;->setMarkerDrawables(II)V

    .line 43
    const v0, 0x7f02006a

    if-ne p2, v0, :cond_d

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->setIsAddIconMaker(Z)Z

    .line 48
    :goto_c
    return-void

    .line 46
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->setIsAddIconMaker(Z)Z

    goto :goto_c
.end method

.method public setMarkerResource(Lcom/android/launcher3/PageIndicator$PageMarkerResources;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/launcher3/pageindicator/PageIndicatorMarkerExtension;->mResource:Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    .line 72
    return-void
.end method
