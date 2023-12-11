.class public final Lcom/android/server/SecureKeyConst;
.super Ljava/lang/Object;
.source "SecureKeyConst.java"


# static fields
.field public static final AT_CMD_DRK_V1_WRITING_END:Ljava/lang/String; = "FF"

.field public static final AT_CMD_DRK_V2_VERSION:Ljava/lang/String; = "01"

.field public static final AT_CMD_DRK_V2_WRITING_END:Ljava/lang/String; = "FFF"

.field public static final AT_MAIN_INDEX:I = 0x0

.field public static final AT_MAIN_INDEX_READ_DATA:I = 0x1

.field public static final AT_MAIN_INDEX_TC_DATA:I = 0x9

.field public static final AT_MAIN_INDEX_VERIFY:I = 0x0

.field public static final AT_MAIN_INDEX_WRITE_DATA:I = 0x2

.field public static final AT_MAIN_READ_DATA:I = 0xa

.field public static final AT_MAIN_TC_DATA:I = 0x5a

.field public static final AT_MAIN_VERIFY:I = 0x0

.field public static final AT_MAIN_WRITE_DATA:I = 0x14

.field public static final AT_MID_INDEX:I = 0x1

.field public static final AT_MINOR_INDEX:I = 0x2

.field public static final AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG_FAIL(FAILED CONNECTION)"

.field public static final AT_RESPONSE_EXCEPION_OCCURS:Ljava/lang/String; = "NG_FAIL(EXCEPTION_OCCURS)"

.field public static final AT_RESPONSE_FAILED:Ljava/lang/String; = "NG_FAIL"

.field public static final AT_RESPONSE_INSTANCE_ERROR:Ljava/lang/String; = "NG_FAIL(INSTANCE ERROR)"

.field public static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG_FAIL(INVALID_PARAM)"

.field public static final AT_RESPONSE_MISSED_DATA:Ljava/lang/String; = "NG_FAIL(DATA MISSED)"

.field public static final AT_RESPONSE_NO_EM_TOKEN:Ljava/lang/String; = "NG_FAIL(NO_TOKEN)"

.field public static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field public static final AT_RESPONSE_PMK_OK:Ljava/lang/String; = "OK(NOT SUPPORT PMK IN M OS)"

.field public static final AT_RESPONSE_UNIMPLEMENTED:Ljava/lang/String; = "NG_FAIL(UNIMPLEMENTED_CMD)"

.field public static final CSR_BRANCH_ID_LENGTH:I = 0x3

.field public static final CSR_REQUEST_PHASE2:I = 0x16

.field public static final CSR_TIMESTAMP_LENGTH:I = 0xe

.field public static final DRK_V1_SEQ_NO:I = 0x2

.field public static final DRK_V2_SEQ_NO:I = 0x3

.field public static final DRK_V2_VERSION:I = 0x2

.field public static final ERR_KEYMASTER_GAK_ROOT_FAIL:I = -0x2cf7

.field public static final ERR_KEYMASTER_JDM_FALSE_PROP:I = -0x2cf4

.field public static final ERR_KEYMASTER_JDM_NULL_PROP:I = -0x2cf5

.field public static final ERR_KEYMASTER_VERIFICATION_FAIL:I = -0x2cf6

.field public static final GOOGLE_ATTESTATION_KEY_VERIFY:I = 0x4

.field public static final GOOGLE_ATTESTATION_KEY_WRITE:I = 0x1a

.field public static final GoogleDevRootPubKey:[B

.field public static final GoogleRootPubKey:[B

.field public static final KEY_DRK_V1:I = 0x0

.field public static final KEY_DRK_V2:I = 0x2

.field public static final KEY_GOOGLE_ATTESTATION:I = 0x1

.field public static final KEY_RKP_DEVINFO:I = 0x5

.field public static final KEY_SAMSUNG_ATTESTATION:I = 0x3

.field public static final KEY_STRONGBOX_ATTESTATION:I = 0x4

.field public static final MODE_MNFR_ALLOW_ATCMD:I = 0x1c

.field public static final NOT_ERROR:I = 0x0

.field public static final PDP_ERROR:Ljava/lang/String; = "PDP_ERROR"

.field public static final REMOTE_KEY_PROVISIONING_DEVINFO_READ:I = 0xd

.field public static final SAMSUNG_ATTESTATION_CSR_REQUEST:I = 0x18

.field public static final SAMSUNG_ATTESTATION_KEY_VERIFY:I = 0x3

.field public static final SAMSUNG_ATTESTATION_KEY_WRITE:I = 0x19

.field public static final SAMSUNG_DEVICE_ROOT_KEY_UID_READ_PHASE1:I = 0xa

.field public static final SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE1:I = 0x0

.field public static final SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE2:I = 0x2

.field public static final SAMSUNG_DEVICE_ROOT_KEY_VERSION_READ_PHASE2:I = 0xc

.field public static final SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE1:I = 0x14

.field public static final SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE2:I = 0x17

.field public static final SAMSUNG_PAYMENT_KEY_UID_READ_PHASE1:I = 0xb

.field public static final SAMSUNG_PAYMENT_KEY_VERIFY:I = 0x1

.field public static final SAMSUNG_PAYMENT_KEY_WRITE_PHASE1:I = 0x15

.field public static final STRONGBOX_ATTESTATION_KEY_VERIFY:I = 0x5

.field public static final STRONGBOX_ATTESTATION_KEY_WRITE:I = 0x1b

.field public static final TC_CHECK_DRK_VERSION:I = 0x5b

.field public static final TC_GENERATESERVICEKEY:I = 0x5f

.field public static final TC_GENERATESERVICEKEYWITHTLV:I = 0x60

.field public static final TC_GETDEVICEINFO:I = 0x61

.field public static final TC_GETDRKCERT:I = 0x5e

.field public static final TC_GETDRKUID:I = 0x5d

.field public static final TC_ISEXIST_DRK:I = 0x5c

.field public static final TC_SERVICE_AVAILABLE:I = 0x5a

.field public static final isDevDevice:Ljava/lang/String;

.field public static final isJDM:Z


# instance fields
.field public isJDMProductNotInHouse:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 90
    const/16 v0, 0x226

    new-array v1, v0, [B

    fill-array-data v1, :array_26

    sput-object v1, Lcom/android/server/SecureKeyConst;->GoogleRootPubKey:[B

    .line 139
    new-array v0, v0, [B

    fill-array-data v0, :array_13e

    sput-object v0, Lcom/android/server/SecureKeyConst;->GoogleDevRootPubKey:[B

    .line 196
    const-string/jumbo v0, "in_house"

    const-string/jumbo v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SecureKeyConst;->isJDM:Z

    .line 198
    const-string/jumbo v0, "ro.boot.em.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SecureKeyConst;->isDevDevice:Ljava/lang/String;

    return-void

    :array_26
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x2t
        0xft
        0x0t
        0x30t
        -0x7et
        0x2t
        0xat
        0x2t
        -0x7et
        0x2t
        0x1t
        0x0t
        -0x51t
        -0x4at
        -0x39t
        -0x7et
        0x2bt
        -0x4ft
        -0x59t
        0x1t
        -0x14t
        0x2bt
        -0x4ct
        0x2et
        -0x75t
        -0x34t
        0x54t
        0x16t
        0x63t
        -0x55t
        -0x11t
        -0x68t
        0x2ft
        0x32t
        -0x39t
        0x7ft
        0x75t
        0x31t
        0x3t
        0xct
        -0x69t
        0x52t
        0x4bt
        0x1bt
        0x5ft
        -0x18t
        0x9t
        -0x5t
        -0x39t
        0x2at
        -0x57t
        0x45t
        0x1ft
        0x74t
        0x3ct
        -0x43t
        -0x66t
        0x6ft
        0x13t
        0x35t
        0x74t
        0x4at
        -0x5bt
        0x5et
        0x77t
        -0xat
        -0x4at
        -0x54t
        0x35t
        0x35t
        -0x12t
        0x17t
        -0x3et
        0x5et
        0x63t
        -0x6bt
        0x17t
        -0x23t
        -0x64t
        -0x6et
        -0x1at
        0x37t
        0x4at
        0x53t
        -0x35t
        -0x2t
        0x25t
        -0x71t
        -0x71t
        -0x5t
        -0x4at
        -0x3t
        0x12t
        -0x6dt
        0x78t
        -0x5et
        0x2at
        0x4ct
        -0x57t
        -0x64t
        0x45t
        0x2dt
        0x47t
        -0x5bt
        -0x61t
        0x32t
        0x1t
        -0xct
        0x41t
        -0x69t
        -0x36t
        0x1ct
        -0x33t
        0x7et
        0x76t
        0x2ft
        -0x4et
        -0xbt
        0x31t
        0x51t
        -0x4at
        -0x2t
        -0x4et
        -0x1t
        -0x3t
        0x2bt
        0x6ft
        -0x1ct
        -0x2t
        0x5bt
        -0x3at
        -0x43t
        -0x62t
        -0x3dt
        0x4bt
        -0x2t
        0x8t
        0x23t
        -0x63t
        -0x56t
        -0x4t
        -0x15t
        -0x72t
        -0x4bt
        -0x58t
        -0x13t
        0x2bt
        0x3at
        -0x33t
        -0x64t
        0x5et
        0x3at
        0x77t
        -0x70t
        -0x1ft
        -0x4bt
        0x14t
        0x42t
        0x79t
        0x31t
        0x59t
        -0x7bt
        -0x68t
        0x11t
        -0x53t
        -0x62t
        -0x4et
        -0x57t
        0x6bt
        -0x43t
        -0x29t
        -0x5bt
        0x7ct
        -0x6dt
        -0x57t
        0x1ct
        0x41t
        -0x4t
        -0x33t
        0x27t
        -0x2at
        0x7ft
        -0x2at
        -0xat
        0x71t
        -0x56t
        0xbt
        -0x7ft
        0x52t
        0x61t
        -0x53t
        0x38t
        0x4ft
        -0x5dt
        0x79t
        0x44t
        -0x7at
        0x46t
        0x4t
        -0x23t
        -0x4dt
        -0x28t
        -0x3ct
        -0x7t
        0x20t
        -0x5ft
        -0x65t
        0x16t
        0x56t
        -0x3et
        -0xft
        0x4at
        -0x2at
        -0x30t
        0x3ct
        0x56t
        -0x14t
        0x6t
        0x8t
        -0x67t
        0x4t
        0x1ct
        0x1et
        -0x2ft
        -0x5bt
        -0x2t
        0x6dt
        0x34t
        0x40t
        -0x4bt
        0x56t
        -0x46t
        -0x2ft
        -0x30t
        -0x5ft
        0x52t
        0x58t
        -0x64t
        0x53t
        -0x1bt
        0x5dt
        0x37t
        0x7t
        0x62t
        -0x10t
        0x12t
        0x2et
        -0x11t
        -0x6ft
        -0x7at
        0x1bt
        0x1bt
        0xet
        0x6ct
        0x4ct
        -0x80t
        -0x6et
        0x74t
        -0x67t
        -0x40t
        -0x17t
        -0x42t
        -0x40t
        -0x48t
        0x3et
        0x3bt
        -0x3ft
        -0x7t
        0x3ct
        0x72t
        -0x40t
        0x49t
        0x60t
        0x4bt
        -0x43t
        0x2ft
        0x13t
        0x45t
        -0x1at
        0x2ct
        0x3ft
        -0x72t
        0x26t
        -0x25t
        -0x14t
        0x6t
        -0x37t
        0x47t
        0x66t
        -0xdt
        -0x3ft
        0x28t
        0x23t
        -0x63t
        0x4ft
        0x43t
        0x12t
        -0x6t
        -0x28t
        0x12t
        0x38t
        -0x79t
        -0x20t
        0x6bt
        -0x14t
        -0xbt
        0x67t
        0x58t
        0x3bt
        -0x8t
        0x35t
        0x5at
        -0x7ft
        -0x2t
        -0x16t
        -0x46t
        -0x7t
        -0x66t
        -0x7dt
        -0x38t
        -0x21t
        0x3et
        0x2at
        0x32t
        0x2at
        -0x4t
        0x67t
        0x2bt
        -0xft
        0x20t
        -0x4ft
        0x35t
        0x15t
        -0x75t
        0x68t
        0x21t
        -0x32t
        -0x51t
        0x30t
        -0x65t
        0x6et
        -0x12t
        0x77t
        -0x7t
        -0x78t
        0x33t
        -0x50t
        0x18t
        -0x26t
        -0x5ft
        0xet
        0x45t
        0x1ft
        0x6t
        -0x5dt
        0x74t
        -0x2bt
        0x7t
        -0x7ft
        -0xdt
        0x59t
        0x8t
        0x29t
        0x66t
        -0x45t
        0x77t
        -0x75t
        -0x6dt
        0x8t
        -0x6ct
        0x26t
        -0x68t
        -0x19t
        0x4et
        0xbt
        -0x33t
        0x24t
        0x62t
        -0x76t
        0x1t
        -0x3et
        -0x34t
        0x3t
        -0x1bt
        0x1ft
        0xbt
        0x3et
        0x5bt
        0x4at
        -0x3ft
        -0x1ct
        -0x21t
        -0x62t
        -0x51t
        -0x61t
        -0xat
        -0x5ct
        -0x6et
        -0x59t
        0x7ct
        0x14t
        -0x7dt
        -0x78t
        0x28t
        -0x7bt
        0x1t
        0x5bt
        0x42t
        0x2ct
        -0x1at
        0x7bt
        -0x80t
        -0x48t
        -0x74t
        -0x65t
        0x48t
        -0x1ft
        0x3bt
        0x60t
        0x7at
        -0x4bt
        0x45t
        -0x39t
        0x23t
        -0x1t
        -0x74t
        0x44t
        -0x8t
        -0xet
        -0x2dt
        0x68t
        -0x47t
        -0xat
        0x52t
        0xdt
        0x31t
        0x14t
        0x5et
        -0x41t
        -0x62t
        -0x7at
        0x2at
        -0x29t
        0x1dt
        -0xat
        -0x5dt
        -0x41t
        -0x2et
        0x45t
        0x9t
        0x59t
        -0x2at
        0x53t
        0x74t
        0xdt
        -0x69t
        -0x5ft
        0x2ft
        0x36t
        -0x75t
        0x13t
        -0x11t
        0x66t
        -0x2bt
        -0x30t
        -0x5bt
        0x4at
        0x6et
        0x2ft
        0x5dt
        -0x66t
        0x6ft
        -0x11t
        0x44t
        0x68t
        0x32t
        -0x44t
        0x67t
        -0x7ct
        0x47t
        0x25t
        -0x7at
        0x1ft
        0x9t
        0x3dt
        -0x30t
        -0x1at
        -0xdt
        0x40t
        0x5dt
        -0x58t
        -0x6at
        0x43t
        -0x11t
        0xft
        0x4dt
        0x69t
        -0x4at
        0x42t
        0x0t
        0x51t
        -0x3t
        -0x47t
        0x30t
        0x49t
        0x67t
        0x3et
        0x36t
        -0x6bt
        0x5t
        -0x80t
        -0x2dt
        -0x33t
        -0xct
        -0x5t
        -0x30t
        -0x75t
        -0x3bt
        -0x7ct
        -0x7dt
        -0x6bt
        0x26t
        0x0t
        0x63t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_13e
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x2t
        0xft
        0x0t
        0x30t
        -0x7et
        0x2t
        0xat
        0x2t
        -0x7et
        0x2t
        0x1t
        0x0t
        -0x19t
        -0x37t
        0x1dt
        0x35t
        -0x7t
        -0x68t
        0x72t
        0x2bt
        0x41t
        0x64t
        0x37t
        -0x6dt
        -0x11t
        0x16t
        -0x57t
        -0x5at
        -0x37t
        0x42t
        0x63t
        0x67t
        -0x7ft
        0x18t
        0x2ct
        0x3at
        -0x38t
        -0x6et
        0x65t
        -0x65t
        0x7et
        0x76t
        -0x77t
        0x32t
        -0x72t
        0x2t
        -0xft
        -0x75t
        -0x4t
        -0x31t
        -0x5et
        0x1dt
        -0x7ct
        -0x67t
        0x21t
        -0x13t
        0x1bt
        0x28t
        0x6ft
        -0x78t
        -0x16t
        -0x45t
        0x1et
        0x3et
        0x34t
        -0x76t
        0x16t
        -0x1et
        0x1at
        -0x5at
        -0x77t
        -0xat
        -0x20t
        0x40t
        -0xct
        0x5t
        0x46t
        -0x39t
        -0x38t
        -0x3ct
        -0x6bt
        0x5ct
        -0x24t
        -0x71t
        0x4ft
        0xat
        0x40t
        -0x59t
        -0x7et
        -0x63t
        -0x1bt
        -0x65t
        -0x4at
        -0x75t
        0x60t
        -0x6ct
        0x2bt
        0x59t
        0x12t
        -0x6et
        -0x6t
        0x22t
        0x33t
        0x5bt
        -0x25t
        -0x7dt
        -0x16t
        0x24t
        0x51t
        0x0t
        -0x53t
        -0x16t
        -0x6dt
        -0x62t
        0x68t
        0x7et
        -0x79t
        -0x37t
        0x66t
        -0x4at
        0x5ct
        -0x65t
        0x78t
        -0x37t
        -0x6ft
        -0x8t
        -0x7at
        -0x7t
        0x51t
        -0x2ct
        -0x7bt
        -0x2et
        -0x39t
        0x54t
        -0x13t
        -0x2ft
        -0x28t
        -0x7ct
        -0x37t
        0x23t
        0x65t
        0x5at
        0x16t
        0x32t
        -0x66t
        0xdt
        0x54t
        0x3ft
        -0x1bt
        0x24t
        0x3ft
        -0x4bt
        0x37t
        0x11t
        0x0t
        -0x34t
        0x1ct
        0x7dt
        0x76t
        0xet
        -0x45t
        0x3bt
        -0x41t
        -0x2t
        -0x8t
        -0x5bt
        -0x7at
        0x58t
        -0x4dt
        -0x56t
        0x36t
        0x0t
        0x1bt
        -0x5t
        -0x1ct
        0x49t
        0x50t
        0x7et
        -0x20t
        -0x4ft
        0x68t
        -0x3at
        -0x21t
        -0x25t
        0x5bt
        0x7dt
        0x5ct
        0x6t
        -0x7dt
        -0x59t
        -0x1bt
        0x4et
        -0x7t
        -0x45t
        0x49t
        -0x29t
        0x63t
        -0x1bt
        -0x5et
        -0x5ct
        -0x42t
        0x69t
        0x28t
        0x1bt
        -0x5at
        -0x28t
        -0x37t
        -0x61t
        0x50t
        0x56t
        0x30t
        0x7ft
        -0x3t
        0x4at
        -0x26t
        0x11t
        0x9t
        -0x76t
        0x1bt
        -0x27t
        -0x64t
        -0x5dt
        0x7at
        0x7ft
        -0x45t
        -0x3et
        -0x6bt
        -0x21t
        -0x7bt
        0x2ft
        -0x1t
        -0x38t
        -0x2dt
        0x75t
        0x51t
        -0x23t
        -0x35t
        -0x14t
        -0x2bt
        -0x7at
        -0x9t
        -0x4ct
        0x10t
        0x38t
        -0x29t
        -0x53t
        0x1ft
        0x24t
        -0x1dt
        0x32t
        0x49t
        -0x39t
        -0x33t
        -0x68t
        0x2t
        0x3ct
        -0x44t
        -0xct
        -0x40t
        -0x3t
        0x41t
        0x61t
        -0x63t
        0x3t
        -0x35t
        0x74t
        0x62t
        -0x57t
        0x1ct
        0x68t
        0x12t
        0xbt
        -0xdt
        0x26t
        0x2bt
        -0x2t
        0x2ft
        -0x4t
        -0xft
        -0x5dt
        0x4at
        0x1ct
        -0x2ct
        0x2bt
        -0xft
        0x47t
        -0x4ft
        0x71t
        0x5et
        -0x60t
        0x3t
        -0x48t
        0x61t
        -0x45t
        0x24t
        0x15t
        -0x30t
        0x7bt
        -0x21t
        0x56t
        -0xat
        -0x78t
        0x74t
        -0x61t
        0x5dt
        -0x12t
        -0x40t
        0x5ct
        -0x4t
        0x62t
        0x9t
        -0x7ft
        -0x50t
        0x32t
        0x62t
        -0x4ct
        -0xat
        -0x36t
        0x44t
        0x69t
        -0x7ct
        -0xat
        -0x50t
        0x78t
        0x1ct
        0x38t
        -0x29t
        0x2at
        0x2t
        0x6et
        -0x53t
        -0x43t
        0x52t
        -0x54t
        -0x4et
        0x1et
        0x6ct
        -0x2ft
        0x5at
        -0x78t
        0x48t
        0x2at
        -0x4at
        -0x7et
        -0x5ft
        0x72t
        -0x3et
        0x40t
        0x5at
        0x3et
        0xft
        0xdt
        0x5et
        0x53t
        0x18t
        0x62t
        0x48t
        -0x2at
        0x7ct
        -0x60t
        0x55t
        0x26t
        -0x32t
        -0x57t
        -0x11t
        0x57t
        -0x74t
        -0x27t
        -0x7ct
        0x5ft
        0x3dt
        0x28t
        0x26t
        -0x48t
        -0x1ct
        -0x2t
        -0x67t
        -0x5t
        0x32t
        0x11t
        0x43t
        0x19t
        -0x23t
        0xat
        -0x7ct
        0x54t
        -0x1t
        0x76t
        0x6bt
        -0x46t
        0x1t
        0x7ct
        -0x60t
        0x39t
        -0x26t
        -0x10t
        -0x69t
        -0x23t
        0x4bt
        -0xdt
        -0x65t
        0x15t
        0x1dt
        0x7at
        0x71t
        0x4dt
        -0x67t
        0x39t
        -0x48t
        -0x1t
        0x33t
        0x20t
        0x30t
        0x7et
        0x24t
        -0x78t
        -0x38t
        0x29t
        -0x10t
        0x7bt
        -0x47t
        0x1ct
        -0x7dt
        -0x70t
        0x2et
        -0x5t
        0x7ct
        0x43t
        -0x18t
        0x44t
        0x4at
        0x28t
        0x60t
        -0x37t
        -0x3t
        0x47t
        -0x25t
        0x64t
        -0x4at
        -0x25t
        -0x4dt
        -0xat
        0x4at
        -0x30t
        -0x36t
        0x6et
        0xet
        -0x3dt
        0x4bt
        0x71t
        0x13t
        0x71t
        0x6t
        0x25t
        0x3dt
        -0x20t
        -0x6dt
        -0x10t
        0xbt
        -0x6dt
        -0x70t
        0x79t
        0x33t
        -0x79t
        -0x51t
        0x57t
        0x49t
        0x43t
        0x54t
        0x74t
        -0x24t
        -0x4bt
        -0x3t
        0x30t
        -0x65t
        -0x74t
        -0xat
        -0x6bt
        -0x1t
        0x50t
        0x2ct
        -0x25t
        0x45t
        0x13t
        0x2ct
        0x2at
        0x3bt
        0x4ct
        0x5at
        0x58t
        0x12t
        0x70t
        0x7t
        -0x1at
        -0x76t
        -0x75t
        -0x17t
        -0x4at
        -0x9t
        0x33t
        -0xdt
        -0x63t
        0x7et
        -0x76t
        -0x76t
        -0x52t
        0x20t
        0x39t
        -0x5ct
        0x50t
        0x66t
        0x7et
        0x56t
        0x79t
        -0x59t
        -0xat
        0x37t
        -0x8t
        -0x73t
        -0x8t
        0x57t
        0x1t
        0x5t
        0x1t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SecureKeyConst;->isJDMProductNotInHouse:Z

    return-void
.end method
