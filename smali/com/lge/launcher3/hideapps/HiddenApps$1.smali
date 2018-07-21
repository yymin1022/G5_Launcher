.class Lcom/lge/launcher3/hideapps/HiddenApps$1;
.super Landroid/database/ContentObserver;
.source "HiddenApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/hideapps/HiddenApps;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/hideapps/HiddenApps;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/hideapps/HiddenApps;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/hideapps/HiddenApps$1;->this$0:Lcom/lge/launcher3/hideapps/HiddenApps;

    .line 37
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps$1;->this$0:Lcom/lge/launcher3/hideapps/HiddenApps;

    invoke-virtual {v0}, Lcom/lge/launcher3/hideapps/HiddenApps;->loadHiddenApps()V

    .line 43
    return-void
.end method
