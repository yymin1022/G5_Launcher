.class Lcom/lge/launcher3/folderplus/FolderPlusAdapter$2;
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)I
    .registers 5

    .prologue
    .line 66
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 67
    const/4 v0, 0x0

    .line 74
    :goto_5
    return v0

    .line 68
    :cond_6
    if-nez p1, :cond_a

    .line 69
    const/4 v0, -0x1

    goto :goto_5

    .line 70
    :cond_a
    if-nez p2, :cond_e

    .line 71
    const/4 v0, 0x1

    goto :goto_5

    .line 74
    :cond_e
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->rank:I

    sub-int/2addr v0, v1

    goto :goto_5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter$2;->compare(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)I

    move-result v0

    return v0
.end method
