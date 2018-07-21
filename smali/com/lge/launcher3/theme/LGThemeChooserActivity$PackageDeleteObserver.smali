.class public Lcom/lge/launcher3/theme/LGThemeChooserActivity$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "LGThemeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/LGThemeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V
    .registers 2

    .prologue
    .line 466
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PackageDeleteObserver;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 469
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PackageDeleteObserver;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$7(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PackageDeleteObserver;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$7(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    return-void
.end method
