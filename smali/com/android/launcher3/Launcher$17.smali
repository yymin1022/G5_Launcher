.class Lcom/android/launcher3/Launcher$17;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->onClickPendingWidget(Lcom/android/launcher3/PendingAppWidgetHostView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;

.field private final synthetic val$packageName:Ljava/lang/String;

.field private final synthetic val$v:Lcom/android/launcher3/PendingAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/PendingAppWidgetHostView;Ljava/lang/String;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$17;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$17;->val$v:Lcom/android/launcher3/PendingAppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$17;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$17;->val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/android/launcher3/Launcher$17;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$17;->val$v:Lcom/android/launcher3/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$17;->val$packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/Launcher$17;->val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2619
    return-void
.end method
