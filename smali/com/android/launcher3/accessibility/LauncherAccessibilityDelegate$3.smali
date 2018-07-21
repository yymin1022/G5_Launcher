.class Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;
.super Ljava/lang/Object;
.source "LauncherAccessibilityDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private final synthetic val$actions:Ljava/util/ArrayList;

.field private final synthetic val$host:Landroid/view/View;

.field private final synthetic val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Ljava/util/ArrayList;Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$actions:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$host:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$host:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 220
    return-void
.end method
