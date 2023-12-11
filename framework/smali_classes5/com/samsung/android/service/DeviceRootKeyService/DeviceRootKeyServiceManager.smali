.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;,
        Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    }
.end annotation


# static fields
.field public static final ERR_SERVICE_ERROR:I = -0x2710

.field public static final KEY_TYPE_EC:I = 0x4

.field public static final KEY_TYPE_RSA:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DEVROOT#MGR"

.field private static final VERSION:Ljava/lang/String; = "1.1.4"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-string v0, "_nativeJni.dk.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] create DeviceRootKeyServiceManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVROOT#MGR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method private native createServiceKeySessonInternal(Ljava/lang/String;I[B)[B
.end method

.method private native doSelfTestProvServiceInternal(Ljava/lang/String;I[B)[B
.end method

.method private native getDevInfoInternal()[B
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .registers 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "tlv"    # Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 109
    const-string v0, "DEVROOT#MGR"

    const-string v1, "createServiceKeySession() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    if-nez p3, :cond_f

    .line 113
    :try_start_a
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySessonInternal(Ljava/lang/String;I[B)[B

    move-result-object v0

    return-object v0

    .line 115
    :cond_f
    invoke-virtual {p3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->encodeTlv()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySessonInternal(Ljava/lang/String;I[B)[B

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_17} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18

    return-object v0

    .line 122
    :catch_18
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    return-object v0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1d
    move-exception v1

    .line 119
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 120
    return-object v0
.end method

.method public doSelfTestProvService(ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .registers 6
    .param p1, "keyType"    # I
    .param p2, "tlv"    # Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 181
    const-string v0, "DEVROOT#MGR"

    const-string v1, "doSelfTestProvService() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    const-string v1, "PROV"

    if-nez p2, :cond_11

    .line 185
    :try_start_c
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->doSelfTestProvServiceInternal(Ljava/lang/String;I[B)[B

    move-result-object v0

    return-object v0

    .line 187
    :cond_11
    invoke-virtual {p2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->encodeTlv()[B

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->doSelfTestProvServiceInternal(Ljava/lang/String;I[B)[B

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1a

    return-object v0

    .line 190
    :catch_1a
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    return-object v0
.end method

.method public getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    .registers 6
    .param p1, "infoType"    # I

    .line 214
    const-string/jumbo v0, "getDeviceInfo() is called."

    const-string v1, "DEVROOT#MGR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    if-lez p1, :cond_2f

    const/16 v2, 0xe

    if-le p1, v2, :cond_10

    goto :goto_2f

    .line 220
    :cond_10
    :try_start_10
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    if-nez v2, :cond_1f

    .line 221
    new-instance v2, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    invoke-direct {p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDevInfoInternal()[B

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;-><init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;[B)V

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    .line 223
    :cond_1f
    new-instance v2, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;-><init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;I)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_24} :catch_25

    return-object v2

    .line 224
    :catch_25
    move-exception v2

    .line 225
    .local v2, "re":Ljava/lang/RuntimeException;
    const-string v3, "Operation failed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 227
    return-object v0

    .line 216
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :cond_2f
    :goto_2f
    const-string v2, "Invalid argument"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v0
.end method

.method public native getDeviceRootKeyCertificate(I)[B
.end method

.method public native getDeviceRootKeyUID(I)Ljava/lang/String;
.end method

.method public native isAliveDeviceRootKeyService()Z
.end method

.method public native isExistDeviceRootKey(I)Z
.end method

.method public native releaseServiceKeySession()I
.end method

.method public setDeviceRootKey([B)I
    .registers 4
    .param p1, "keyBlob"    # [B

    .line 154
    const-string v0, "DEVROOT#MGR"

    const-string/jumbo v1, "setDeviceRootKey() has been deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v0, -0x2710

    return v0
.end method
