.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .registers 4
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1143
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1144
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1145
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1150
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_170

    .line 1236
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void

    .line 1230
    :sswitch_22
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmAutoFocusMoveCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1231
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmAutoFocusMoveCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_35

    move v1, v2

    :cond_35
    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    .line 1233
    :cond_3a
    return-void

    .line 1211
    :sswitch_3b
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmFaceListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 1212
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmFaceListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/hardware/Camera$Face;

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 1214
    :cond_52
    return-void

    .line 1164
    :sswitch_53
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmJpegCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 1165
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmJpegCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1167
    :cond_6a
    return-void

    .line 1158
    :sswitch_6b
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmRawImageCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 1159
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmRawImageCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1161
    :cond_82
    return-void

    .line 1188
    :sswitch_83
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmPostviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 1189
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmPostviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1191
    :cond_9a
    return-void

    .line 1170
    :sswitch_9b
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmPreviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v0

    .line 1171
    .local v0, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v0, :cond_c8

    .line 1172
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-$$Nest$fgetmOneShot(Landroid/hardware/Camera;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 1176
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/hardware/Camera;->-$$Nest$fputmPreviewCallback(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_bf

    .line 1177
    :cond_b2
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-$$Nest$fgetmWithBuffer(Landroid/hardware/Camera;)Z

    move-result v3

    if-nez v3, :cond_bf

    .line 1181
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3, v1, v2}, Landroid/hardware/Camera;->-$$Nest$msetHasPreviewCallback(Landroid/hardware/Camera;ZZ)V

    .line 1183
    :cond_bf
    :goto_bf
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 1185
    :cond_c8
    return-void

    .line 1205
    .end local v0    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_c9
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmZoomListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    if-eqz v0, :cond_e4

    .line 1206
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmZoomListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_de

    goto :goto_df

    :cond_de
    move v1, v2

    :goto_df
    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v1, v2}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    .line 1208
    :cond_e4
    return-void

    .line 1194
    :sswitch_e5
    const/4 v0, 0x0

    .line 1195
    .local v0, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-$$Nest$fgetmAutoFocusCallbackLock(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1196
    :try_start_ed
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v4}, Landroid/hardware/Camera;->-$$Nest$fgetmAutoFocusCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v4

    move-object v0, v4

    .line 1197
    monitor-exit v3
    :try_end_f5
    .catchall {:try_start_ed .. :try_end_f5} :catchall_102

    .line 1198
    if-eqz v0, :cond_101

    .line 1199
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_fc

    move v1, v2

    .line 1200
    .local v1, "success":Z
    :cond_fc
    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1202
    .end local v1    # "success":Z
    :cond_101
    return-void

    .line 1197
    :catchall_102
    move-exception v1

    :try_start_103
    monitor-exit v3
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    throw v1

    .line 1152
    .end local v0    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_105
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmShutterCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v0

    if-eqz v0, :cond_116

    .line 1153
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmShutterCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    .line 1155
    :cond_116
    return-void

    .line 1217
    :sswitch_117
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmDetailedErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_147

    .line 1219
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmDetailedErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto :goto_16e

    .line 1220
    :cond_147
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_16e

    .line 1221
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_161

    .line 1222
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto :goto_16e

    .line 1224
    :cond_161
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Landroid/hardware/Camera;->-$$Nest$fgetmErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    .line 1227
    :cond_16e
    :goto_16e
    return-void

    nop

    :sswitch_data_170
    .sparse-switch
        0x1 -> :sswitch_117
        0x2 -> :sswitch_105
        0x4 -> :sswitch_e5
        0x8 -> :sswitch_c9
        0x10 -> :sswitch_9b
        0x40 -> :sswitch_83
        0x80 -> :sswitch_6b
        0x100 -> :sswitch_53
        0x400 -> :sswitch_3b
        0x800 -> :sswitch_22
    .end sparse-switch
.end method
