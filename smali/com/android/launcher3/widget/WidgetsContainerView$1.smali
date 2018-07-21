.class Lcom/android/launcher3/widget/WidgetsContainerView$1;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "WidgetsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetsContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetsContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetsContainerView;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsContainerView$1;->this$0:Lcom/android/launcher3/widget/WidgetsContainerView;

    .line 106
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView$1;->this$0:Lcom/android/launcher3/widget/WidgetsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 110
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 111
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    mul-int/lit8 v0, v0, 0x1

    .line 110
    add-int/2addr v0, v1

    return v0
.end method
