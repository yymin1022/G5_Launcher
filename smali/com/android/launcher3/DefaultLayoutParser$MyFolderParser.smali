.class Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;
.super Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFolderParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .registers 2

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v0, "folderItems"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    .line 274
    if-eqz v0, :cond_16

    .line 275
    iget-object v1, p0, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v1, v1, Lcom/android/launcher3/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 276
    const-string v0, "folder"

    invoke-static {p1, v0}, Lcom/android/launcher3/DefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 278
    :cond_16
    invoke-super {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    return-wide v0
.end method
