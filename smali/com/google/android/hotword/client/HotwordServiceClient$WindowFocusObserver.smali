.class Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;
.super Landroid/view/WindowId$FocusObserver;
.source "HotwordServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/hotword/client/HotwordServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WindowFocusObserver"
.end annotation


# instance fields
.field private final mClientRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/hotword/client/HotwordServiceClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/hotword/client/HotwordServiceClient;)V
    .registers 3

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/view/WindowId$FocusObserver;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;->mClientRef:Ljava/lang/ref/WeakReference;

    .line 240
    return-void
.end method


# virtual methods
.method public onFocusGained(Landroid/view/WindowId;)V
    .registers 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;->mClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/hotword/client/HotwordServiceClient;

    .line 248
    if-eqz v0, :cond_e

    .line 249
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->onWindowFocusChanged(Z)V

    .line 251
    :cond_e
    return-void
.end method

.method public onFocusLost(Landroid/view/WindowId;)V
    .registers 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;->mClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/hotword/client/HotwordServiceClient;

    .line 259
    if-eqz v0, :cond_e

    .line 260
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->onWindowFocusChanged(Z)V

    .line 262
    :cond_e
    return-void
.end method
