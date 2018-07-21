.class Lcom/android/launcher3/LauncherAppWidgetHost$1;
.super Lcom/android/launcher3/LauncherAppWidgetHostView;
.source "LauncherAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppWidgetHost;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppWidgetHost;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost$1;->this$0:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 55
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getErrorView()Landroid/view/View;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHost$1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
