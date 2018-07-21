.class Lcom/lge/launcher3/util/LGHomeThemeFeature$1;
.super Ljava/lang/Object;
.source "LGHomeThemeFeature.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/util/LGHomeThemeFeature;->makeApkPath(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/util/LGHomeThemeFeature;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/util/LGHomeThemeFeature;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/util/LGHomeThemeFeature$1;->this$0:Lcom/lge/launcher3/util/LGHomeThemeFeature;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 89
    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
