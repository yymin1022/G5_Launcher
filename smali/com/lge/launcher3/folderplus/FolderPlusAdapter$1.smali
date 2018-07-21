.class Lcom/lge/launcher3/folderplus/FolderPlusAdapter$1;
.super Ljava/lang/Object;
.source "FolderPlusAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/folderplus/FolderPlusAdapter;
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


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)I
    .registers 5

    .prologue
    .line 49
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 50
    iget-object v1, p2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 51
    if-nez v0, :cond_a

    if-nez v1, :cond_a

    .line 52
    const/4 v0, 0x0

    .line 59
    :goto_9
    return v0

    .line 53
    :cond_a
    if-nez v0, :cond_e

    .line 54
    const/4 v0, -0x1

    goto :goto_9

    .line 55
    :cond_e
    if-nez v1, :cond_12

    .line 56
    const/4 v0, 0x1

    goto :goto_9

    .line 59
    :cond_12
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/AppNameComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter$1;->compare(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)I

    move-result v0

    return v0
.end method
