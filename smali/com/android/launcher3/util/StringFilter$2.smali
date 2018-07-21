.class Lcom/android/launcher3/util/StringFilter$2;
.super Lcom/android/launcher3/util/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/StringFilter;->of(Ljava/util/Set;)Lcom/android/launcher3/util/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$validEntries:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/StringFilter$2;->val$validEntries:Ljava/util/Set;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/StringFilter;-><init>(Lcom/android/launcher3/util/StringFilter;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/launcher3/util/StringFilter$2;->val$validEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
