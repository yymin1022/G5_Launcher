.class Landroid/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;
.super Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatICSImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .prologue
    .line 140
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewParentCompatICS;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
