.class public Lcom/lge/launcher3/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static traverseToSetClip(Landroid/view/ViewGroup;ZI)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 17
    if-nez p0, :cond_4

    .line 30
    :goto_3
    return-void

    .line 21
    :cond_4
    if-lez p2, :cond_17

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_17

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, p1, v1}, Lcom/lge/launcher3/util/ViewUtils;->traverseToSetClip(Landroid/view/ViewGroup;ZI)V

    .line 28
    :cond_17
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 29
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_3
.end method
