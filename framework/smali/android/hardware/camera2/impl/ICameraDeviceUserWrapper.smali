.class public Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
.super Ljava/lang/Object;
.source "ICameraDeviceUserWrapper.java"


# instance fields
.field private final mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .registers 4
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_8

    .line 58
    iput-object p1, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 59
    return-void

    .line 56
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Remote device may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginConfigure()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->beginConfigure()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 110
    nop

    .line 111
    return-void

    .line 107
    :catchall_7
    move-exception v0

    .line 108
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 109
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cancelRequest(I)J
    .registers 5
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->cancelRequest(I)J

    move-result-wide v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-wide v0

    .line 98
    :catchall_7
    move-exception v0

    .line 99
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 100
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 5
    .param p1, "templateId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 165
    :catchall_7
    move-exception v0

    .line 166
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 167
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createInputStream(IIIZ)I
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "isMultiResolution"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/camera2/ICameraDeviceUser;->createInputStream(IIIZ)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    .line 147
    :catchall_7
    move-exception v0

    .line 148
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 149
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .registers 5
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    .line 137
    :catchall_7
    move-exception v0

    .line 138
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 139
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteStream(I)V
    .registers 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 130
    nop

    .line 131
    return-void

    .line 127
    :catchall_7
    move-exception v0

    .line 128
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 129
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disconnect()V
    .registers 2

    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->disconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 72
    goto :goto_7

    .line 70
    :catch_6
    move-exception v0

    .line 73
    :goto_7
    return-void
.end method

.method public endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I
    .registers 8
    .param p1, "operatingMode"    # I
    .param p2, "sessionParams"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "startTimeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez p2, :cond_a

    .line 117
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    goto :goto_b

    :cond_a
    move-object v1, p2

    .line 116
    :goto_b
    invoke-interface {v0, p1, v1, p3, p4}, Landroid/hardware/camera2/ICameraDeviceUser;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v0
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-object v0

    .line 118
    :catchall_10
    move-exception v0

    .line 119
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 120
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 6
    .param p1, "streamId"    # I
    .param p2, "deferredConfig"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 282
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 286
    nop

    .line 287
    return-void

    .line 283
    :catchall_7
    move-exception v0

    .line 284
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 285
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->flush()J

    move-result-wide v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-wide v0

    .line 226
    :catchall_7
    move-exception v0

    .line 227
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 228
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 173
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 174
    :catchall_7
    move-exception v0

    .line 175
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 176
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGlobalAudioRestriction()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 300
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getGlobalAudioRestriction()I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    .line 301
    :catchall_7
    move-exception v0

    .line 302
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 303
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getInputSurface()Landroid/view/Surface;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 156
    :catchall_7
    move-exception v0

    .line 157
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 158
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .registers 5
    .param p1, "sessionConfig"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_13
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    .line 202
    :catchall_7
    move-exception v0

    .line 203
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 204
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 193
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_13
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_28

    .line 197
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_27

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid session configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_27
    throw v0

    .line 195
    :cond_28
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session configuration query not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public prepare(I)V
    .registers 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->prepare(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 238
    nop

    .line 239
    return-void

    .line 235
    :catchall_7
    move-exception v0

    .line 236
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 237
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public prepare2(II)V
    .registers 6
    .param p1, "maxCount"    # I
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 252
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->prepare2(II)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 256
    nop

    .line 257
    return-void

    .line 253
    :catchall_7
    move-exception v0

    .line 254
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 255
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCameraAudioRestriction(I)V
    .registers 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->setCameraAudioRestriction(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 295
    nop

    .line 296
    return-void

    .line 292
    :catchall_7
    move-exception v0

    .line 293
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 294
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setParameters(Ljava/lang/String;)V
    .registers 5
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->setParameters(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 219
    nop

    .line 220
    return-void

    .line 216
    :catchall_7
    move-exception v0

    .line 217
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 218
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 79
    :catchall_7
    move-exception v0

    .line 80
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 81
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .registers 6
    .param p1, "requestList"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 89
    :catchall_7
    move-exception v0

    .line 90
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 91
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;
    .registers 6
    .param p1, "cbs"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p2, "offlineOutputIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 273
    :catchall_7
    move-exception v0

    .line 274
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 275
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tearDown(I)V
    .registers 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->tearDown(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 247
    nop

    .line 248
    return-void

    .line 244
    :catchall_7
    move-exception v0

    .line 245
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 246
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 62
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 65
    :cond_11
    return-void
.end method

.method public updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 6
    .param p1, "streamId"    # I
    .param p2, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 266
    nop

    .line 267
    return-void

    .line 263
    :catchall_7
    move-exception v0

    .line 264
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 265
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public waitUntilIdle()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->waitUntilIdle()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 186
    nop

    .line 187
    return-void

    .line 183
    :catchall_7
    move-exception v0

    .line 184
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 185
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
