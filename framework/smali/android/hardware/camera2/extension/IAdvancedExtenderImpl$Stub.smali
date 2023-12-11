.class public abstract Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IAdvancedExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAvailableCaptureRequestKeys:I = 0x8

.field static final TRANSACTION_getAvailableCaptureResultKeys:I = 0x9

.field static final TRANSACTION_getEstimatedCaptureLatencyRange:I = 0x3

.field static final TRANSACTION_getSessionProcessor:I = 0x7

.field static final TRANSACTION_getSupportedCaptureOutputResolutions:I = 0x5

.field static final TRANSACTION_getSupportedPostviewResolutions:I = 0x6

.field static final TRANSACTION_getSupportedPreviewOutputResolutions:I = 0x4

.field static final TRANSACTION_init:I = 0x2

.field static final TRANSACTION_isCaptureProcessProgressAvailable:I = 0xa

.field static final TRANSACTION_isExtensionAvailable:I = 0x1

.field static final TRANSACTION_isPostviewAvailable:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_28

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 133
    :pswitch_5
    const-string/jumbo v0, "isPostviewAvailable"

    return-object v0

    .line 129
    :pswitch_9
    const-string v0, "isCaptureProcessProgressAvailable"

    return-object v0

    .line 125
    :pswitch_c
    const-string v0, "getAvailableCaptureResultKeys"

    return-object v0

    .line 121
    :pswitch_f
    const-string v0, "getAvailableCaptureRequestKeys"

    return-object v0

    .line 117
    :pswitch_12
    const-string v0, "getSessionProcessor"

    return-object v0

    .line 113
    :pswitch_15
    const-string v0, "getSupportedPostviewResolutions"

    return-object v0

    .line 109
    :pswitch_18
    const-string v0, "getSupportedCaptureOutputResolutions"

    return-object v0

    .line 105
    :pswitch_1b
    const-string v0, "getSupportedPreviewOutputResolutions"

    return-object v0

    .line 101
    :pswitch_1e
    const-string v0, "getEstimatedCaptureLatencyRange"

    return-object v0

    .line 97
    :pswitch_21
    const-string v0, "init"

    return-object v0

    .line 93
    :pswitch_24
    const-string/jumbo v0, "isExtensionAvailable"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg1"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 171
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "k":Ljava/lang/String;
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 174
    .local v1, "v":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method static synthetic lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg1"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 192
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "k":Ljava/lang/String;
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 195
    .local v1, "v":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 537
    const/16 v0, 0xa

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 144
    invoke-static {p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    .line 149
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    :cond_d
    packed-switch p1, :pswitch_data_114

    .line 160
    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_11a

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 156
    :pswitch_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 283
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isPostviewAvailable()Z

    move-result v2

    .line 284
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 286
    goto/16 :goto_112

    .line 276
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isCaptureProcessProgressAvailable()Z

    move-result v2

    .line 277
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    goto/16 :goto_112

    .line 267
    .end local v2    # "_result":Z
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 270
    .local v3, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 272
    goto/16 :goto_112

    .line 257
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 260
    .restart local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 262
    goto/16 :goto_112

    .line 249
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_5c
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object v2

    .line 250
    .local v2, "_result":Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 252
    goto/16 :goto_112

    .line 240
    .end local v2    # "_result":Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    :pswitch_68
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    .line 241
    .local v2, "_arg0":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object v3

    .line 243
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 245
    goto/16 :goto_112

    .line 230
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Size;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 233
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 235
    goto/16 :goto_112

    .line 220
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 223
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 225
    goto :goto_112

    .line 206
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/Size;

    .line 210
    .local v3, "_arg1":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 211
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    .line 213
    .local v5, "_result":Landroid/hardware/camera2/extension/LatencyRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    goto :goto_112

    .line 186
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/extension/Size;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/hardware/camera2/extension/LatencyRange;
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 190
    .local v5, "N":I
    if-gez v5, :cond_cd

    goto :goto_d2

    :cond_cd
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v3, "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    :goto_d2
    invoke-static {v2, v5}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v6, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v6, p2, v3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v2, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 198
    .end local v5    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v4, v3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_112

    .line 165
    .end local v3    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    .end local v4    # "_arg0":Ljava/lang/String;
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 169
    .restart local v5    # "N":I
    if-gez v5, :cond_f3

    goto :goto_f8

    :cond_f3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 170
    .restart local v3    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    :goto_f8
    invoke-static {v2, v5}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v6, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2, v3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v2, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 177
    .end local v5    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v4, v3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    .line 179
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 181
    nop

    .line 293
    .end local v2    # "_result":Z
    .end local v3    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    .end local v4    # "_arg0":Ljava/lang/String;
    :goto_112
    return v1

    nop

    :pswitch_data_114
    .packed-switch 0x5f4e5446
        :pswitch_1a
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_c2
        :pswitch_a4
        :pswitch_92
        :pswitch_7f
        :pswitch_68
        :pswitch_5c
        :pswitch_49
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
