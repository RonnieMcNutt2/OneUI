.class public Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;
.super Ljava/lang/Object;
.source "SemP2pInformationElement.java"


# static fields
.field private static final DISCOVERY_ATTR_ICON:I = 0x0

.field private static final DISCOVERY_ATTR_SERVICE_DATA:I = 0x3

.field private static final FW_INVITE_OUI:I = 0xf00d

.field private static final P2P_DEVICE_DISCOVERY_OUI:I = 0xf00f

.field private static final SCREEN_SHARING_ATTR_DEV_INFO:I = 0x0

.field private static final SCREEN_SHARING_ATTR_DI_HASH:I = 0x3

.field private static final SCREEN_SHARING_OUI:I = 0xf00c

.field private static final TAG:Ljava/lang/String; = "SemP2pInformationElement"


# instance fields
.field private mFwInviteSupported:Z

.field private mSamsungDeviceType:I

.field private mScreenSharingDi:Ljava/lang/String;

.field private mScreenSharingInfo:I

.field private mServiceData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "vendorElements":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult$InformationElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mSamsungDeviceType:I

    .line 29
    iput v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingInfo:I

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mFwInviteSupported:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mServiceData:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingDi:Ljava/lang/String;

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 36
    .local v1, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 37
    .local v2, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 38
    .local v3, "oui":I
    packed-switch v3, :pswitch_data_40

    :pswitch_30
    goto :goto_3d

    .line 40
    :pswitch_31
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseDiscoveryIe(Ljava/nio/ByteBuffer;)V

    .line 41
    goto :goto_3d

    .line 46
    :pswitch_35
    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseFwInviteIe()V

    .line 47
    goto :goto_3d

    .line 43
    :pswitch_39
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseScreenSharingIe(Ljava/nio/ByteBuffer;)V

    .line 44
    nop

    .line 51
    .end local v1    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v2    # "data":Ljava/nio/ByteBuffer;
    .end local v3    # "oui":I
    :goto_3d
    goto :goto_13

    .line 52
    :cond_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0xf00c
        :pswitch_39
        :pswitch_35
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method private byteArrayToHexString([B)Ljava/lang/String;
    .registers 8
    .param p1, "bytes"    # [B

    .line 127
    if-nez p1, :cond_5

    .line 128
    const-string v0, ""

    return-object v0

    .line 130
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_26

    aget-byte v3, p1, v2

    .line 132
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 134
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseDiscoveryIe(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 77
    nop

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_36

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 79
    .local v0, "attrId":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 81
    .local v1, "attrLen":I
    if-eqz v1, :cond_35

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_19

    goto :goto_35

    .line 84
    :cond_19
    new-array v2, v1, [B

    .line 85
    .local v2, "attrBytes":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 86
    sparse-switch v0, :sswitch_data_38

    goto :goto_34

    .line 91
    :sswitch_22
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mServiceData:Ljava/lang/String;

    .line 92
    goto :goto_34

    .line 88
    :sswitch_29
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mSamsungDeviceType:I

    .line 89
    nop

    .line 96
    .end local v0    # "attrId":I
    .end local v1    # "attrLen":I
    .end local v2    # "attrBytes":[B
    :goto_34
    goto :goto_1

    .line 82
    .restart local v0    # "attrId":I
    .restart local v1    # "attrLen":I
    :cond_35
    :goto_35
    return-void

    .line 97
    .end local v0    # "attrId":I
    .end local v1    # "attrLen":I
    :cond_36
    return-void

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_29
        0x3 -> :sswitch_22
    .end sparse-switch
.end method

.method private parseFwInviteIe()V
    .registers 2

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mFwInviteSupported:Z

    .line 124
    return-void
.end method

.method private parseHex(Ljava/lang/String;)I
    .registers 6
    .param p1, "hexString"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "num":I
    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "0X"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 141
    :cond_11
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_16
    const/16 v1, 0x10

    :try_start_18
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_1e

    move v0, v1

    .line 148
    goto :goto_37

    .line 146
    :catch_1e
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse hex string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemP2pInformationElement"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_37
    return v0
.end method

.method private parseScreenSharingIe(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 100
    nop

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_36

    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 102
    .local v0, "attrId":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 104
    .local v1, "attrLen":I
    if-eqz v1, :cond_35

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_19

    goto :goto_35

    .line 107
    :cond_19
    new-array v2, v1, [B

    .line 108
    .local v2, "attrBytes":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    sparse-switch v0, :sswitch_data_38

    goto :goto_34

    .line 114
    :sswitch_22
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingDi:Ljava/lang/String;

    .line 115
    goto :goto_34

    .line 111
    :sswitch_29
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingInfo:I

    .line 112
    nop

    .line 119
    .end local v0    # "attrId":I
    .end local v1    # "attrLen":I
    .end local v2    # "attrBytes":[B
    :goto_34
    goto :goto_1

    .line 105
    .restart local v0    # "attrId":I
    .restart local v1    # "attrLen":I
    :cond_35
    :goto_35
    return-void

    .line 120
    .end local v0    # "attrId":I
    .end local v1    # "attrLen":I
    :cond_36
    return-void

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_29
        0x3 -> :sswitch_22
    .end sparse-switch
.end method


# virtual methods
.method public getSamsungDeviceType()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mSamsungDeviceType:I

    return v0
.end method

.method public getScreenSharingDi()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingDi:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSharingInfo()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mScreenSharingInfo:I

    return v0
.end method

.method public getServiceData()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mServiceData:Ljava/lang/String;

    return-object v0
.end method

.method public isFwInviteSupported()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/wifi/p2p/SemP2pInformationElement;->mFwInviteSupported:Z

    return v0
.end method
