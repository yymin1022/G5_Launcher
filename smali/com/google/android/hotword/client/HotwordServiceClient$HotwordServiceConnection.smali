.class Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;
.super Ljava/lang/Object;
.source "HotwordServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/hotword/client/HotwordServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HotwordServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/hotword/client/HotwordServiceClient;


# direct methods
.method constructor <init>(Lcom/google/android/hotword/client/HotwordServiceClient;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-static {p2}, Lcom/google/android/hotword/service/IHotwordService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/hotword/service/IHotwordService;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

    .line 282
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalRequestHotword()V

    .line 283
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    .line 273
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

    .line 274
    return-void
.end method
