.class Lcom/android/launcher3/Workspace$17;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$17;->this$0:Lcom/android/launcher3/Workspace;

    iput p2, p0, Lcom/android/launcher3/Workspace$17;->val$appWidgetId:I

    .line 4447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .prologue
    .line 4451
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_e

    .line 4452
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    iget v1, p0, Lcom/android/launcher3/Workspace$17;->val$appWidgetId:I

    if-ne v0, v1, :cond_e

    .line 4451
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
