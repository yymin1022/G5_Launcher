.class Lcom/lge/launcher3/util/LGSoundManager$1;
.super Ljava/lang/Object;
.source "LGSoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/util/LGSoundManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/util/LGSoundManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/util/LGSoundManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/util/LGSoundManager$1;->this$0:Lcom/lge/launcher3/util/LGSoundManager;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/util/LGSoundManager$1;->this$0:Lcom/lge/launcher3/util/LGSoundManager;

    invoke-static {v0, p2}, Lcom/lge/launcher3/util/LGSoundManager;->access$0(Lcom/lge/launcher3/util/LGSoundManager;I)V

    .line 69
    return-void
.end method
