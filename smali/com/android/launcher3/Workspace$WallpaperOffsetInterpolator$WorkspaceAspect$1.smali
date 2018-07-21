.class public Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator$WorkspaceAspect$1;
.super Ljava/lang/Object;
.source "WorkspaceAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->ajc$interMethod$com_lge_launcher3_nativejoin_WorkspaceAspect$com_android_launcher3_Workspace$WallpaperOffsetInterpolator$syncWithScrollToExcutor(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

.field private final synthetic val$t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator$WorkspaceAspect$1;->this$1:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator$WorkspaceAspect$1;->val$t:Ljava/lang/Object;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator$WorkspaceAspect$1;->this$1:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-static {v0}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->access$0(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;)F

    move-result v1

    .line 77
    :try_start_6
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator$WorkspaceAspect$1;->val$t:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "this$0"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator$WorkspaceAspect$1;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 78
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_26

    .line 82
    :goto_1f
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator$WorkspaceAspect$1;->this$1:Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;->access$1(Lcom/android/launcher3/Workspace$WallpaperOffsetInterpolator;Z)V

    .line 83
    return-void

    :catch_26
    move-exception v0

    goto :goto_1f
.end method
