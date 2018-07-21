.class public Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;
.super Ljava/lang/Object;
.source "SBFastTransform.java"


# instance fields
.field mRenderNode:Landroid/view/RenderNode;

.field mSetAlpha:Ljava/lang/reflect/Method;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    .line 16
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    .line 18
    :try_start_8
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mRenderNode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 19
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 20
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNode;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_22} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_22} :catch_44
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_22} :catch_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_22} :catch_4e

    .line 35
    :goto_22
    :try_start_22
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setAlphaNoInvalidation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mSetAlpha:Ljava/lang/reflect/Method;

    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mSetAlpha:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_22 .. :try_end_3e} :catch_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_3e} :catch_58

    .line 44
    :goto_3e
    return-void

    .line 21
    :catch_3f
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_22

    .line 24
    :catch_44
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_22

    .line 27
    :catch_49
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_22

    .line 30
    :catch_4e
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_22

    .line 37
    :catch_53
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3e

    .line 40
    :catch_58
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3e
.end method


# virtual methods
.method public setAlpha(F)V
    .registers 7

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mSetAlpha:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    .line 99
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 116
    :cond_9
    :goto_9
    return-void

    .line 101
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getAlpha()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    :try_start_16
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mSetAlpha:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_27} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_27} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_27} :catch_32

    goto :goto_9

    .line 104
    :catch_28
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_9

    .line 107
    :catch_2d
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_9

    .line 110
    :catch_32
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_9
.end method

.method public setScaleX(F)V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    if-nez v0, :cond_a

    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 85
    :cond_9
    :goto_9
    return-void

    .line 80
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleX()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setScaleX(F)Z

    .line 82
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto :goto_9
.end method

.method public setScaleY(F)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    if-nez v0, :cond_a

    .line 89
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 96
    :cond_9
    :goto_9
    return-void

    .line 91
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleY()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setScaleY(F)Z

    .line 93
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto :goto_9
.end method

.method public setTranslationX(F)V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    if-nez v0, :cond_a

    .line 48
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 54
    :cond_9
    :goto_9
    return-void

    .line 50
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationY()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_9

    .line 51
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationX(F)Z

    goto :goto_9
.end method

.method public setTranslationY(F)V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    if-nez v0, :cond_a

    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    :cond_9
    :goto_9
    return-void

    .line 60
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationY()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationY(F)Z

    goto :goto_9
.end method

.method public setTranslationZ(F)V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    if-nez v0, :cond_a

    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 74
    :cond_9
    :goto_9
    return-void

    .line 70
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationY()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBFastTransform;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationZ(F)Z

    goto :goto_9
.end method
