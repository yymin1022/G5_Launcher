.class Lcom/android/launcher3/LauncherProvider$DatabaseHelper$1;
.super Ljava/lang/Object;
.source "LauncherProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper$1;->this$1:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper$1;->this$1:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v0, :cond_d

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper$1;->this$1:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherProviderChangeListener;->onAppWidgetHostReset()V

    .line 550
    :cond_d
    return-void
.end method
