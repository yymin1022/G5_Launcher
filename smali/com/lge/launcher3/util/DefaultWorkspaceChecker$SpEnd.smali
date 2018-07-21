.class Lcom/lge/launcher3/util/DefaultWorkspaceChecker$SpEnd;
.super Ljava/lang/Object;
.source "DefaultWorkspaceChecker.java"

# interfaces
.implements Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/util/DefaultWorkspaceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpEnd"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatching(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 84
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 85
    invoke-static {}, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->access$3()I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_c} :catch_11

    move-result v2

    if-ge v2, v1, :cond_10

    const/4 v0, 0x1

    .line 87
    :cond_10
    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method
