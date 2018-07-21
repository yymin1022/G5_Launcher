.class public Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;
.super Ljava/lang/Object;
.source "LGThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/LGThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarInfo"
.end annotation


# instance fields
.field public bDrawText:Z

.field public mCalendarDrawable:Landroid/graphics/drawable/Drawable;

.field public mCalendarLargeDrawable:Landroid/graphics/drawable/Drawable;

.field public mIconDateTextColor:I

.field public mIconDateTextSize:I

.field public mIconDateTextXoffset:I

.field public mIconDateTextYoffset:I

.field public mIconDayTextColor:I

.field public mIconDayTextSize:I

.field public mIconDayTextXoffset:I

.field public mIconDayTextYoffset:I

.field public mIconFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeInfo;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/theme/LGThemeInfo;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->this$0:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
