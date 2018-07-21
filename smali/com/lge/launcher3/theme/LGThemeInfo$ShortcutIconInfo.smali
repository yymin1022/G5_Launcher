.class Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;
.super Ljava/lang/Object;
.source "LGThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/LGThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShortcutIconInfo"
.end annotation


# instance fields
.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIndex:I

.field mShortcutImage:Ljava/lang/String;

.field mShortcutName:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeInfo;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/theme/LGThemeInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->this$0:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIndex:I

    .line 90
    iput-object p2, p0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mShortcutName:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mShortcutImage:Ljava/lang/String;

    .line 92
    return-void
.end method
