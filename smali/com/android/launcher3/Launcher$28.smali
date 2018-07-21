.class Lcom/android/launcher3/Launcher$28;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindFolders(Lcom/android/launcher3/util/LongArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$folders:Lcom/android/launcher3/util/LongArrayMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/LongArrayMap;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$28;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$28;->val$folders:Lcom/android/launcher3/util/LongArrayMap;

    .line 4070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4072
    iget-object v0, p0, Lcom/android/launcher3/Launcher$28;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$28;->val$folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->bindFolders(Lcom/android/launcher3/util/LongArrayMap;)V

    .line 4073
    return-void
.end method
