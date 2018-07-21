.class public Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;
.super Ljava/lang/Object;
.source "LauncherAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragInfo"
.end annotation


# instance fields
.field public dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

.field public info:Lcom/android/launcher3/ItemInfo;

.field public item:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
