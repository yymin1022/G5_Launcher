.class Lcom/android/launcher3/Launcher$PendingAddArguments;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingAddArguments"
.end annotation


# instance fields
.field appWidgetId:I

.field cellX:I

.field cellY:I

.field container:J

.field intent:Landroid/content/Intent;

.field requestCode:I

.field screenId:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
