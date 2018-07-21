.class Lcom/lge/launcher3/util/DefaultWorkspaceChecker$SprintId;
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
    name = "SprintId"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatching(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 96
    const-string v0, "ro.chameleon.mobileid"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
