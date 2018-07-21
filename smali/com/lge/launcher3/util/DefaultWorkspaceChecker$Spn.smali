.class Lcom/lge/launcher3/util/DefaultWorkspaceChecker$Spn;
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
    name = "Spn"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatching(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 62
    invoke-static {}, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
