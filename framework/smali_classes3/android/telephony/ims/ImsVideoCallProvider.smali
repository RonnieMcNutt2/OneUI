.class public abstract Landroid/telephony/ims/ImsVideoCallProvider;
.super Ljava/lang/Object;
.source "ImsVideoCallProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;
    }
.end annotation


# static fields
.field private static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CALLBACK:I = 0x1

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_ZOOM:I = 0x6


# instance fields
.field private final mBinder:Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;

.field private mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

.field private final mProviderHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallback(Landroid/telephony/ims/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/telephony/ims/ImsVideoCallProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ImsVideoCallProvider$1;-><init>(Landroid/telephony/ims/ImsVideoCallProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;-><init>(Landroid/telephony/ims/ImsVideoCallProvider;Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mBinder:Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;

    .line 177
    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .registers 4
    .param p1, "dataUsage"    # J

    .line 274
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v0, :cond_9

    .line 276
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCallDataUsage(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 278
    goto :goto_9

    .line 277
    :catch_8
    move-exception v0

    .line 280
    :cond_9
    :goto_9
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .registers 3
    .param p1, "CameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 284
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v0, :cond_9

    .line 286
    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 288
    goto :goto_9

    .line 287
    :catch_8
    move-exception v0

    .line 290
    :cond_9
    :goto_9
    return-void
.end method

.method public changePeerDimensions(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 264
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v0, :cond_9

    .line 266
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsVideoCallCallback;->changePeerDimensions(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 268
    goto :goto_9

    .line 267
    :catch_8
    move-exception v0

    .line 270
    :cond_9
    :goto_9
    return-void
.end method

.method public changeVideoQuality(I)V
    .registers 3
    .param p1, "videoQuality"    # I

    .line 294
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v0, :cond_9

    .line 296
    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 298
    goto :goto_9

    .line 297
    :catch_8
    move-exception v0

    .line 300
    :cond_9
    :goto_9
    return-void
.end method

.method public final getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mBinder:Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;

    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .registers 3
    .param p1, "event"    # I

    .line 254
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v0, :cond_9

    .line 256
    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 258
    goto :goto_9

    .line 257
    :catch_8
    move-exception v0

    .line 260
    :cond_9
    :goto_9
    return-void
.end method

.method public abstract onRequestCallDataUsage()V
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public onSetCamera(Ljava/lang/String;I)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 201
    return-void
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetZoom(F)V
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .line 233
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v0, :cond_9

    .line 235
    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 237
    goto :goto_9

    .line 236
    :catch_8
    move-exception v0

    .line 239
    :cond_9
    :goto_9
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 244
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v0, :cond_9

    .line 246
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 248
    goto :goto_9

    .line 247
    :catch_8
    move-exception v0

    .line 250
    :cond_9
    :goto_9
    return-void
.end method
