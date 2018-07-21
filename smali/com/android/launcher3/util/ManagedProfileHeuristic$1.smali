.class Lcom/android/launcher3/util/ManagedProfileHeuristic$1;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/ManagedProfileHeuristic;->finalizeWorkFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$1;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)I
    .registers 7

    .prologue
    .line 159
    iget-wide v0, p1, Lcom/android/launcher3/ShortcutInfo;->firstInstallTime:J

    iget-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->firstInstallTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/ManagedProfileHeuristic$1;->compare(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)I

    move-result v0

    return v0
.end method
