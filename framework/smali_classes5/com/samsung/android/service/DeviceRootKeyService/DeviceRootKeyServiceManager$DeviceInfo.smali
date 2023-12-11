.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceInfo"
.end annotation


# static fields
.field public static final DEVICE_INFO_ALL:I = 0xe

.field private static final DEVICE_INFO_EMPTY:I = 0x0

.field public static final DEVICE_INFO_IMEI:I = 0x4

.field public static final DEVICE_INFO_IMEI_MODEM:I = 0x6

.field public static final DEVICE_INFO_IMEI_SERIAL:I = 0xc

.field public static final DEVICE_INFO_INTEGRITY_STATUS:I = 0x1

.field public static final DEVICE_INFO_MODEM:I = 0x2

.field public static final DEVICE_INFO_MODEM_SERIAL:I = 0xa

.field public static final DEVICE_INFO_SERIAL:I = 0x8

.field private static final DEVICE_STATUS_IS_INVALID:B = 0x0t

.field private static final DEVICE_STATUS_IS_VALID:B = 0x1t

.field private static final MAX_SHA256_LENGTH:I = 0x20

.field private static final MAX_STATUS_LENGTH:I = 0x1

.field private static final TLV_EX_BASE:I = 0x64


# instance fields
.field private mImeiHash:[B

.field private mIsHuidMatched:Z

.field private mModemHash:[B

.field private mSerialHash:[B

.field final synthetic this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;I)V
    .registers 8
    .param p1, "this$0"    # Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    .param p2, "infoType"    # I

    .line 267
    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    .line 262
    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    .line 263
    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "tByteArray":[B
    const/4 v2, 0x0

    .line 270
    .local v2, "tag":I
    and-int/lit8 v3, p2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_31

    .line 271
    const/16 v2, 0x66

    .line 272
    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    .line 273
    if-eqz v1, :cond_31

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 274
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    .line 278
    :cond_31
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_51

    .line 279
    const/16 v2, 0x68

    .line 280
    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    .line 281
    if-eqz v1, :cond_51

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 282
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    .line 286
    :cond_51
    and-int/lit8 v3, p2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_72

    .line 287
    const/16 v2, 0x6c

    .line 288
    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    .line 289
    if-eqz v1, :cond_72

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 290
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    .line 294
    :cond_72
    const/16 v2, 0x65

    .line 295
    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    .line 296
    if-eqz v1, :cond_8d

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 297
    aget-byte v3, v1, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8b

    move v0, v4

    :cond_8b
    iput-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    .line 299
    :cond_8d
    return-void
.end method

.method private isValidLength(II)Z
    .registers 6
    .param p1, "tag"    # I
    .param p2, "len"    # I

    .line 319
    add-int/lit8 v0, p1, -0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_12

    .line 333
    return v2

    .line 323
    :sswitch_8
    const/16 v0, 0x20

    if-eq p2, v0, :cond_10

    .line 324
    return v2

    .line 328
    :sswitch_d
    if-eq p2, v1, :cond_10

    .line 329
    return v2

    .line 335
    :cond_10
    return v1

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_8
        0x4 -> :sswitch_8
        0x8 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public getImei()[B
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    return-object v0
.end method

.method public getModem()[B
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    return-object v0
.end method

.method public getSerial()[B
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    return-object v0
.end method

.method public isHuidMatched()Z
    .registers 2

    .line 315
    iget-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    return v0
.end method
