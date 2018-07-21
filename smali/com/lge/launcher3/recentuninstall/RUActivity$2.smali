.class Lcom/lge/launcher3/recentuninstall/RUActivity$2;
.super Ljava/lang/Object;
.source "RUActivity.java"

# interfaces
.implements Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/recentuninstall/RUActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/recentuninstall/RUActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$2;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$2;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->initLayoutComponent()V

    .line 92
    return-void
.end method
