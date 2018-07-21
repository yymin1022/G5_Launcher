.class public Lcom/android/launcher3/allapps/AllAppsSearchEditView;
.super Landroid/widget/EditText;
.source "AllAppsSearchEditView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsSearchEditView$OnBackKeyListener;
    }
.end annotation


# instance fields
.field private mBackKeyListener:Lcom/android/launcher3/allapps/AllAppsSearchEditView$OnBackKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsSearchEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 57
    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->mBackKeyListener:Lcom/android/launcher3/allapps/AllAppsSearchEditView$OnBackKeyListener;

    if-eqz v0, :cond_13

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->mBackKeyListener:Lcom/android/launcher3/allapps/AllAppsSearchEditView$OnBackKeyListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AllAppsSearchEditView$OnBackKeyListener;->onBackKey()V

    .line 61
    :cond_13
    const/4 v0, 0x0

    .line 63
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public setOnBackKeyListener(Lcom/android/launcher3/allapps/AllAppsSearchEditView$OnBackKeyListener;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsSearchEditView;->mBackKeyListener:Lcom/android/launcher3/allapps/AllAppsSearchEditView$OnBackKeyListener;

    .line 52
    return-void
.end method
