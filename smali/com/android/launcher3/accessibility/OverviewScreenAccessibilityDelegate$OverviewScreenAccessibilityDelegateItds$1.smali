.class public Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate$OverviewScreenAccessibilityDelegateItds$1;
.super Ljava/lang/Object;
.source "OverviewScreenAccessibilityDelegateItds.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$interFieldInit$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate$OverviewScreenAccessibilityDelegateItds$1;->this$0:Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate$OverviewScreenAccessibilityDelegateItds$1;->this$0:Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Z)V

    .line 40
    return-void
.end method
