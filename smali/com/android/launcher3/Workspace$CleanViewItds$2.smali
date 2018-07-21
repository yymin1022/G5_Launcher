.class public Lcom/android/launcher3/Workspace$CleanViewItds$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CleanViewItds.aj"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateIntoCleanView(Lcom/android/launcher3/Workspace;Z)V
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
    iput-object p1, p0, Lcom/android/launcher3/Workspace$CleanViewItds$2;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$CleanViewItds$2;->val$hotseat:Landroid/view/View;

    .line 125
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$2;->val$hotseat:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$2;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_12

    .line 146
    return-void

    .line 137
    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$2;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 139
    if-eqz v0, :cond_25

    .line 140
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_25

    .line 142
    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setVisibility(I)V

    .line 136
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$2;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewInCurrentPage(Z)V

    .line 131
    return-void
.end method
