.class public Lcom/lge/launcher3/receiver/PendingIntentObjectList$KillProcessHandler;
.super Ljava/lang/Object;
.source "PendingIntentObjectList.java"

# interfaces
.implements Lcom/lge/launcher3/receiver/IntentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/receiver/PendingIntentObjectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KillProcessHandler"
.end annotation


# static fields
.field public static final KILL_PROCESS_INTENT:Ljava/lang/String; = "com.lge.launcher3.intent.action.KILL_PROCESS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameOfIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "com.lge.launcher3.intent.action.KILL_PROCESS"

    return-object v0
.end method

.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-static {p1, v0}, Lcom/lge/launcher3/phoenix/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;Landroid/content/Intent;)V

    .line 160
    return-void
.end method
