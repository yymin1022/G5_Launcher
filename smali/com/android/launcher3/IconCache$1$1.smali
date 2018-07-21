.class Lcom/android/launcher3/IconCache$1$1;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/IconCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/IconCache$1;

.field private final synthetic val$caller:Lcom/android/launcher3/BubbleTextView;

.field private final synthetic val$info:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/IconCache$1;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/ItemInfo;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/IconCache$1$1;->this$1:Lcom/android/launcher3/IconCache$1;

    iput-object p2, p0, Lcom/android/launcher3/IconCache$1$1;->val$caller:Lcom/android/launcher3/BubbleTextView;

    iput-object p3, p0, Lcom/android/launcher3/IconCache$1$1;->val$info:Lcom/android/launcher3/ItemInfo;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1$1;->val$caller:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, p0, Lcom/android/launcher3/IconCache$1$1;->val$info:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->reapplyItemInfo(Lcom/android/launcher3/ItemInfo;)V

    .line 464
    return-void
.end method
