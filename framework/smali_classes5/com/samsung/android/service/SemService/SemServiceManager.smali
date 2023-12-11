.class public final Lcom/samsung/android/service/SemService/SemServiceManager;
.super Ljava/lang/Object;
.source "SemServiceManager.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_ADD_DEL_LIST:I = -0x10

.field public static final ERROR_BOOT_DEACT:I = -0x11

.field public static final ERROR_CLASS_NOT_FOUND:I = -0x2

.field public static final ERROR_DATA:I = -0xd

.field public static final ERROR_DEACTIVATION:I = -0x12

.field public static final ERROR_EXCEPTION:I = -0x5a

.field public static final ERROR_FACTORY_ERROR:I = -0xa

.field public static final ERROR_NOT_SUPPORTED:I = -0xa

.field public static final ERROR_NO_PERMISSION:I = -0x5b

.field public static final ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

.field public static final ERROR_NO_SERVICE:I = -0x5c

.field public static final ERROR_SELECT_ERROR:I = -0xb

.field public static final ERROR_SEND_ERROR:I = -0xc

.field public static final ERROR_UNSAT_LINK:I = -0x3

.field public static final ESESTATUS_BUSY:I = -0xc8

.field public static final ESESTATUS_NOT_SUPPORTED:I = -0x64

.field private static final HEX_CHARS:[C

.field private static final MAX_CAPDU_SIZE:I = 0x10009

.field private static final MAX_RAPDU_SIZE:I = 0x10002

.field public static final NO_ERROR:I = 0x0

.field public static final NO_ERROR_SPI:I = 0x0

.field public static final SSD_NOT_EXIST_APPLET_EXIST:I = 0x5

.field public static final SSD_NOT_EXIST_APPLET_NOT_EXIST:I = 0x4

.field public static final SSD_NOT_SELECTABLE_APPLET_EXIST:I = 0x2

.field public static final SSD_NOT_SELECTABLE_APPLET_NOT_EXIST:I = 0x3

.field public static final SSD_SELECTABLE_APPLET_EXIST:I = 0x0

.field public static final SSD_SELECTABLE_APPLET_NOT_EXIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SEC_ESE_ServiceManager"

.field public static final isSupportSemService:Z = true

.field private static final normalSpi_Flag:I = 0x0

.field private static final secureSpi_Flag:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSemService:Lcom/samsung/android/service/SemService/ISemService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/service/SemService/SemServiceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mAIDDeactivation(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/util/ArrayList;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->AIDDeactivation(Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mparseList(Lcom/samsung/android/service/SemService/SemServiceManager;[BI)Ljava/util/ArrayList;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/SemService/SemServiceManager;->parseList([BI)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    return-void

    nop

    :array_e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    .line 75
    const-string v0, "SemService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SemService/ISemService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    .line 76
    const-string v1, "SEC_ESE_ServiceManager"

    if-nez v0, :cond_32

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connects to SemService is failed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 79
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connects to SemService."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_4e
    return-void
.end method

.method private AIDDeactivation(Ljava/util/ArrayList;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1016
    .local p1, "AID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1017
    .local v0, "deactivationListCmd":[B
    const/4 v1, 0x0

    .line 1018
    .local v1, "baRsp":[B
    const/4 v2, 0x0

    .line 1019
    .local v2, "baRspLen":I
    const/4 v3, 0x0

    .line 1020
    .local v3, "failFlag":I
    const-string v4, "80F80002"

    .line 1027
    .local v4, "strDeactivationListCmd":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_100

    .line 1028
    const/4 v6, 0x0

    .line 1030
    .local v6, "appletAID":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "SEC_ESE_ServiceManager"

    if-nez v7, :cond_1d

    .line 1031
    const-string v7, "AID Null Error"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fc

    .line 1034
    :cond_1d
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/lang/String;

    .line 1035
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x2

    div-int/2addr v7, v9

    .line 1036
    .local v7, "tempLen":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%02x"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1038
    .local v10, "aidlen":Ljava/lang/String;
    const-string v4, "80F80002"

    .line 1039
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v7, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1040
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1041
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1042
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "00"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1044
    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1045
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v1

    .line 1046
    if-eqz v1, :cond_f5

    array-length v11, v1

    if-ge v11, v9, :cond_9c

    goto :goto_f5

    .line 1050
    :cond_9c
    array-length v2, v1

    .line 1052
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DEAID SW : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v2, -0x2

    aget-byte v12, v1, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v2, -0x1

    aget-byte v12, v1, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    if-lt v2, v9, :cond_ed

    add-int/lit8 v9, v2, -0x2

    aget-byte v9, v1, v9

    const/16 v11, -0x70

    if-ne v9, v11, :cond_d7

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, v1, v9

    if-eqz v9, :cond_e7

    :cond_d7
    add-int/lit8 v9, v2, -0x2

    aget-byte v9, v1, v9

    const/16 v11, 0x63

    if-ne v9, v11, :cond_ed

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, v1, v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_ed

    .line 1055
    :cond_e7
    const-string v9, "deactivate list success"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    .line 1057
    :cond_ed
    const-string v9, "deactivate list fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    add-int/lit8 v3, v3, 0x1

    goto :goto_fc

    .line 1047
    :cond_f5
    :goto_f5
    const-string v9, "Aid Deactivation Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    add-int/lit8 v3, v3, 0x1

    .line 1027
    .end local v6    # "appletAID":Ljava/lang/String;
    .end local v7    # "tempLen":I
    .end local v10    # "aidlen":Ljava/lang/String;
    :goto_fc
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 1064
    .end local v5    # "i":I
    :cond_100
    return v3
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # B

    .line 1878
    const/4 v0, 0x2

    new-array v0, v0, [C

    sget-object v1, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 1879
    .local v0, "array":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B

    .line 1867
    if-eqz p0, :cond_32

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_32

    .line 1869
    :cond_7
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 1870
    .local v0, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_2c

    .line 1871
    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    .line 1872
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1870
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1874
    .end local v2    # "i":I
    :cond_2c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1868
    .end local v0    # "chars":[C
    :cond_32
    :goto_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 1883
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1884
    return-object v0

    .line 1885
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    .line 1886
    return-object v0

    .line 1888
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v2

    .line 1889
    .local v0, "len":I
    new-array v1, v0, [B

    .line 1890
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_2b

    .line 1891
    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1890
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1893
    .end local v3    # "i":I
    :cond_2b
    return-object v1
.end method

.method private isSupportEsek()Z
    .registers 6

    .line 177
    const-string/jumbo v0, "ro.security.ese.support_esek"

    .line 179
    .local v0, "esekSupportProp":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "propValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_1a

    if-nez v3, :cond_17

    goto :goto_19

    .line 183
    :cond_17
    const/4 v1, 0x1

    return v1

    .line 181
    :cond_19
    :goto_19
    return v1

    .line 185
    .end local v2    # "propValue":Ljava/lang/String;
    :catch_1a
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get sysProp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SEC_ESE_ServiceManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v1
.end method

.method private parseList([BI)Ljava/util/ArrayList;
    .registers 11
    .param p1, "respAid"    # [B
    .param p2, "respAidLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1175
    const-string v0, "SEC_ESE_ServiceManager"

    if-nez p1, :cond_c

    .line 1176
    const-string/jumbo v1, "parse list aid null error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v0, 0x0

    return-object v0

    .line 1181
    :cond_c
    const/4 v1, 0x0

    .line 1182
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 1184
    .local v2, "tempLen":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v3, "tempStr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, p2, :cond_5b

    .line 1192
    aget-byte v2, p1, v4

    .line 1193
    if-lez v2, :cond_58

    .line 1194
    add-int/lit8 v4, v4, 0x1

    .line 1195
    new-array v5, v2, [B

    .line 1196
    .local v5, "tempData":[B
    add-int v6, v4, v2

    invoke-static {p1, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1197
    add-int/lit8 v6, v2, -0x1

    add-int/2addr v4, v6

    .line 1199
    invoke-static {v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    add-int/lit8 v1, v1, 0x1

    .line 1191
    .end local v5    # "tempData":[B
    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1205
    .end local v4    # "i":I
    :cond_5b
    return-object v3
.end method


# virtual methods
.method public COSSPIAccessControl(I)I
    .registers 5
    .param p1, "type"    # I

    .line 2035
    const-string v0, "COSSPIAccessControl() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const/4 v0, 0x1

    const/16 v2, -0x5a

    if-ne p1, v0, :cond_20

    .line 2044
    :try_start_c
    const-string v0, "SPIAC SPI Open"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v0

    return v0

    .line 2065
    :catch_18
    move-exception v0

    goto :goto_34

    .line 2062
    :catch_1a
    move-exception v0

    goto :goto_38

    .line 2059
    :catch_1c
    move-exception v0

    goto :goto_3c

    .line 2055
    :catch_1e
    move-exception v0

    goto :goto_40

    .line 2047
    :cond_20
    if-nez p1, :cond_2e

    .line 2048
    const-string v0, "SPIAC SPI Close"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I

    move-result v0

    return v0

    .line 2052
    :cond_2e
    const-string v0, "SPIAC Type Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_33} :catch_1e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_33} :catch_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_33} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_33} :catch_18

    .line 2053
    return v2

    .line 2066
    .local v0, "e":Ljava/lang/Exception;
    :goto_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2067
    return v2

    .line 2063
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_38
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2064
    return v2

    .line 2060
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    :goto_3c
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 2061
    return v2

    .line 2056
    .local v0, "npe":Ljava/lang/NullPointerException;
    :goto_40
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2058
    const/16 v1, -0x5c

    return v1
.end method

.method public accessControlForCOSU(I)I
    .registers 3
    .param p1, "type"    # I

    .line 1416
    const/4 v0, 0x0

    return v0
.end method

.method public addSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 23
    .param p1, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 581
    .local p2, "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "%02x"

    const/4 v4, -0x1

    .line 583
    .local v4, "ret":I
    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_2ae

    .line 585
    .local v5, "selectSCRSCmd":[B
    const/4 v6, 0x0

    .line 586
    .local v6, "baRsp":[B
    const/4 v7, 0x0

    .line 587
    .local v7, "baRspLen":I
    const/4 v8, 0x0

    .line 588
    .local v8, "strAddListCmd":Ljava/lang/String;
    const/4 v9, 0x0

    .line 596
    .local v9, "isOpen":Z
    const-string v10, "SEC_ESE_ServiceManager"

    if-eqz v2, :cond_218

    if-nez p1, :cond_1a

    goto/16 :goto_218

    .line 601
    :cond_1a
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v11

    move v4, v11

    .line 602
    if-eqz v4, :cond_38

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OPEN Error "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_37} :catch_28c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1a .. :try_end_37} :catch_271
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1a .. :try_end_37} :catch_256
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_37} :catch_23b
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_37} :catch_220

    .line 604
    return v4

    .line 606
    :cond_38
    const/4 v9, 0x1

    .line 608
    :try_start_39
    invoke-virtual {v1, v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v11

    move-object v6, v11

    .line 609
    if-eqz v6, :cond_1d5

    array-length v11, v6

    const/4 v12, 0x2

    if-ge v11, v12, :cond_48

    move/from16 v17, v4

    goto/16 :goto_1d7

    .line 616
    :cond_48
    array-length v11, v6

    move v7, v11

    .line 617
    const/4 v11, 0x0

    .line 619
    .local v11, "failFlag":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Select SW : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v7, -0x2

    aget-byte v14, v6, v14

    invoke-static {v14}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v7, -0x1

    aget-byte v14, v6, v14

    invoke-static {v14}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-lt v7, v12, :cond_1b1

    add-int/lit8 v13, v7, -0x2

    aget-byte v13, v6, v13

    const/16 v14, -0x70

    if-ne v13, v14, :cond_1b1

    add-int/lit8 v13, v7, -0x1

    aget-byte v13, v6, v13

    if-nez v13, :cond_1b1

    .line 621
    const/4 v13, 0x0

    .line 622
    .local v13, "addListCmd":[B
    const/4 v15, 0x0

    .line 624
    .local v15, "aidlen":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LS : "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_1ae

    .line 626
    const/4 v14, 0x0

    .line 628
    .local v14, "appletAID":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17
    :try_end_ad
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_ad} :catch_212
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_39 .. :try_end_ad} :catch_20d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_39 .. :try_end_ad} :catch_208
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_ad} :catch_203
    .catch Ljava/lang/Error; {:try_start_39 .. :try_end_ad} :catch_1fe

    if-nez v17, :cond_bc

    .line 629
    move/from16 v17, v4

    .end local v4    # "ret":I
    .local v17, "ret":I
    :try_start_b1
    const-string v4, "AID Data Error"

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    add-int/lit8 v11, v11, 0x1

    const/16 v14, -0x70

    goto/16 :goto_1a6

    .line 632
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :cond_bc
    move/from16 v17, v4

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 633
    .end local v14    # "appletAID":Ljava/lang/String;
    .local v4, "appletAID":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v16, 0x2

    div-int/lit8 v18, v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v2, v19

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 634
    .end local v15    # "aidlen":Ljava/lang/String;
    .local v2, "aidlen":Ljava/lang/String;
    const-string v15, "80F600"

    move-object v8, v15

    .line 635
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v19

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 636
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 637
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 638
    invoke-static {v8}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object v13, v14

    .line 640
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v1, v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v14

    move-object v6, v14

    .line 643
    if-eqz v6, :cond_19c

    array-length v14, v6

    const/4 v15, 0x2

    if-ge v14, v15, :cond_14d

    const/16 v14, -0x70

    goto :goto_19e

    .line 647
    :cond_14d
    array-length v14, v6

    move v7, v14

    .line 649
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RSP SW : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v7, -0x2

    aget-byte v15, v6, v15

    invoke-static {v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v7, -0x1

    aget-byte v15, v6, v15

    invoke-static {v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v14, 0x2

    if-lt v7, v14, :cond_191

    add-int/lit8 v15, v7, -0x2

    aget-byte v15, v6, v15

    const/16 v14, -0x70

    if-ne v15, v14, :cond_193

    add-int/lit8 v15, v7, -0x1

    aget-byte v15, v6, v15

    if-nez v15, :cond_193

    .line 651
    const-string v15, "AL Success"

    invoke-static {v10, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v2

    goto :goto_1a6

    .line 650
    :cond_191
    const/16 v14, -0x70

    .line 653
    :cond_193
    const-string v15, "AL Fail"

    invoke-static {v10, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    add-int/lit8 v11, v11, 0x1

    move-object v15, v2

    goto :goto_1a6

    .line 643
    :cond_19c
    const/16 v14, -0x70

    .line 644
    :goto_19e
    const-string v15, "Send Error"

    invoke-static {v10, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    add-int/lit8 v11, v11, 0x1

    move-object v15, v2

    .line 625
    .end local v2    # "aidlen":Ljava/lang/String;
    .end local v4    # "appletAID":Ljava/lang/String;
    .restart local v15    # "aidlen":Ljava/lang/String;
    :goto_1a6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    move/from16 v4, v17

    goto/16 :goto_a2

    .end local v17    # "ret":I
    .local v4, "ret":I
    :cond_1ae
    move/from16 v17, v4

    .line 659
    .end local v4    # "ret":I
    .end local v12    # "i":I
    .end local v13    # "addListCmd":[B
    .end local v15    # "aidlen":Ljava/lang/String;
    .restart local v17    # "ret":I
    goto :goto_1cf

    .line 620
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :cond_1b1
    move/from16 v17, v4

    .line 660
    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Select Fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/16 v4, -0xb

    .line 663
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :goto_1cf
    if-lez v11, :cond_2a6

    const/16 v4, -0x10

    goto/16 :goto_2a6

    .line 609
    .end local v11    # "failFlag":I
    :cond_1d5
    move/from16 v17, v4

    .line 610
    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    :goto_1d7
    const-string v2, "Select Error"

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_1df
    .catch Ljava/lang/NullPointerException; {:try_start_b1 .. :try_end_1df} :catch_1f8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b1 .. :try_end_1df} :catch_1f2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b1 .. :try_end_1df} :catch_1ec
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_1df} :catch_1e7
    .catch Ljava/lang/Error; {:try_start_b1 .. :try_end_1df} :catch_1e2

    .line 614
    const/16 v2, -0xb

    return v2

    .line 676
    :catch_1e2
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto :goto_222

    .line 673
    :catch_1e7
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto :goto_23d

    .line 670
    :catch_1ec
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_258

    .line 667
    :catch_1f2
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_273

    .line 664
    :catch_1f8
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_28e

    .line 676
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_1fe
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_222

    .line 673
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_203
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_23d

    .line 670
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_208
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_258

    .line 667
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_20d
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_273

    .line 664
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_212
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto/16 :goto_28e

    .line 597
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :cond_218
    :goto_218
    :try_start_218
    const-string v2, "AID/Flag Null Error"

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21d
    .catch Ljava/lang/NullPointerException; {:try_start_218 .. :try_end_21d} :catch_28c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_218 .. :try_end_21d} :catch_271
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_218 .. :try_end_21d} :catch_256
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_21d} :catch_23b
    .catch Ljava/lang/Error; {:try_start_218 .. :try_end_21d} :catch_220

    .line 599
    const/16 v2, -0xd

    return v2

    .line 676
    :catch_220
    move-exception v0

    move-object v2, v0

    .line 677
    .local v2, "e":Ljava/lang/Error;
    :goto_222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/16 v4, -0x5a

    goto :goto_2a7

    .line 673
    .end local v2    # "e":Ljava/lang/Error;
    :catch_23b
    move-exception v0

    move-object v2, v0

    .line 674
    .local v2, "e":Ljava/lang/Exception;
    :goto_23d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/16 v4, -0x5a

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2a6

    .line 670
    :catch_256
    move-exception v0

    move-object v2, v0

    .line 671
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to link."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/16 v4, -0x5a

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_2a6

    .line 667
    :catch_271
    move-exception v0

    move-object v2, v0

    .line 668
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    :goto_273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to find class."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/16 v4, -0x5a

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_2a6

    .line 664
    :catch_28c
    move-exception v0

    move-object v2, v0

    .line 665
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_28e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to connect service."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/16 v4, -0x5a

    .line 679
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_2a6
    :goto_2a6
    nop

    .line 680
    :goto_2a7
    if-eqz v9, :cond_2ac

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 684
    :cond_2ac
    return v4

    nop

    :array_2ae
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data
.end method

.method public checkFRANetwork(I)V
    .registers 5
    .param p1, "type"    # I

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFRANetwork() is called. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :try_start_18
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/SemService/ISemService;->check_Network(I)V
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1d} :catch_2e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1d} :catch_29
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1d} :catch_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1f

    .line 1171
    nop

    .line 1172
    return-void

    .line 1168
    :catch_1f
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1170
    return-void

    .line 1165
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1167
    return-void

    .line 1162
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_29
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1164
    return-void

    .line 1158
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2e
    move-exception v0

    .line 1159
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1161
    return-void
.end method

.method public checkSeState([B[B)I
    .registers 6
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B

    .line 1634
    const-string v0, "checkSeState() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const/16 v0, -0x5a

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->check_SeState([B[B)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 1653
    :catch_10
    move-exception v1

    .line 1654
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1655
    return v0

    .line 1650
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 1651
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1652
    return v0

    .line 1647
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 1648
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1649
    return v0

    .line 1643
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v0

    .line 1644
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1646
    const/16 v1, -0x5c

    return v1
.end method

.method public close()I
    .registers 3

    .line 1463
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "close() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result v0

    return v0
.end method

.method public close(I)I
    .registers 4
    .param p1, "flag"    # I

    .line 1575
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "close() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result v0

    return v0
.end method

.method public closeSpi(I)I
    .registers 5
    .param p1, "flag"    # I

    .line 1956
    const-string v0, "closeSpi() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/16 v0, -0x5a

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/SemService/ISemService;->close_Spi(I)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 1975
    :catch_10
    move-exception v1

    .line 1976
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1977
    return v0

    .line 1972
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 1973
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1974
    return v0

    .line 1969
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 1970
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1971
    return v0

    .line 1965
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v0

    .line 1966
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1968
    const/16 v1, -0x5c

    return v1
.end method

.method public continueattestation(Ljava/lang/String;I[B)I
    .registers 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dataLen"    # I
    .param p3, "rspData"    # [B

    .line 1270
    const-string v0, "continueattestation() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/16 v0, -0x5c

    :try_start_9
    const-string v2, "ContinueAttestation"

    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    .line 1279
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/service/SemService/ISemService;->continue_attestation(Ljava/lang/String;I[B)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_14} :catch_21
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_15

    return v0

    .line 1290
    :catch_15
    move-exception v0

    .line 1291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1292
    const/16 v1, -0x5a

    return v1

    .line 1287
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v1

    .line 1288
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1289
    return v0

    .line 1284
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_21
    move-exception v1

    .line 1285
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1286
    return v0

    .line 1280
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_26
    move-exception v2

    .line 1281
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1283
    return v0
.end method

.method public deactivateCards(I[Ljava/lang/String;[II)I
    .registers 8
    .param p1, "RequestType"    # I
    .param p2, "package_name"    # [Ljava/lang/String;
    .param p3, "package_len"    # [I
    .param p4, "arrayLen"    # I

    .line 431
    const-string v0, "deactivateCards is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v0, -0x5a

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_Cards(I[Ljava/lang/String;[II)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 451
    :catch_10
    move-exception v1

    .line 452
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    return v0

    .line 448
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 450
    return v0

    .line 445
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 447
    return v0

    .line 441
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v0

    .line 442
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 444
    const/16 v1, -0x5c

    return v1
.end method

.method public deactivateCardsAID(II[Ljava/lang/String;[II)I
    .registers 14
    .param p1, "RequestType"    # I
    .param p2, "bean"    # I
    .param p3, "package_name"    # [Ljava/lang/String;
    .param p4, "package_len"    # [I
    .param p5, "arrayLen"    # I

    .line 458
    const-string v0, "deactivateCardsAID is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/16 v0, -0x5a

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_CardsAID(II[Ljava/lang/String;[II)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_14} :catch_1f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_14} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_15

    return v0

    .line 478
    :catch_15
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    return v0

    .line 475
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 477
    return v0

    .line 472
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1f
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 474
    return v0

    .line 468
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_24
    move-exception v0

    .line 469
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 471
    const/16 v1, -0x5c

    return v1
.end method

.method public deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 14
    .param p1, "inputFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 688
    .local p2, "inputAid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x16800

    .line 689
    .local v0, "listByteSize":I
    const-string v1, "02"

    .line 690
    .local v1, "AID_DEACTIVATION_FLAG":Ljava/lang/String;
    const-string v2, "03"

    .line 691
    .local v2, "AID_DEACTIVATION_FLAG_BOOT":Ljava/lang/String;
    const-string v3, "01"

    .line 693
    .local v3, "ALL_DEACTIVATION_FLAG":Ljava/lang/String;
    move-object v4, p1

    .line 694
    .local v4, "flag":Ljava/lang/String;
    move-object v5, p2

    .line 697
    .local v5, "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "com.sec.action.CDA_FINISH"

    .line 698
    .local v6, "ACTION_CDA_FINISH":Ljava/lang/String;
    const-string v7, "com.sec.action.CDA_VALUE"

    .line 699
    .local v7, "VALUE_CDA_FINISH":Ljava/lang/String;
    const/4 v8, 0x1

    .line 707
    .local v8, "ACTION_VALUE_CDA_FINISH":I
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/service/SemService/SemServiceManager$1;

    invoke-direct {v10, p0, v4, v5}, Lcom/samsung/android/service/SemService/SemServiceManager$1;-><init>(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1010
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1012
    const/4 v9, 0x0

    return v9
.end method

.method public eSEFactoryReset()I
    .registers 4

    .line 1069
    const-string v0, "eSEFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/16 v0, -0x5a

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FactoryReset()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 1088
    :catch_10
    move-exception v1

    .line 1089
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1090
    return v0

    .line 1085
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 1086
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1087
    return v0

    .line 1082
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 1083
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1084
    return v0

    .line 1078
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v0

    .line 1079
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1081
    const/16 v1, -0x5c

    return v1
.end method

.method public eSEFullFactoryReset()I
    .registers 4

    .line 1123
    const-string v0, "eSEFullFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const/16 v0, -0x5a

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FullFactoryReset()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 1142
    :catch_10
    move-exception v1

    .line 1143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1144
    return v0

    .line 1139
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 1140
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1141
    return v0

    .line 1136
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 1137
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1138
    return v0

    .line 1132
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v0

    .line 1133
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1135
    const/16 v1, -0x5c

    return v1
.end method

.method public eSELowFactoryReset()I
    .registers 4

    .line 1096
    const-string v0, "eSELowFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/16 v0, -0x5a

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->eSE_LowFactoryReset()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 1115
    :catch_10
    move-exception v1

    .line 1116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1117
    return v0

    .line 1112
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 1113
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1114
    return v0

    .line 1109
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 1110
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1111
    return v0

    .line 1105
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v0

    .line 1106
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1108
    const/16 v1, -0x5c

    return v1
.end method

.method public esekCertificateCheck()I
    .registers 4

    .line 193
    const-string v0, "esekCertificateCheck() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_15

    .line 196
    const-string v0, "eSEK is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v0, -0xa

    return v0

    .line 206
    :cond_15
    const/16 v0, -0x5a

    :try_start_17
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->esek_certificate_check()I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_1d} :catch_2d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_17 .. :try_end_1d} :catch_28
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_17 .. :try_end_1d} :catch_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_1e

    return v0

    .line 217
    :catch_1e
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    return v0

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_23
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 216
    return v0

    .line 211
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_28
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 213
    return v0

    .line 207
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2d
    move-exception v0

    .line 208
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 210
    const/16 v1, -0x5c

    return v1
.end method

.method public getAtr()I
    .registers 4

    .line 1389
    const-string v0, "getAtr() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/16 v0, -0x5a

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->getAtr_Spi()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return v0

    .line 1408
    :catch_10
    move-exception v1

    .line 1409
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1410
    return v0

    .line 1405
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 1406
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1407
    return v0

    .line 1402
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 1403
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1404
    return v0

    .line 1398
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v0

    .line 1399
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1401
    const/16 v1, -0x5c

    return v1
.end method

.method public getCPLC14mode()Ljava/lang/String;
    .registers 5

    .line 131
    const-string/jumbo v0, "getCPLC14mode() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->getCPLC14mode()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 149
    :catch_10
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    return-object v0

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 148
    return-object v0

    .line 143
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 145
    return-object v0

    .line 139
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v2

    .line 140
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 142
    return-object v0
.end method

.method public getHQMMemory([B)I
    .registers 5
    .param p1, "hw_memory_data"    # [B

    .line 403
    const-string/jumbo v0, "getHQMMemory() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/SemService/ISemService;->get_HQMMemory([B)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_10} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 422
    :catch_11
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    return v0

    .line 419
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 421
    return v0

    .line 416
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1b
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 418
    return v0

    .line 412
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_20
    move-exception v0

    .line 413
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 415
    const/16 v1, -0x5c

    return v1
.end method

.method public getPK([B)I
    .registers 4
    .param p1, "rspData"    # [B

    .line 1298
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "getPK() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v0, 0x0

    return v0
.end method

.method public getSCRSVersion()I
    .registers 14

    .line 485
    const-string v0, "SEC_ESE_ServiceManager"

    const/4 v1, -0x1

    .line 486
    .local v1, "ret":I
    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_1ea

    .line 488
    .local v2, "selectSCRSCmd":[B
    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_1f6

    .line 489
    .local v3, "getVersionCmd":[B
    const/4 v4, 0x0

    .line 490
    .local v4, "baRsp":[B
    const/4 v5, 0x0

    .line 491
    .local v5, "baRspLen":I
    const/4 v6, 0x0

    .line 492
    .local v6, "scrsVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 501
    .local v7, "isOpen":Z
    :try_start_14
    const-string/jumbo v8, "ro.factory.factory_binary"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 502
    .local v8, "factoryProp":Ljava/lang/String;
    if-eqz v8, :cond_2d

    const-string v9, "factory"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 503
    const-string v9, "FACTORY NOT SUPPORT"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/16 v0, -0xa

    return v0

    .line 507
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v9

    move v1, v9

    .line 509
    if-eqz v1, :cond_4b

    .line 510
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OPEN Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return v1

    .line 513
    :cond_4b
    const/4 v7, 0x1

    .line 515
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v9

    move-object v4, v9

    .line 516
    if-eqz v4, :cond_168

    array-length v9, v4

    const/4 v10, 0x2

    if-ge v9, v10, :cond_59

    goto/16 :goto_168

    .line 523
    :cond_59
    array-length v9, v4

    move v5, v9

    .line 525
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Select SW : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v5, -0x2

    aget-byte v11, v4, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v5, -0x1

    aget-byte v11, v4, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-lt v5, v10, :cond_14a

    add-int/lit8 v9, v5, -0x2

    aget-byte v9, v4, v9

    const/16 v11, -0x70

    if-ne v9, v11, :cond_14a

    add-int/lit8 v9, v5, -0x1

    aget-byte v9, v4, v9

    if-nez v9, :cond_14a

    .line 527
    invoke-virtual {p0, v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v9

    move-object v4, v9

    .line 528
    if-eqz v4, :cond_13f

    array-length v9, v4

    if-ge v9, v10, :cond_a1

    goto/16 :goto_13f

    .line 535
    :cond_a1
    array-length v9, v4

    move v5, v9

    .line 536
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RSP SW : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v12, v5, -0x2

    aget-byte v12, v4, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v12, v5, -0x1

    aget-byte v12, v4, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v9, 0x3

    if-le v5, v9, :cond_10b

    add-int/lit8 v12, v5, -0x2

    aget-byte v12, v4, v12

    if-ne v12, v11, :cond_10b

    add-int/lit8 v11, v5, -0x1

    aget-byte v11, v4, v11

    if-nez v11, :cond_10b

    .line 538
    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 539
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v9, v4, v9

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 541
    if-eqz v6, :cond_103

    .line 542
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v1, v9

    goto :goto_127

    .line 544
    :cond_103
    const-string v9, "Parse Version Error"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v1, -0xd

    goto :goto_127

    .line 548
    :cond_10b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send Fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v1, -0xc

    .line 551
    :goto_127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCRS Version : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e3

    .line 529
    :cond_13f
    :goto_13f
    const-string v9, "Send Error"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 532
    const/16 v0, -0xc

    return v0

    .line 553
    :cond_14a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Select Fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/16 v1, -0xb

    goto/16 :goto_1e3

    .line 517
    :cond_168
    :goto_168
    const-string v9, "Select Error"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_170
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_170} :catch_1ca
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_14 .. :try_end_170} :catch_1b0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_14 .. :try_end_170} :catch_1a7
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_170} :catch_18d
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_170} :catch_173

    .line 521
    const/16 v0, -0xb

    return v0

    .line 568
    .end local v8    # "factoryProp":Ljava/lang/String;
    :catch_173
    move-exception v8

    .line 569
    .local v8, "e":Ljava/lang/Error;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 v1, -0x5a

    goto :goto_1e4

    .line 565
    .end local v8    # "e":Ljava/lang/Error;
    :catch_18d
    move-exception v8

    .line 566
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v1, -0x5a

    .end local v8    # "e":Ljava/lang/Exception;
    goto :goto_1e3

    .line 562
    :catch_1a7
    move-exception v8

    .line 563
    .local v8, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v9, "Failed to link."

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/16 v1, -0x5a

    .end local v8    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_1e3

    .line 559
    :catch_1b0
    move-exception v8

    .line 560
    .local v8, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find class."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/16 v1, -0x5a

    .end local v8    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_1e3

    .line 556
    :catch_1ca
    move-exception v8

    .line 557
    .local v8, "e":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to connect service. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v1, -0x5a

    .line 571
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :goto_1e3
    nop

    .line 573
    :goto_1e4
    if-eqz v7, :cond_1e9

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 577
    :cond_1e9
    return v1

    :array_1ea
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_1f6
    .array-data 1
        -0x80t
        -0x36t
        0x0t
        -0x10t
        0x0t
    .end array-data
.end method

.method public get_ESEA()Ljava/lang/String;
    .registers 5

    .line 106
    const-string/jumbo v0, "get_ESEA() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->get_ESEA()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 124
    :catch_10
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    return-object v0

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 123
    return-object v0

    .line 118
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 120
    return-object v0

    .line 114
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v2

    .line 115
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 117
    return-object v0
.end method

.method public grdmCheckRestrictedMode()Ljava/lang/String;
    .registers 5

    .line 1814
    const-string/jumbo v0, "grdmCheckRestrictedMode() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const/4 v0, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_check_restricted_mode()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 1833
    :catch_10
    move-exception v1

    .line 1834
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1835
    return-object v0

    .line 1830
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 1831
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1832
    return-object v0

    .line 1827
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 1828
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1829
    return-object v0

    .line 1823
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v2

    .line 1824
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1826
    return-object v0
.end method

.method public grdmCheckStatus()I
    .registers 5

    .line 1840
    const-string/jumbo v0, "grdmCheckStatus() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_Check_Status()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_10} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 1859
    :catch_11
    move-exception v1

    .line 1860
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1861
    return v0

    .line 1856
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 1857
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1858
    return v0

    .line 1853
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1b
    move-exception v1

    .line 1854
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1855
    return v0

    .line 1849
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_20
    move-exception v2

    .line 1850
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1852
    return v0
.end method

.method public grdmGetAttesCert(I[B)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "rspData"    # [B

    .line 1788
    const-string/jumbo v0, "grdmGetAttesCert() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_get_attes_cert(I[B)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_10} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 1807
    :catch_11
    move-exception v1

    .line 1808
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1809
    return v0

    .line 1804
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 1805
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1806
    return v0

    .line 1801
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1b
    move-exception v1

    .line 1802
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1803
    return v0

    .line 1797
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_20
    move-exception v2

    .line 1798
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1800
    return v0
.end method

.method public grdmGetSession()I
    .registers 5

    .line 1710
    const-string/jumbo v0, "grdmGetSession() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_get_session()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_10} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 1729
    :catch_11
    move-exception v1

    .line 1730
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1731
    return v0

    .line 1726
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 1727
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1728
    return v0

    .line 1723
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1b
    move-exception v1

    .line 1724
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1725
    return v0

    .line 1719
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_20
    move-exception v2

    .line 1720
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1722
    return v0
.end method

.method public grdmReleaseSession()I
    .registers 5

    .line 1762
    const-string/jumbo v0, "grdmReleaseSession() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_release_session()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_10} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 1781
    :catch_11
    move-exception v1

    .line 1782
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1783
    return v0

    .line 1778
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 1779
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1780
    return v0

    .line 1775
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1b
    move-exception v1

    .line 1776
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1777
    return v0

    .line 1771
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_20
    move-exception v2

    .line 1772
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1774
    return v0
.end method

.method public grdmRequestKey(I[B)I
    .registers 7
    .param p1, "domainIndex"    # I
    .param p2, "key_blob"    # [B

    .line 1736
    const-string/jumbo v0, "grdmRequestKey() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_request_key(I[B)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_10} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 1755
    :catch_11
    move-exception v1

    .line 1756
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1757
    return v0

    .line 1752
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 1753
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1754
    return v0

    .line 1749
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1b
    move-exception v1

    .line 1750
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1751
    return v0

    .line 1745
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_20
    move-exception v2

    .line 1746
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1748
    return v0
.end method

.method public injectEsesmKeyset()I
    .registers 4

    .line 255
    const-string/jumbo v0, "injectEsesmKeyset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_16

    .line 258
    const-string v0, "eSEK is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v0, -0xa

    return v0

    .line 268
    :cond_16
    const/16 v0, -0x5a

    :try_start_18
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->inject_esesm_keyset()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1e} :catch_2e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1e} :catch_29
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_1f

    return v0

    .line 279
    :catch_1f
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    return v0

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 278
    return v0

    .line 273
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_29
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 275
    return v0

    .line 269
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2e
    move-exception v0

    .line 270
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 272
    const/16 v1, -0x5c

    return v1
.end method

.method public isConnected()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-eqz v0, :cond_6

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isEseSupported()Z
    .registers 5

    .line 1899
    const-string/jumbo v0, "isEseSupported() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const/4 v0, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_14

    .line 1908
    return v0

    .line 1910
    :cond_14
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_19} :catch_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_19} :catch_25
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_19} :catch_20
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1b

    .line 1911
    const/4 v0, 0x1

    return v0

    .line 1922
    :catch_1b
    move-exception v1

    .line 1923
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1924
    return v0

    .line 1919
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_20
    move-exception v1

    .line 1920
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1921
    return v0

    .line 1916
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_25
    move-exception v1

    .line 1917
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1918
    return v0

    .line 1912
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2a
    move-exception v2

    .line 1913
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1915
    return v0
.end method

.method public isLccmSwp()I
    .registers 4

    .line 383
    const/16 v0, -0x5a

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->isLccmSwp()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_8} :catch_18
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_8} :catch_13
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 394
    :catch_9
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    return v0

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 393
    return v0

    .line 388
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_13
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 390
    return v0

    .line 384
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_18
    move-exception v0

    .line 385
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "SEC_ESE_ServiceManager"

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 387
    const/16 v1, -0x5c

    return v1
.end method

.method public isOpened()Z
    .registers 7

    .line 1480
    const/4 v0, -0x1

    .line 1482
    .local v0, "result":I
    const-string/jumbo v1, "isOpened() is called."

    const-string v2, "SEC_ESE_ServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_5e

    move v0, v3

    .line 1494
    nop

    .line 1497
    const/16 v3, -0xc8

    if-ne v0, v3, :cond_1d

    .line 1498
    :try_start_14
    const-string v3, "eSE is busy now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const/4 v1, 0x1

    return v1

    .line 1507
    :catch_1b
    move-exception v3

    goto :goto_43

    .line 1500
    :cond_1d
    if-nez v0, :cond_28

    .line 1501
    const-string v3, "eSE is NOT busy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    goto :goto_41

    .line 1504
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eSE returned error value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_41} :catch_1b

    .line 1511
    :goto_41
    nop

    .line 1512
    return v1

    .line 1508
    .local v3, "e":Ljava/lang/Exception;
    :goto_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOpened close Exception! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    .line 1510
    return v1

    .line 1491
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5e
    move-exception v3

    .line 1492
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOpened openSpi Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    return v1
.end method

.method public jniICD()I
    .registers 6

    .line 1212
    const-string v0, "SEC_ESE_ServiceManager"

    const/16 v1, -0x3e7

    .line 1220
    .local v1, "icdResult":I
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->ICD()I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_a} :catch_59
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_a} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    .end local v1    # "icdResult":I
    .local v0, "icdResult":I
    goto :goto_72

    .line 1232
    .end local v0    # "icdResult":I
    .restart local v1    # "icdResult":I
    :catch_b
    move-exception v2

    .line 1233
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/16 v0, -0x3e7

    .end local v1    # "icdResult":I
    .restart local v0    # "icdResult":I
    goto :goto_73

    .line 1228
    .end local v0    # "icdResult":I
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "icdResult":I
    :catch_25
    move-exception v2

    .line 1230
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/16 v0, -0x3e7

    .end local v1    # "icdResult":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "icdResult":I
    goto :goto_72

    .line 1225
    .end local v0    # "icdResult":I
    .restart local v1    # "icdResult":I
    :catch_3f
    move-exception v2

    .line 1226
    .local v2, "e1":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/16 v0, -0x3e7

    .end local v1    # "icdResult":I
    .end local v2    # "e1":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "icdResult":I
    goto :goto_72

    .line 1222
    .end local v0    # "icdResult":I
    .restart local v1    # "icdResult":I
    :catch_59
    move-exception v2

    .line 1223
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const/16 v0, -0x3e7

    .line 1235
    .end local v1    # "icdResult":I
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v0    # "icdResult":I
    :goto_72
    nop

    .line 1238
    :goto_73
    return v0
.end method

.method public open()I
    .registers 3

    .line 1451
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "open() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v0

    return v0
.end method

.method public open(I)I
    .registers 4
    .param p1, "flag"    # I

    .line 1564
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "open() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v0

    return v0
.end method

.method public openSpi(I)I
    .registers 5
    .param p1, "flag"    # I

    .line 1930
    const-string/jumbo v0, "openSpi() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/SemService/ISemService;->open_Spi(I)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_10} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 1949
    :catch_11
    move-exception v1

    .line 1950
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1951
    return v0

    .line 1946
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 1947
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1948
    return v0

    .line 1943
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1b
    move-exception v1

    .line 1944
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1945
    return v0

    .line 1939
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_20
    move-exception v0

    .line 1940
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1942
    const/16 v1, -0x5c

    return v1
.end method

.method public resetForCOSU(I)I
    .registers 7
    .param p1, "type"    # I

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetForCOSU is called. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const/4 v0, -0x1

    .line 1434
    .local v0, "result":I
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-nez v2, :cond_24

    .line 1435
    const-string v2, "SemService is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    return v0

    .line 1440
    :cond_24
    :try_start_24
    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->resetForCOSU()I

    move-result v2

    move v0, v2

    .line 1441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetForCOSU : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_40} :catch_41

    .line 1444
    goto :goto_58

    .line 1442
    :catch_41
    move-exception v2

    .line 1443
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call resetForCOSU Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_58
    return v0
.end method

.method public scp11CertificateCheck()I
    .registers 4

    .line 224
    const-string/jumbo v0, "scp11CertificateCheck() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_16

    .line 227
    const-string v0, "eSEK is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/16 v0, -0xa

    return v0

    .line 237
    :cond_16
    const/16 v0, -0x5a

    :try_start_18
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->scp11_certificate_check()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1e} :catch_2e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1e} :catch_29
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_1f

    return v0

    .line 248
    :catch_1f
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    return v0

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 247
    return v0

    .line 242
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_29
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 244
    return v0

    .line 238
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2e
    move-exception v0

    .line 239
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 241
    const/16 v1, -0x5c

    return v1
.end method

.method public semFactory()V
    .registers 4

    .line 156
    const-string/jumbo v0, "semFactory() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->sem_factory()V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_d} :catch_1d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_d} :catch_18
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_26

    .line 171
    :catch_e
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_26

    .line 167
    :catch_18
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_26

    .line 164
    :catch_1d
    move-exception v0

    .line 165
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 173
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_26
    nop

    .line 174
    :goto_27
    return-void
.end method

.method public sem_handleCCM([BI)[Ljava/lang/String;
    .registers 7
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I

    .line 319
    const-string/jumbo v0, "sem_handleCCM() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCM([BI)[Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_1f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_f} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return-object v0

    .line 337
    :catch_10
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    return-object v0

    .line 334
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 336
    return-object v0

    .line 331
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1a
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 333
    return-object v0

    .line 327
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1f
    move-exception v2

    .line 328
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 330
    return-object v0
.end method

.method public sem_handleCCMCB([BI[BI)[Ljava/lang/String;
    .registers 11
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I
    .param p3, "respData"    # [B
    .param p4, "respLen"    # I

    .line 344
    const-string/jumbo v0, "sem_handleCCMCB() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "ccmData0103":[B
    const/4 v2, 0x0

    .line 354
    .local v2, "ret":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_b
    iget-object v4, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 356
    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object v0, v4

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccmData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccmDataLen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_47} :catch_57
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b .. :try_end_47} :catch_52
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b .. :try_end_47} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_47} :catch_48

    .line 359
    return-object v2

    .line 370
    :catch_48
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    return-object v3

    .line 367
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4d
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 369
    return-object v3

    .line 364
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_52
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 366
    return-object v3

    .line 360
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_57
    move-exception v4

    .line 361
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v5, "Failed to connect service."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 363
    return-object v3
.end method

.method public send([B)[B
    .registers 10
    .param p1, "baCmd"    # [B

    .line 1516
    const-string/jumbo v0, "send() for SE API is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const v0, 0x10002

    new-array v0, v0, [B

    .line 1524
    .local v0, "baRsp":[B
    const/4 v2, 0x0

    .line 1525
    .local v2, "cLen":I
    const/4 v3, 0x0

    .line 1527
    .local v3, "baRspLen":I
    if-eqz p1, :cond_28

    .line 1528
    array-length v2, p1

    .line 1529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Len : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_28
    const/4 v4, 0x0

    :try_start_29
    iget-object v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v2, v0, v6}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v5

    move v3, v5

    .line 1535
    const/4 v5, 0x1

    if-ge v3, v5, :cond_3a

    .line 1536
    const-string v5, "RSP is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    return-object v4

    .line 1539
    :cond_3a
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v0, v5

    .line 1540
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baRsp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_59} :catch_a2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_29 .. :try_end_59} :catch_8a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_29 .. :try_end_59} :catch_72
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_59} :catch_5a

    .line 1542
    return-object v0

    .line 1555
    :catch_5a
    move-exception v5

    .line 1556
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    return-object v4

    .line 1552
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_72
    move-exception v5

    .line 1553
    .local v5, "e1":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    return-object v4

    .line 1549
    .end local v5    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :catch_8a
    move-exception v5

    .line 1550
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    return-object v4

    .line 1544
    .end local v5    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_a2
    move-exception v5

    .line 1546
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    return-object v4
.end method

.method public send([BI)[B
    .registers 11
    .param p1, "baCmd"    # [B
    .param p2, "flag"    # I

    .line 1586
    const-string/jumbo v0, "send() for normal/secure SPI is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    const v0, 0x10002

    new-array v0, v0, [B

    .line 1594
    .local v0, "baRsp":[B
    const/4 v2, 0x0

    .line 1595
    .local v2, "cLen":I
    const/4 v3, 0x0

    .line 1597
    .local v3, "baRspLen":I
    if-eqz p1, :cond_28

    .line 1598
    array-length v2, p1

    .line 1599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Len : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_28
    const/4 v4, 0x0

    :try_start_29
    iget-object v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v5, p1, v2, v0, p2}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v5

    move v3, v5

    .line 1605
    const/4 v5, 0x1

    if-ge v3, v5, :cond_39

    .line 1606
    const-string v5, "RSP is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    return-object v4

    .line 1609
    :cond_39
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v0, v5

    .line 1610
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baRsp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_58} :catch_a1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_29 .. :try_end_58} :catch_89
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_29 .. :try_end_58} :catch_71
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_58} :catch_59

    .line 1612
    return-object v0

    .line 1625
    :catch_59
    move-exception v5

    .line 1626
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return-object v4

    .line 1622
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_71
    move-exception v5

    .line 1623
    .local v5, "e1":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    return-object v4

    .line 1619
    .end local v5    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :catch_89
    move-exception v5

    .line 1620
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-object v4

    .line 1614
    .end local v5    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_a1
    move-exception v5

    .line 1616
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1617
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return-object v4
.end method

.method public sendData([BI[B)I
    .registers 8
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B

    .line 2009
    const-string/jumbo v0, "sendData() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_11} :catch_21
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_11} :catch_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_11} :catch_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    return v0

    .line 2028
    :catch_12
    move-exception v1

    .line 2029
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2030
    return v0

    .line 2025
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_17
    move-exception v1

    .line 2026
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2027
    return v0

    .line 2022
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1c
    move-exception v1

    .line 2023
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 2024
    return v0

    .line 2018
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_21
    move-exception v0

    .line 2019
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2021
    const/16 v1, -0x5c

    return v1
.end method

.method public sendData([BI[BI)I
    .registers 8
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B
    .param p4, "flag"    # I

    .line 1983
    const-string/jumbo v0, "sendData() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_10} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2002
    :catch_11
    move-exception v1

    .line 2003
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2004
    return v0

    .line 1999
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 2000
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2001
    return v0

    .line 1996
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1b
    move-exception v1

    .line 1997
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1998
    return v0

    .line 1992
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_20
    move-exception v0

    .line 1993
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1995
    const/16 v1, -0x5c

    return v1
.end method

.method public sercureLog(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 1303
    const-string v0, "SecureLog() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/SemService/ISemService;->secureLog(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_c} :catch_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_c} :catch_23
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_c} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_15
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_c} :catch_e

    .line 1327
    nop

    .line 1328
    return-void

    .line 1324
    :catch_e
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return-void

    .line 1321
    .end local v0    # "e":Ljava/lang/Error;
    :catch_15
    move-exception v0

    .line 1322
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    return-void

    .line 1318
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    return-void

    .line 1315
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_23
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return-void

    .line 1312
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2a
    move-exception v0

    .line 1313
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-void
.end method

.method public startRequestCredentials([B[BLjava/lang/String;[B)I
    .registers 8
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "key_blob"    # [B

    .line 1660
    const-string/jumbo v0, "startRequestCredentials() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const/16 v0, -0x5a

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_request_credentials([B[BLjava/lang/String;[B)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_10} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 1679
    :catch_11
    move-exception v1

    .line 1680
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1681
    return v0

    .line 1676
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v1

    .line 1677
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1678
    return v0

    .line 1673
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1b
    move-exception v1

    .line 1674
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1675
    return v0

    .line 1669
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_20
    move-exception v0

    .line 1670
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1672
    const/16 v1, -0x5c

    return v1
.end method

.method public startSLOG()V
    .registers 4

    .line 1331
    const-string v0, "START SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->start_SLOG()V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_c} :catch_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_c} :catch_23
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_c} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_15
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_c} :catch_e

    .line 1355
    nop

    .line 1356
    return-void

    .line 1352
    :catch_e
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "S_SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return-void

    .line 1349
    .end local v0    # "e":Ljava/lang/Error;
    :catch_15
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "S_SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    return-void

    .line 1346
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "S_SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return-void

    .line 1343
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_23
    move-exception v0

    .line 1344
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "S_SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    return-void

    .line 1340
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2a
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return-void
.end method

.method public startattestation([BI[BI)I
    .registers 9
    .param p1, "drRsp"    # [B
    .param p2, "drLen"    # I
    .param p3, "svRsp"    # [B
    .param p4, "svLen"    # I

    .line 1242
    const-string/jumbo v0, "startattestation() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/16 v0, -0x5c

    :try_start_a
    const-string v2, "StartAttestation"

    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    .line 1251
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_attestation([BI[BI)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_15} :catch_27
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_15} :catch_22
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_15} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    return v0

    .line 1262
    :catch_16
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1264
    const/16 v1, -0x5a

    return v1

    .line 1259
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1d
    move-exception v1

    .line 1260
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1261
    return v0

    .line 1256
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_22
    move-exception v1

    .line 1257
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1258
    return v0

    .line 1252
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_27
    move-exception v2

    .line 1253
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1255
    return v0
.end method

.method public stopRequestCredentials()V
    .registers 4

    .line 1686
    const-string/jumbo v0, "stopRequestCredentials() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->stop_request_credentials()V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_d} :catch_1d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_d} :catch_18
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_26

    .line 1702
    :catch_e
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 1700
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v0

    .line 1701
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_26

    .line 1698
    :catch_18
    move-exception v0

    .line 1699
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_26

    .line 1695
    :catch_1d
    move-exception v0

    .line 1696
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1704
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_26
    nop

    .line 1705
    :goto_27
    return-void
.end method

.method public stopSLOG()V
    .registers 4

    .line 1359
    const-string v0, "STOP SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->stop_SLOG()V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_c} :catch_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_c} :catch_23
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_c} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_15
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_c} :catch_e

    .line 1383
    nop

    .line 1384
    return-void

    .line 1380
    :catch_e
    move-exception v0

    .line 1381
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "S_SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return-void

    .line 1377
    .end local v0    # "e":Ljava/lang/Error;
    :catch_15
    move-exception v0

    .line 1378
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ST_SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return-void

    .line 1374
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 1375
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "ST_SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    return-void

    .line 1371
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_23
    move-exception v0

    .line 1372
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "ST_SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return-void

    .line 1368
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2a
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return-void
.end method

.method public verifyEsesmKeyset()I
    .registers 4

    .line 286
    const-string/jumbo v0, "verifyEsesmKeyset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_16

    .line 289
    const-string v0, "eSEK is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v0, -0xa

    return v0

    .line 299
    :cond_16
    const/16 v0, -0x5a

    :try_start_18
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->verify_esesm_keyset()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1e} :catch_2e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_1e} :catch_29
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_1f

    return v0

    .line 310
    :catch_1f
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    return v0

    .line 307
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 309
    return v0

    .line 304
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_29
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 306
    return v0

    .line 300
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2e
    move-exception v0

    .line 301
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 303
    const/16 v1, -0x5c

    return v1
.end method
