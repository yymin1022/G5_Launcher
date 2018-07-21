.class Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomescreenBlurManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getWorkspaceStateAnimationListener(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;I)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$android$launcher3$Workspace$State:[I


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

.field private final synthetic val$duration:I

.field private final synthetic val$toState:Lcom/android/launcher3/Workspace$State;


# direct methods
.method static synthetic $SWITCH_TABLE$com$android$launcher3$Workspace$State()[I
    .registers 3

    .prologue
    .line 204
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->$SWITCH_TABLE$com$android$launcher3$Workspace$State:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/android/launcher3/Workspace$State;->values()[Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->$SWITCH_TABLE$com$android$launcher3$Workspace$State:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method constructor <init>(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;Lcom/android/launcher3/Workspace$State;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    iput-object p2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->val$toState:Lcom/android/launcher3/Workspace$State;

    iput p3, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->val$duration:I

    .line 204
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 239
    :cond_10
    :goto_10
    return-void

    .line 213
    :cond_11
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->$SWITCH_TABLE$com$android$launcher3$Workspace$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->val$toState:Lcom/android/launcher3/Workspace$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    goto :goto_10

    .line 222
    :pswitch_21
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->access$2(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->access$2(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 223
    :goto_33
    if-eqz v0, :cond_10

    .line 227
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_54

    const/4 v0, 0x1

    .line 229
    :goto_3c
    if-nez v0, :cond_10

    .line 233
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->BOTTOM_ROOTVIEW:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->val$duration:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->hideBackground(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;I)V

    goto :goto_10

    .line 216
    :pswitch_48
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->BOTTOM_ROOTVIEW:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$1;->val$duration:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->showBackground(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;I)V

    goto :goto_10

    .line 222
    :cond_52
    const/4 v0, 0x0

    goto :goto_33

    .line 228
    :cond_54
    const/4 v0, 0x0

    goto :goto_3c

    .line 213
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method
