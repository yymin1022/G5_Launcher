.class public Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SBDBHelper.java"


# static fields
.field private static final CREATE_SMARTBULLETIN_NOTI_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS smartbulletin_noti (_id INTEGER PRIMARY KEY AUTOINCREMENT,time BIGINT,type TEXT,res TEXT,componentName TEXT)"

.field private static final CREATE_SMARTBULLETIN_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS smartbulletin (_id INTEGER PRIMARY KEY AUTOINCREMENT,componentName TEXT,positionX BIGINT,positionY BIGINT,spanX BIGINT,spanY BIGINT,appWidgetId BIGINT,isEnabled BIGINT)"

.field private static final DB_FILE_NAME:Ljava/lang/String; = "smart_bulletin.db"

.field private static final DB_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;->sContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 42
    const-string v0, "smart_bulletin.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    sput-object p1, Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;->sContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private sendResetNotify()V
    .registers 4

    .prologue
    .line 58
    sget-object v0, Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    const-string v0, "CREATE TABLE IF NOT EXISTS smartbulletin (_id INTEGER PRIMARY KEY AUTOINCREMENT,componentName TEXT,positionX BIGINT,positionY BIGINT,spanX BIGINT,spanY BIGINT,appWidgetId BIGINT,isEnabled BIGINT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v0, "CREATE TABLE IF NOT EXISTS smartbulletin_noti (_id INTEGER PRIMARY KEY AUTOINCREMENT,time BIGINT,type TEXT,res TEXT,componentName TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 52
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 53
    sget-object v0, Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate done"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;->sendResetNotify()V

    .line 55
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .prologue
    const/4 v0, 0x2

    .line 64
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpgrade: newVersion = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-ge p2, v0, :cond_30

    .line 68
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 69
    const-string v1, "CREATE TABLE IF NOT EXISTS smartbulletin_noti (_id INTEGER PRIMARY KEY AUTOINCREMENT,time BIGINT,type TEXT,res TEXT,componentName TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 71
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move p2, v0

    .line 75
    :cond_30
    if-eq p2, v0, :cond_48

    .line 76
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 77
    const-string v0, "DROP TABLE IF EXISTS smartbulletin"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "DROP TABLE IF EXISTS smartbulletin_noti"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 80
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/provider/SBDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    :cond_48
    return-void
.end method
