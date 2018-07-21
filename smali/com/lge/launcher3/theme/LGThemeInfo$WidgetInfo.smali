.class Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;
.super Ljava/lang/Object;
.source "LGThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/LGThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetInfo"
.end annotation


# instance fields
.field mWidgetImage:Ljava/lang/String;

.field mWidgetName:Ljava/lang/String;

.field mWidgetPreview:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeInfo;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/theme/LGThemeInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->this$0:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetName:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetImage:Ljava/lang/String;

    .line 103
    return-void
.end method
