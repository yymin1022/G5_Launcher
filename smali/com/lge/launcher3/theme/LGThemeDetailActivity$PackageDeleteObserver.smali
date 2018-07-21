.class Lcom/lge/launcher3/theme/LGThemeDetailActivity$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "LGThemeDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/LGThemeDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$PackageDeleteObserver;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 238
    return-void
.end method
