.class Lcom/android/launcher3/model/AppNameComparator$2;
.super Ljava/lang/Object;
.source "AppNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/model/AppNameComparator;-><init>(Landroid/content/Context;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/AppNameComparator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/AppNameComparator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AppNameComparator$2;->this$0:Lcom/android/launcher3/model/AppNameComparator;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/AppNameComparator$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/model/AppNameComparator$2;->this$0:Lcom/android/launcher3/model/AppNameComparator;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/AppNameComparator;->compareTitles(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
