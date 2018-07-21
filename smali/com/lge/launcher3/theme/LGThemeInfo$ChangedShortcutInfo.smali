.class Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;
.super Ljava/lang/Object;
.source "LGThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/LGThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangedShortcutInfo"
.end annotation


# instance fields
.field mComponentName:Ljava/lang/String;

.field mIndex:I

.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeInfo;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/theme/LGThemeInfo;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;->this$0:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;->mComponentName:Ljava/lang/String;

    .line 112
    iput p3, p0, Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;->mIndex:I

    .line 113
    return-void
.end method
