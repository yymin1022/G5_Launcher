.class Lcom/android/launcher3/util/StringFilter$1;
.super Lcom/android/launcher3/util/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/StringFilter;->matchesAll()Lcom/android/launcher3/util/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/StringFilter;-><init>(Lcom/android/launcher3/util/StringFilter;)V

    .line 1
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
