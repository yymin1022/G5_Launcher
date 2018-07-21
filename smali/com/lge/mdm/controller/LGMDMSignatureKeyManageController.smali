.class public Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;
.super Ljava/lang/Object;
.source "LGMDMSignatureKeyManageController.java"


# static fields
.field private static final AIRWATCH_CLIENT_PACKAGE:Ljava/lang/String; = "com.airwatch.admin.lg"

.field private static final AIRWATCH_CLIENT_SIGNATURE:Ljava/lang/String; = "30820251308201baa00302010202044b6207a5300d06092a864886f70d0101050500306d3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3111300f060355040a130841697257617463683110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e301e170d3130303132383231353434355a170d3337303631353231353434355a306d3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3111300f060355040a130841697257617463683110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e30819f300d06092a864886f70d010101050003818d00308189028181009be9d5f25c5cedaaefb4509ae1850e497a326890ac67b462de27f2224f12735d832a7b5dec94ef1b8796d2bce3827c74d349a90e79a2391358c1020b34fb9bf4b3dd1518a06400793ef39fd7a5fb896ab7fcabaeb0eda20073916d075d9260e34b2dd0895d2568a0ec26598f1b2f5e8e5851fe4479bf8037f58705d7e1d10c8d0203010001300d06092a864886f70d01010505000381810057a22facfcebd67c25526f74d18e2c2d391a7a3381c7816f174bf6000826f5b98d9fc9f704584222628e18971b79a10e5ba15e49dca9a4f4200f208c5ca8611a2c28bdd2e8537a713fa8e1775fc178d6346cdf27cf2388e775d90694382f16021c4e30faf98d8620ef67f5f9ada370dbbd09ac21b035ade0712349c708eedfcc"

.field private static final LG_MDM_SIGN_1:Ljava/lang/String; = "308202bb308201a3a0030201020204084f2528300d06092a864886f70d01010b0500300e310c300a060355040313034d444d301e170d3132313031353035323331385a170d3432313030383035323331385a300e310c300a060355040313034d444d30820122300d06092a864886f70d01010105000382010f003082010a02820101009942811360299ceddc7eafab1be65fd8fe205cab95682429d903a008c458992537b0b98a830c85fe2440c147b1ce31a69e78f2583da3918fd261fbe8a5e2dd8158b0fc0e064b9a076dd97d1514b062b082f06a9cfdfeda1551f864ea6e254cc547e47b8a28825468275e2e8d5e77a54c92277326e79e4b675d7766973bb126e6057b5947c0e793978098053f8c4d0c9fc6cef0747c89462e3bc996d936709343692789a9af0889a9d862b4d95b7ab0c0f44aa803e2139f432fc669d6eba281bb6ebb232d9a7b30eba6b0485ab1240c441733f27cce0f55c1ea30c2edfaadf46b512b7530c4730810753124af6dd05c8a0f6d38839e98f1cc13d309f1a41eed270203010001a321301f301d0603551d0e0416041467fcef11ccbf95622c610f97dca96f0a240b01df300d06092a864886f70d01010b050003820101004195e850dd6d7386b195c278f3858295c643e8f5e2435d5574c2ccebb1f756cacc022f9e54e8ab712332bcbda04dc2b4958b84a2f35ab439d5609b0abf2ce2382add0ac0d0d3cee5baf887a37cd7353cc2e1a8f1b37eaa7d7db1c9de574b4fcbc83056b4ac00df6d03acfce77ae7d4a808da7e3ef6c434c5048d680737765e3e432d85473a51e14ebc888b8fa21eae8cbc7ff54cd6aa3aaacdabda1131ae64b11b322793268aa764eae359b6f98177355247ddcfa857282baed67b8a2fe56fa8dc2238b9af8a832e60d27967f32e2937bed7b077aa48885e27b40fe93596ce43fe4706a09f709950b2d79d99ee16a37825e78c51fd2cba5fccf93d1097c7d137"

.field private static final LG_MDM_SIGN_2:Ljava/lang/String; = "308202bb308201a3a003020102020476ff5de3300d06092a864886f70d01010b0500300e310c300a060355040313034d444d301e170d3132313031353035323534395a170d3432313030383035323534395a300e310c300a060355040313034d444d30820122300d06092a864886f70d01010105000382010f003082010a02820101009ab56bd85652aa9080d41cca3125f3c183eee0aff0b94c4f237f154beccfd86e82c4ca9024454d2c8068fd4f47a765670c5026c8c1898666e26a22b78f811eb0905a6291c51565891680abceac2fadce911d63ef3713fd17eb86cd868e298e8d381eac9b464bf4cec76f0e0ffc40f8945f962c15beea881721c5ecb6b97a517fdd5f5262e6e8c9217cdce5a373496d4e7d1b5ef1c98245da29ef01dd135528f763c0e10711e6301503e92376af330880c0e4f4c7e1f52af70bcc58a0507d96e03af68220d9fc5656dc661d7e0182b7ef25d73a38f67ff95cb1dfeeeb4031649196ee4899aa0b896c68c80b8fa7471ec8f3f0555b9b6b2572400a3b136ebc242d0203010001a321301f301d0603551d0e04160414ff44aafc9a8d1e5488f36cfa3ca816665c4d3a61300d06092a864886f70d01010b050003820101003c249cc7f4ad4feda21f779fc603c9fb693d799f659722539f8aa397da2992346bc9ef002663eba9522031df5f5d784c2e9119d4ca76a59fa00a96ef657bad19ff8e21c04979b79129c2b1d893aa8aa2068cc0c1b3a621d53ffb051773b346da43de075c32f7cca6af9d8d8ef18f534a0b8619d6eae0154e2ed3d401fd9885aa1c842827e7d24eef8291a06951fd86d9dc4cf2559a8c767b6a1d8599c517d02a69ebb97ea1f04dc02918b2ea37775c1194928be66a0a1dede5e9f89d07c4f9732fb767a73b5d557d1a88073b552b7d6cb7358adbd9c807ecdedcb8d125e8f612afd3e3cff4030a681bad8ad990cb1ff8cc8b322e50ffb94b0bddb2718f1f76cc"

.field private static final LG_MDM_SIGN_3:Ljava/lang/String; = "308202bb308201a3a00302010202040389fb45300d06092a864886f70d01010b0500300e310c300a060355040313034d444d301e170d3132313031353035323735325a170d3432313030383035323735325a300e310c300a060355040313034d444d30820122300d06092a864886f70d01010105000382010f003082010a0282010100910a27b499561878c1264b7c8765a3dc47e14f1b586d0b080e073282428613481d0df44e3126aea7cbc4236c43c0cd685b2a2a1455d6b36614c1351f26ebce40234a5cc144c2bb08524d04815afa9f19f053a7ed97363f855dbbf377399e4fd2bf416e222d67b6fa2578b9081710df326e3cc12fa3477d26cb05fbbc4570ef5d40253cf61b89f78a9272e1b6b053b299de5357af8ee3644d1cb2ef79bae4539341b9eb62298a614c306550983c8d727404edbe787d88a9c60c982e430358d03ab41c34fec95b553a41af8ac4a19f57d9e781150314f64387706144fe006afe0172c158e542ad6bb8f9edf106df4988069e9704d078bf90306e7cad3fd2f91c0b0203010001a321301f301d0603551d0e04160414765e22ef9ff0e34ed628ac03ef04bb10a0e62a86300d06092a864886f70d01010b050003820101008c558efc3404c2982b01b7af192e9038994bc5adede732c53fc59d5889c8749d3b82fa401392dbaa5c9f3e2d75c4f8519f454e52670efb95d647e675b367652b8790c30c04dd891da6be0cb0473ff5f2a02b9f76060a2a33be8880b60eecb3fe3bc2b59e5c930563a0ed59533eeef4c5edbf43e0dca01656b61940f79c288493bb1eec6880e21d69f2a2c3e33391068e9efddfe64cbb1575f764328a459cf2e932622ab09983f0678066fc7860d65a610db4402d60d215e4888f430121faaada9e9386a9e1dafb980400169e198815395aac989991dbc4b9203494be0ec2132182303ea23215dc7a3d51abb78bb9475e8048bfe00a7f243516fd53f238344c10"

.field private static final MOBILE_ON_CLIENT_PACKAGE:Ljava/lang/String; = "com.lgcns.mdm"

.field private static final MOBILE_ON_CLIENT_SIGNATURE:Ljava/lang/String; = "308202333082019ca00302010202044cf76cfe300d06092a864886f70d0101050500305d310b3009060355040613024b52310e300c0603550408130553656f756c310e300c0603550407130553656f756c310e300c060355040a13054c47434e53310e300c060355040b13054c47434e53310e300c060355040313054c47434e533020170d3130313230323039353531305a180f33303130303430343039353531305a305d310b3009060355040613024b52310e300c0603550408130553656f756c310e300c0603550407130553656f756c310e300c060355040a13054c47434e53310e300c060355040b13054c47434e53310e300c060355040313054c47434e5330819f300d06092a864886f70d010101050003818d0030818902818100cd60201838450175bae89824ed097e9941e757fa2431946fa4cbc853418f613253c03476aa9b2d965be0289da3f324b452a79ceeb04a6d576e6aa4b6cffa891dbca210dbc9350bc03bc10b196074bee3b5fe3dc401817f0428b59296b3a0e28bfa3966d2678a6e1325c2270348fb2068b2eeb67a07f822d814bdf790f69236e10203010001300d06092a864886f70d0101050500038181001da70053668d728d2c9f154136b8c4472ea61aa92e6021ebc6dc6ae6c180c68588e703ddb3676b9dd6a50e3e5fc3fc31fbf93d7956cabe3ac9e9515239507efae38f0c522f8c875493638566b81059cd9c73b0ecdda50a8620ba5dc495593e31eae0c0c41bbef78a16a31a8c193ccb3d207cb350a70e0a005215a8d3dde4c16c"

.field private static final SAP_CLIENT_PACKAGE:Ljava/lang/String; = "com.Android.Afaria"

.field private static final SAP_CLIENT_SIGNATURE:Ljava/lang/String; = "3082033f3082022702044ca9e256300d06092a864886f70d01010405003064310b30090603550406130255533110300e0603550408130747656f72676961311330110603550407130a416c7068617265747461310c300a060355040a1303534150310f300d060355040b1306537962617365310f300d06035504031306416661726961301e170d3130313030343134313930325a170d3338303231393134313930325a3064310b30090603550406130255533110300e0603550408130747656f72676961311330110603550407130a416c7068617265747461310c300a060355040a1303534150310f300d060355040b1306537962617365310f300d0603550403130641666172696130820122300d06092a864886f70d01010105000382010f003082010a0282010100805241a5a2fdde0539a5deaf0baa6235c49dcc2c117bb225ceba211c4f711a4e489ce6a38ee28e24eaf85930727aaa01d7aabffca1fcfc128d32128841034823a348cd5e0b6261124105092f9ffc5199e58fab5befa1781dae5e0dff5cc2c6435c67ac970fb94c4b1042a47508365bd71a582bf118597a16ae7f3528178687c2de76303a55cbeed8de349ac92fa730cc313f89be1cf55a9f6b01e6903c656cb18863e24e298541cdccc46932dccd2c4bd4957366bf58c6a95f8eab9d3a89bc73f00b35239e6687dc20db4410a8a0f42db82f01bc75ecee7fe486df50c19a0374f399e8922b38fee8953f8e86d29bae0d0517b54182cb955311ccb4794c6a69770203010001300d06092a864886f70d0101040500038201010056758310c82fc4e074ca4c546eea9c355b42b6cbe598a8ea8fab1a0f5b09a1349598f584b7bc370ee7051cd5d72213ec0ef4d475aa51d3e094b24908a57334172af8009350710c5ac723099249f154c8cc952d6b79137604442711f1de3f52549e7172397938810601d9ecbdd8cd7f940fa7855f858b97b98383797c8db0680e19c2afcc4408e0c111d8535b68c0997b2c87a11a1ea813f886c8cb4ac4b6f6b579b112d7500c052cdd91d1d6d7f8f2a2aea4b074b3815d4f2271c712a8aa63c718e1cc04aad791c47134968933f90d46840926bbbed5f8e5673ddb0c2f282aaf17b9b768684ecb1a5083436ee3f27eb61b82f6a554d06df5f74f90a129641961"

.field private static final SAP_CLIENT_SIGNATURE2:Ljava/lang/String; = "308202f8308202b602044bf68bd8300b06072a8648ce38040305003062310b3009060355040613027573310b3009060355040813026761311330110603550407130a616c7068617265747461310f300d060355040a1306737962617365310f300d060355040b1306737962617365310f300d06035504031306737962617365301e170d3130303532313133333431365a170d3130303831393133333431365a3062310b3009060355040613027573310b3009060355040813026761311330110603550407130a616c7068617265747461310f300d060355040a1306737962617365310f300d060355040b1306737962617365310f300d06035504031306737962617365308201b73082012c06072a8648ce3804013082011f02818100fd7f53811d75122952df4a9c2eece4e7f611b7523cef4400c31e3f80b6512669455d402251fb593d8d58fabfc5f5ba30f6cb9b556cd7813b801d346ff26660b76b9950a5a49f9fe8047b1022c24fbba9d7feb7c61bf83b57e7c6a8a6150f04fb83f6d3c51ec3023554135a169132f675f3ae2b61d72aeff22203199dd14801c70215009760508f15230bccb292b982a2eb840bf0581cf502818100f7e1a085d69b3ddecbbcab5c36b857b97994afbbfa3aea82f9574c0b3d0782675159578ebad4594fe67107108180b449167123e84c281613b7cf09328cc8a6e13c167a8b547c8d28e0a3ae1e2bb3a675916ea37f0bfa213562f1fb627a01243bcca4f1bea8519089a883dfe15ae59f06928b665e807b552564014c3bfecf492a03818400028180794226a2fd34baa24aeb36d0ce29aade73a7dd267a11ecf27b21a6c7ae04bdb225be17e9bb46bc8ecbdb6ff802efcf5b64e6c748eb6610271b838f05a11ab983ca5de874561b0e6d5dcfa31001a27a100a780c63ea7242d4cc54d6eeb76b3159e2e4521660f1226b520b96e51905a2bc334d404fdfe5bbe2bb2be3f2e9e8bd00300b06072a8648ce3804030500032f00302c02140a3db76fd553f1f04c2d9f317c2d3b652594cc9402141c8b2bac8e2a7c1ed8491347ad0289871691252c"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "SignatureManageController"

.field private static mInstance:Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;


# instance fields
.field mContext:Landroid/content/Context;

.field private mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

.field signatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/lge/mdm/admin/LGMDMadministrator;->getInstance()Lcom/lge/mdm/admin/LGMDMadministrator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    .line 49
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->mLGMDMadministrator:Lcom/lge/mdm/admin/LGMDMadministrator;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMadministrator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->mInstance:Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->mInstance:Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;

    .line 57
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->mInstance:Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;

    return-object v0
.end method

.method private getPlatformSignatureKey()[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    .local v3, "platformSignatureKey":[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 81
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    if-nez v4, :cond_9

    .line 83
    return-object v6

    .line 86
    :cond_9
    :try_start_9
    const-string/jumbo v6, "com.android.settings"

    const/16 v7, 0x40

    .line 87
    const/4 v8, 0x0

    .line 86
    invoke-interface {v4, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 88
    .local v5, "sigs":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_52

    array-length v6, v5

    if-lez v6, :cond_52

    .line 89
    array-length v6, v5

    new-array v3, v6, [Ljava/lang/String;

    .line 90
    .local v3, "platformSignatureKey":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    array-length v6, v5

    if-ge v2, v6, :cond_52

    .line 91
    aget-object v0, v5, v2

    .line 92
    .local v0, "apkSig":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 93
    const-string/jumbo v6, "SignatureManageController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.android.settings: sig: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_45} :catch_48

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 96
    .end local v0    # "apkSig":Landroid/content/pm/Signature;
    .end local v2    # "i":I
    .end local v3    # "platformSignatureKey":[Ljava/lang/String;
    .end local v5    # "sigs":[Landroid/content/pm/Signature;
    :catch_48
    move-exception v1

    .line 97
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "SignatureManageController"

    const-string/jumbo v7, "[getPlatformSignatureKey]"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_52
    return-object v3
.end method


# virtual methods
.method public initializeSignaureData()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    const-string/jumbo v4, "30820251308201baa00302010202044b6207a5300d06092a864886f70d0101050500306d3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3111300f060355040a130841697257617463683110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e301e170d3130303132383231353434355a170d3337303631353231353434355a306d3110300e06035504061307556e6b6e6f776e3110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3111300f060355040a130841697257617463683110300e060355040b1307556e6b6e6f776e3110300e06035504031307556e6b6e6f776e30819f300d06092a864886f70d010101050003818d00308189028181009be9d5f25c5cedaaefb4509ae1850e497a326890ac67b462de27f2224f12735d832a7b5dec94ef1b8796d2bce3827c74d349a90e79a2391358c1020b34fb9bf4b3dd1518a06400793ef39fd7a5fb896ab7fcabaeb0eda20073916d075d9260e34b2dd0895d2568a0ec26598f1b2f5e8e5851fe4479bf8037f58705d7e1d10c8d0203010001300d06092a864886f70d01010505000381810057a22facfcebd67c25526f74d18e2c2d391a7a3381c7816f174bf6000826f5b98d9fc9f704584222628e18971b79a10e5ba15e49dca9a4f4200f208c5ca8611a2c28bdd2e8537a713fa8e1775fc178d6346cdf27cf2388e775d90694382f16021c4e30faf98d8620ef67f5f9ada370dbbd09ac21b035ade0712349c708eedfcc"

    const-string/jumbo v5, "com.airwatch.admin.lg"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    const-string/jumbo v4, "3082033f3082022702044ca9e256300d06092a864886f70d01010405003064310b30090603550406130255533110300e0603550408130747656f72676961311330110603550407130a416c7068617265747461310c300a060355040a1303534150310f300d060355040b1306537962617365310f300d06035504031306416661726961301e170d3130313030343134313930325a170d3338303231393134313930325a3064310b30090603550406130255533110300e0603550408130747656f72676961311330110603550407130a416c7068617265747461310c300a060355040a1303534150310f300d060355040b1306537962617365310f300d0603550403130641666172696130820122300d06092a864886f70d01010105000382010f003082010a0282010100805241a5a2fdde0539a5deaf0baa6235c49dcc2c117bb225ceba211c4f711a4e489ce6a38ee28e24eaf85930727aaa01d7aabffca1fcfc128d32128841034823a348cd5e0b6261124105092f9ffc5199e58fab5befa1781dae5e0dff5cc2c6435c67ac970fb94c4b1042a47508365bd71a582bf118597a16ae7f3528178687c2de76303a55cbeed8de349ac92fa730cc313f89be1cf55a9f6b01e6903c656cb18863e24e298541cdccc46932dccd2c4bd4957366bf58c6a95f8eab9d3a89bc73f00b35239e6687dc20db4410a8a0f42db82f01bc75ecee7fe486df50c19a0374f399e8922b38fee8953f8e86d29bae0d0517b54182cb955311ccb4794c6a69770203010001300d06092a864886f70d0101040500038201010056758310c82fc4e074ca4c546eea9c355b42b6cbe598a8ea8fab1a0f5b09a1349598f584b7bc370ee7051cd5d72213ec0ef4d475aa51d3e094b24908a57334172af8009350710c5ac723099249f154c8cc952d6b79137604442711f1de3f52549e7172397938810601d9ecbdd8cd7f940fa7855f858b97b98383797c8db0680e19c2afcc4408e0c111d8535b68c0997b2c87a11a1ea813f886c8cb4ac4b6f6b579b112d7500c052cdd91d1d6d7f8f2a2aea4b074b3815d4f2271c712a8aa63c718e1cc04aad791c47134968933f90d46840926bbbed5f8e5673ddb0c2f282aaf17b9b768684ecb1a5083436ee3f27eb61b82f6a554d06df5f74f90a129641961"

    const-string/jumbo v5, "com.Android.Afaria"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    const-string/jumbo v4, "308202f8308202b602044bf68bd8300b06072a8648ce38040305003062310b3009060355040613027573310b3009060355040813026761311330110603550407130a616c7068617265747461310f300d060355040a1306737962617365310f300d060355040b1306737962617365310f300d06035504031306737962617365301e170d3130303532313133333431365a170d3130303831393133333431365a3062310b3009060355040613027573310b3009060355040813026761311330110603550407130a616c7068617265747461310f300d060355040a1306737962617365310f300d060355040b1306737962617365310f300d06035504031306737962617365308201b73082012c06072a8648ce3804013082011f02818100fd7f53811d75122952df4a9c2eece4e7f611b7523cef4400c31e3f80b6512669455d402251fb593d8d58fabfc5f5ba30f6cb9b556cd7813b801d346ff26660b76b9950a5a49f9fe8047b1022c24fbba9d7feb7c61bf83b57e7c6a8a6150f04fb83f6d3c51ec3023554135a169132f675f3ae2b61d72aeff22203199dd14801c70215009760508f15230bccb292b982a2eb840bf0581cf502818100f7e1a085d69b3ddecbbcab5c36b857b97994afbbfa3aea82f9574c0b3d0782675159578ebad4594fe67107108180b449167123e84c281613b7cf09328cc8a6e13c167a8b547c8d28e0a3ae1e2bb3a675916ea37f0bfa213562f1fb627a01243bcca4f1bea8519089a883dfe15ae59f06928b665e807b552564014c3bfecf492a03818400028180794226a2fd34baa24aeb36d0ce29aade73a7dd267a11ecf27b21a6c7ae04bdb225be17e9bb46bc8ecbdb6ff802efcf5b64e6c748eb6610271b838f05a11ab983ca5de874561b0e6d5dcfa31001a27a100a780c63ea7242d4cc54d6eeb76b3159e2e4521660f1226b520b96e51905a2bc334d404fdfe5bbe2bb2be3f2e9e8bd00300b06072a8648ce3804030500032f00302c02140a3db76fd553f1f04c2d9f317c2d3b652594cc9402141c8b2bac8e2a7c1ed8491347ad0289871691252c"

    const-string/jumbo v5, "com.Android.Afaria"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    const-string/jumbo v4, "308202333082019ca00302010202044cf76cfe300d06092a864886f70d0101050500305d310b3009060355040613024b52310e300c0603550408130553656f756c310e300c0603550407130553656f756c310e300c060355040a13054c47434e53310e300c060355040b13054c47434e53310e300c060355040313054c47434e533020170d3130313230323039353531305a180f33303130303430343039353531305a305d310b3009060355040613024b52310e300c0603550408130553656f756c310e300c0603550407130553656f756c310e300c060355040a13054c47434e53310e300c060355040b13054c47434e53310e300c060355040313054c47434e5330819f300d06092a864886f70d010101050003818d0030818902818100cd60201838450175bae89824ed097e9941e757fa2431946fa4cbc853418f613253c03476aa9b2d965be0289da3f324b452a79ceeb04a6d576e6aa4b6cffa891dbca210dbc9350bc03bc10b196074bee3b5fe3dc401817f0428b59296b3a0e28bfa3966d2678a6e1325c2270348fb2068b2eeb67a07f822d814bdf790f69236e10203010001300d06092a864886f70d0101050500038181001da70053668d728d2c9f154136b8c4472ea61aa92e6021ebc6dc6ae6c180c68588e703ddb3676b9dd6a50e3e5fc3fc31fbf93d7956cabe3ac9e9515239507efae38f0c522f8c875493638566b81059cd9c73b0ecdda50a8620ba5dc495593e31eae0c0c41bbef78a16a31a8c193ccb3d207cb350a70e0a005215a8d3dde4c16c"

    const-string/jumbo v5, "com.lgcns.mdm"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    const-string/jumbo v4, "308202bb308201a3a0030201020204084f2528300d06092a864886f70d01010b0500300e310c300a060355040313034d444d301e170d3132313031353035323331385a170d3432313030383035323331385a300e310c300a060355040313034d444d30820122300d06092a864886f70d01010105000382010f003082010a02820101009942811360299ceddc7eafab1be65fd8fe205cab95682429d903a008c458992537b0b98a830c85fe2440c147b1ce31a69e78f2583da3918fd261fbe8a5e2dd8158b0fc0e064b9a076dd97d1514b062b082f06a9cfdfeda1551f864ea6e254cc547e47b8a28825468275e2e8d5e77a54c92277326e79e4b675d7766973bb126e6057b5947c0e793978098053f8c4d0c9fc6cef0747c89462e3bc996d936709343692789a9af0889a9d862b4d95b7ab0c0f44aa803e2139f432fc669d6eba281bb6ebb232d9a7b30eba6b0485ab1240c441733f27cce0f55c1ea30c2edfaadf46b512b7530c4730810753124af6dd05c8a0f6d38839e98f1cc13d309f1a41eed270203010001a321301f301d0603551d0e0416041467fcef11ccbf95622c610f97dca96f0a240b01df300d06092a864886f70d01010b050003820101004195e850dd6d7386b195c278f3858295c643e8f5e2435d5574c2ccebb1f756cacc022f9e54e8ab712332bcbda04dc2b4958b84a2f35ab439d5609b0abf2ce2382add0ac0d0d3cee5baf887a37cd7353cc2e1a8f1b37eaa7d7db1c9de574b4fcbc83056b4ac00df6d03acfce77ae7d4a808da7e3ef6c434c5048d680737765e3e432d85473a51e14ebc888b8fa21eae8cbc7ff54cd6aa3aaacdabda1131ae64b11b322793268aa764eae359b6f98177355247ddcfa857282baed67b8a2fe56fa8dc2238b9af8a832e60d27967f32e2937bed7b077aa48885e27b40fe93596ce43fe4706a09f709950b2d79d99ee16a37825e78c51fd2cba5fccf93d1097c7d137"

    const-string/jumbo v5, "LG_MDM_SIGN_1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    const-string/jumbo v4, "308202bb308201a3a003020102020476ff5de3300d06092a864886f70d01010b0500300e310c300a060355040313034d444d301e170d3132313031353035323534395a170d3432313030383035323534395a300e310c300a060355040313034d444d30820122300d06092a864886f70d01010105000382010f003082010a02820101009ab56bd85652aa9080d41cca3125f3c183eee0aff0b94c4f237f154beccfd86e82c4ca9024454d2c8068fd4f47a765670c5026c8c1898666e26a22b78f811eb0905a6291c51565891680abceac2fadce911d63ef3713fd17eb86cd868e298e8d381eac9b464bf4cec76f0e0ffc40f8945f962c15beea881721c5ecb6b97a517fdd5f5262e6e8c9217cdce5a373496d4e7d1b5ef1c98245da29ef01dd135528f763c0e10711e6301503e92376af330880c0e4f4c7e1f52af70bcc58a0507d96e03af68220d9fc5656dc661d7e0182b7ef25d73a38f67ff95cb1dfeeeb4031649196ee4899aa0b896c68c80b8fa7471ec8f3f0555b9b6b2572400a3b136ebc242d0203010001a321301f301d0603551d0e04160414ff44aafc9a8d1e5488f36cfa3ca816665c4d3a61300d06092a864886f70d01010b050003820101003c249cc7f4ad4feda21f779fc603c9fb693d799f659722539f8aa397da2992346bc9ef002663eba9522031df5f5d784c2e9119d4ca76a59fa00a96ef657bad19ff8e21c04979b79129c2b1d893aa8aa2068cc0c1b3a621d53ffb051773b346da43de075c32f7cca6af9d8d8ef18f534a0b8619d6eae0154e2ed3d401fd9885aa1c842827e7d24eef8291a06951fd86d9dc4cf2559a8c767b6a1d8599c517d02a69ebb97ea1f04dc02918b2ea37775c1194928be66a0a1dede5e9f89d07c4f9732fb767a73b5d557d1a88073b552b7d6cb7358adbd9c807ecdedcb8d125e8f612afd3e3cff4030a681bad8ad990cb1ff8cc8b322e50ffb94b0bddb2718f1f76cc"

    const-string/jumbo v5, "LG_MDM_SIGN_2"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    const-string/jumbo v4, "308202bb308201a3a00302010202040389fb45300d06092a864886f70d01010b0500300e310c300a060355040313034d444d301e170d3132313031353035323735325a170d3432313030383035323735325a300e310c300a060355040313034d444d30820122300d06092a864886f70d01010105000382010f003082010a0282010100910a27b499561878c1264b7c8765a3dc47e14f1b586d0b080e073282428613481d0df44e3126aea7cbc4236c43c0cd685b2a2a1455d6b36614c1351f26ebce40234a5cc144c2bb08524d04815afa9f19f053a7ed97363f855dbbf377399e4fd2bf416e222d67b6fa2578b9081710df326e3cc12fa3477d26cb05fbbc4570ef5d40253cf61b89f78a9272e1b6b053b299de5357af8ee3644d1cb2ef79bae4539341b9eb62298a614c306550983c8d727404edbe787d88a9c60c982e430358d03ab41c34fec95b553a41af8ac4a19f57d9e781150314f64387706144fe006afe0172c158e542ad6bb8f9edf106df4988069e9704d078bf90306e7cad3fd2f91c0b0203010001a321301f301d0603551d0e04160414765e22ef9ff0e34ed628ac03ef04bb10a0e62a86300d06092a864886f70d01010b050003820101008c558efc3404c2982b01b7af192e9038994bc5adede732c53fc59d5889c8749d3b82fa401392dbaa5c9f3e2d75c4f8519f454e52670efb95d647e675b367652b8790c30c04dd891da6be0cb0473ff5f2a02b9f76060a2a33be8880b60eecb3fe3bc2b59e5c930563a0ed59533eeef4c5edbf43e0dca01656b61940f79c288493bb1eec6880e21d69f2a2c3e33391068e9efddfe64cbb1575f764328a459cf2e932622ab09983f0678066fc7860d65a610db4402d60d215e4888f430121faaada9e9386a9e1dafb980400169e198815395aac989991dbc4b9203494be0ec2132182303ea23215dc7a3d51abb78bb9475e8048bfe00a7f243516fd53f238344c10"

    const-string/jumbo v5, "LG_MDM_SIGN_3"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->getPlatformSignatureKey()[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "platformKeys":[Ljava/lang/String;
    if-eqz v1, :cond_67

    array-length v3, v1

    if-lez v3, :cond_67

    .line 71
    array-length v3, v1

    :goto_58
    if-ge v2, v3, :cond_67

    aget-object v0, v1, v2

    .line 72
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    const-string/jumbo v5, "platform key"

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 75
    .end local v0    # "key":Ljava/lang/String;
    :cond_67
    iget-object v2, p0, Lcom/lge/mdm/controller/LGMDMSignatureKeyManageController;->signatureMap:Ljava/util/Map;

    return-object v2
.end method
