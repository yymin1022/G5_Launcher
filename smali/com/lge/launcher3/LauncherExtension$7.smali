.class Lcom/lge/launcher3/LauncherExtension$7;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/LauncherExtension;->applyMDMPolicy(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/LauncherExtension;

.field private final synthetic val$action:Ljava/lang/String;

.field private final synthetic val$packageList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/LauncherExtension;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$7;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iput-object p2, p0, Lcom/lge/launcher3/LauncherExtension$7;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/launcher3/LauncherExtension$7;->val$packageList:[Ljava/lang/String;

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$7;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$7;->val$action:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/launcher3/LauncherExtension$7;->val$packageList:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/LauncherExtension;->access$0(Lcom/lge/launcher3/LauncherExtension;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1132
    return-void
.end method
