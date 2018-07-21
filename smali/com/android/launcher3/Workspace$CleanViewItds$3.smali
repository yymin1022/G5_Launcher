.class public Lcom/android/launcher3/Workspace$CleanViewItds$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CleanViewItds.aj"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateOutCleanView(Lcom/android/launcher3/Workspace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$hotseat:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$CleanViewItds$3;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$CleanViewItds$3;->val$hotseat:Landroid/view/View;

    .line 209
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$3;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewInCurrentPage(Z)V

    .line 229
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 212
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$3;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_b

    .line 222
    return-void

    .line 213
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$3;->val$hotseat:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$3;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 215
    if-eqz v0, :cond_23

    .line 216
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_23

    .line 218
    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setVisibility(I)V

    .line 212
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
