.class public Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog;
.super Ljava/lang/Object;
.source "ScreenEffectSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    .prologue
    .line 43
    if-eqz p0, :cond_6

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_7

    .line 58
    :cond_6
    :goto_6
    return-void

    .line 47
    :cond_7
    const-class v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    .line 48
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_21

    .line 52
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 55
    :cond_21
    new-instance v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_6
.end method
