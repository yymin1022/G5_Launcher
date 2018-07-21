.class public Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;
.super Ljava/lang/Object;
.source "LGMDMPOPIMAPConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMPOPIMAPConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public POPIMAPSSLRequired:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public POPIMAPSecureType:I

.field public POPIMAPpassword:Ljava/lang/String;

.field public POPIMAPpasswordAuthentication:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public POPIMAPserverAddress:Ljava/lang/String;

.field public POPIMAPserverPort:Ljava/lang/String;

.field public POPIMAPuserName:Ljava/lang/String;

.field public SMTPPassword:Ljava/lang/String;

.field public SMTPSSLRequired:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public SMTPSecureType:I

.field public SMTPServerAddress:Ljava/lang/String;

.field public SMTPServerPort:Ljava/lang/String;

.field public SMTPpasswordAuthentication:Z

.field public SMTPuserName:Ljava/lang/String;

.field public accountType:I

.field public admin:Landroid/content/ComponentName;

.field public allowSMIMEEncryptionAlgorithmNegotiation:I

.field public allowSMIMESoftCerts:Z

.field public attachmentsEnabled:Z

.field public maxAttachmentSize:I

.field public maxMailsToShow:I

.field public name:Ljava/lang/String;

.field public requireEncryptedSMIMEMessages:Z

.field public requireEncryptionSMIMEAlgorithm:I

.field public requireSignedSMIMEMessages:Z

.field public retrieveInterval:I

.field public senderSignature:Ljava/lang/String;

.field public setAsDefault:I

.field public signedSMIMEAlgorithm:I

.field public userEmail:Ljava/lang/String;

.field public yourName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 367
    new-instance v0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPSecureType:I

    .line 145
    iput v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPSecureType:I

    .line 163
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPpasswordAuthentication:Z

    .line 169
    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxMailsToShow:I

    .line 201
    const/16 v0, 0xf

    iput v0, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->retrieveInterval:I

    .line 207
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->attachmentsEnabled:Z

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxAttachmentSize:I

    .line 250
    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->signedSMIMEAlgorithm:I

    .line 263
    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptionSMIMEAlgorithm:I

    .line 273
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptedSMIMEMessages:Z

    .line 283
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireSignedSMIMEMessages:Z

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    .line 304
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMESoftCerts:Z

    .line 383
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPSecureType:I

    .line 145
    iput v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPSecureType:I

    .line 163
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPpasswordAuthentication:Z

    .line 169
    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxMailsToShow:I

    .line 201
    const/16 v0, 0xf

    iput v0, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->retrieveInterval:I

    .line 207
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->attachmentsEnabled:Z

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxAttachmentSize:I

    .line 250
    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->signedSMIMEAlgorithm:I

    .line 263
    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptionSMIMEAlgorithm:I

    .line 273
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptedSMIMEMessages:Z

    .line 283
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireSignedSMIMEMessages:Z

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    .line 304
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMESoftCerts:Z

    .line 391
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 390
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->name:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->accountType:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->userEmail:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPserverAddress:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPserverPort:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPSecureType:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPuserName:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPpassword:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPServerAddress:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPServerPort:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPSecureType:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPuserName:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPPassword:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxMailsToShow:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->retrieveInterval:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxAttachmentSize:I

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->signedSMIMEAlgorithm:I

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptionSMIMEAlgorithm:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->senderSignature:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->yourName:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->setAsDefault:I

    .line 421
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->admin:Landroid/content/ComponentName;

    .line 422
    const/16 v1, 0x8

    new-array v0, v1, [Z

    .line 423
    .local v0, "booleanArray":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 425
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPSSLRequired:Z

    .line 426
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPpasswordAuthentication:Z

    .line 427
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPSSLRequired:Z

    .line 428
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPpasswordAuthentication:Z

    .line 429
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->attachmentsEnabled:Z

    .line 430
    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptedSMIMEMessages:Z

    .line 431
    const/4 v1, 0x6

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireSignedSMIMEMessages:Z

    .line 432
    const/4 v1, 0x7

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMESoftCerts:Z

    .line 398
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, "value":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "---------------------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string/jumbo v1, "name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    const-string/jumbo v1, "accountType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->accountType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    const-string/jumbo v1, "userEmail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->userEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    const-string/jumbo v1, "POPIMAPserverAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPserverAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v1, "POPIMAPserverPort : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPserverPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    const-string/jumbo v1, "POPIMAPSSLRequired : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPSSLRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    const-string/jumbo v1, "POPIMAPSecureType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPSecureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    const-string/jumbo v1, "POPIMAPuserName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPuserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    const-string/jumbo v1, "POPIMAPpasswordAuthentication : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPpasswordAuthentication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    const-string/jumbo v1, "SMTPServerAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    const-string/jumbo v1, "SMTPServerPort : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    const-string/jumbo v1, "SMTPSSLRequired : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPSSLRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    const-string/jumbo v1, "SMTPSecureType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPSecureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    const-string/jumbo v1, "SMTPuserName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPuserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v1, "SMTPpasswordAuthentication : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPpasswordAuthentication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    const-string/jumbo v1, "maxMailsToShow : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxMailsToShow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 499
    const-string/jumbo v1, "retrieveInterval : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->retrieveInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    const-string/jumbo v1, "attachmentsEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->attachmentsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    const-string/jumbo v1, "maxAttachmentSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxAttachmentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    const-string/jumbo v1, "senderSignature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->senderSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    const-string/jumbo v1, "yourName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->yourName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    const-string/jumbo v1, "setAsDefault : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->setAsDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    const-string/jumbo v1, "signedSMIMEAlgorithm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->signedSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v1, "requireEncryptionSMIMEAlgorithm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptionSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    const-string/jumbo v1, "requireEncryptedSMIMEMessages : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    const-string/jumbo v1, "requireSignedSMIMEMessages : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireSignedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    const-string/jumbo v1, "allowSMIMEEncryptionAlgorithmNegotiation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v1, "allowSMIMESoftCerts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMESoftCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    const-string/jumbo v1, "admin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->admin:Landroid/content/ComponentName;

    if-eqz v1, :cond_1b6

    .line 537
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->admin:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :goto_1a8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    const-string/jumbo v1, "---------------------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 539
    :cond_1b6
    const-string/jumbo v1, "admin is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->accountType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->userEmail:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPserverAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPserverPort:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPSecureType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPuserName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPpassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPServerPort:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPSecureType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPuserName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPPassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxMailsToShow:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->retrieveInterval:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->maxAttachmentSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->signedSMIMEAlgorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptionSMIMEAlgorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->senderSignature:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->yourName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->setAsDefault:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->admin:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 351
    const/16 v1, 0x8

    new-array v0, v1, [Z

    .line 352
    .local v0, "booleanArray":[Z
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPSSLRequired:Z

    aput-boolean v1, v0, v2

    .line 353
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->POPIMAPpasswordAuthentication:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    .line 354
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPSSLRequired:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    .line 355
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->SMTPpasswordAuthentication:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    .line 356
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->attachmentsEnabled:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    .line 357
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireEncryptedSMIMEMessages:Z

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    .line 358
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->requireSignedSMIMEMessages:Z

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    .line 359
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;->allowSMIMESoftCerts:Z

    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    .line 360
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 325
    return-void
.end method
