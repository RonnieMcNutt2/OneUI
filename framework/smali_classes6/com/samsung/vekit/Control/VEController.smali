.class public Lcom/samsung/vekit/Control/VEController;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Control/VEController$ControllerCallbackMsg;,
        Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;,
        Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;,
        Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;
    }
.end annotation


# static fields
.field public static final UI_ANIMATION_MANAGER:I = -0x1

.field public static final VERSION:Ljava/lang/String; = "1.0.8"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

.field animationStatusListener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

.field private captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

.field captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

.field private controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

.field controllerStatusListener:Lcom/samsung/vekit/Listener/VEControllerStatusListener;

.field exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

.field isAnimating:Z

.field isPlaying:Z

.field nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

.field playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

.field renderTime:J

.field seekTime:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 59
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTROLLER:Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "Controller"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 54
    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    .line 55
    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    .line 61
    const-string v1, "[VEKit] Version : 1.0.8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_39

    .line 65
    new-instance v0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    .line 66
    new-instance v0, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    .line 67
    new-instance v0, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    goto :goto_5c

    .line 68
    :cond_39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_56

    .line 69
    new-instance v0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    .line 70
    new-instance v0, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    .line 71
    new-instance v0, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    goto :goto_5c

    .line 73
    :cond_56
    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    .line 74
    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    .line 75
    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    .line 78
    :goto_5c
    new-instance v0, Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/VEContext;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    .line 79
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    .line 80
    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    .line 81
    new-instance v0, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Control/VEController;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerStatusListener:Lcom/samsung/vekit/Listener/VEControllerStatusListener;

    .line 82
    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    .line 83
    new-instance v0, Lcom/samsung/vekit/Control/VEController$1;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Control/VEController$1;-><init>(Lcom/samsung/vekit/Control/VEController;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationStatusListener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEController;

    .line 34
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/vekit/Control/VEController;ILjava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/vekit/Control/VEController;->handleError(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/vekit/Control/VEController;III)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Control/VEController;->handleItemError(III)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/vekit/Control/VEController;)Lcom/samsung/vekit/Common/VEContext;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEController;

    .line 34
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    return-object v0
.end method

.method private handleError(ILjava/lang/Object;)V
    .registers 7
    .param p1, "errorType"    # I
    .param p2, "extension"    # Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExecuteError with errorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extension : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ErrorType;->values()[Lcom/samsung/vekit/Common/Type/ErrorType;

    move-result-object v0

    aget-object v0, v0, p1

    .line 172
    .local v0, "type":Lcom/samsung/vekit/Common/Type/ErrorType;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz v1, :cond_51

    .line 173
    sget-object v1, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$Type$ErrorType:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Type/ErrorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_52

    .line 179
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ErrorType;J)V

    goto :goto_51

    .line 175
    :pswitch_44
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onCodecReclaim(J)V

    .line 176
    nop

    .line 183
    :cond_51
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_44
    .end packed-switch
.end method

.method private handleItemError(III)V
    .registers 10
    .param p1, "errorType"    # I
    .param p2, "elementType"    # I
    .param p3, "elementId"    # I

    .line 186
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ElementType;->values()[Lcom/samsung/vekit/Common/Type/ElementType;

    move-result-object v0

    aget-object v0, v0, p2

    .line 187
    .local v0, "type":Lcom/samsung/vekit/Common/Type/ElementType;
    sget-object v1, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$Type$ElementType:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Type/ElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_92

    .line 204
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid elementType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 201
    :pswitch_2a
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported listener error handling ElementType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 189
    :pswitch_4d
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getItemManager()Lcom/samsung/vekit/Manager/ItemManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/vekit/Manager/ItemManager;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Listener/ItemStatusListener;

    .line 190
    .local v1, "listener":Lcom/samsung/vekit/Listener/ItemStatusListener;
    if-eqz v1, :cond_90

    .line 192
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ItemErrorType;->values()[Lcom/samsung/vekit/Common/Type/ItemErrorType;

    move-result-object v2

    aget-object v2, v2, p1

    .line 193
    .local v2, "itemErrorType":Lcom/samsung/vekit/Common/Type/ItemErrorType;
    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleItemError itemErrorType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", elementType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", elementId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-interface {v1, v2}, Lcom/samsung/vekit/Listener/ItemStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ItemErrorType;)V

    .line 196
    .end local v2    # "itemErrorType":Lcom/samsung/vekit/Common/Type/ItemErrorType;
    :cond_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method private onAnimationEvent(IIIF)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "animationId"    # I
    .param p3, "type"    # I
    .param p4, "value"    # F

    .line 458
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    if-eqz v0, :cond_11

    .line 459
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 460
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    .end local v0    # "m":Landroid/os/Message;
    :cond_11
    return-void
.end method

.method private onAnimationEvent(III[F)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "animationId"    # I
    .param p3, "type"    # I
    .param p4, "value"    # [F

    .line 465
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    if-eqz v0, :cond_d

    .line 466
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 467
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    .end local v0    # "m":Landroid/os/Message;
    :cond_d
    return-void
.end method

.method private onControllerEvent(IIII)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 442
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_11

    .line 443
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 444
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    .end local v0    # "m":Landroid/os/Message;
    :cond_11
    return-void
.end method

.method private onControllerEvent(IIIJ)V
    .registers 8
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J

    .line 450
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_11

    .line 452
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 453
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    .end local v0    # "m":Landroid/os/Message;
    :cond_11
    return-void
.end method


# virtual methods
.method public animate()V
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_5

    .line 399
    return-void

    .line 400
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->animate()V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    .line 402
    return-void
.end method

.method public attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/Animation;

    .line 273
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V

    .line 274
    return-void
.end method

.method public cancelAnimation()V
    .registers 2

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    .line 406
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_8

    .line 407
    return-void

    .line 408
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->cancelAnimation()V

    .line 409
    return-void
.end method

.method public captureAnimatedFrame(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .registers 6
    .param p1, "item"    # Lcom/samsung/vekit/Item/ImageItem;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 344
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_7

    .line 345
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    .line 347
    :cond_7
    return-void
.end method

.method public captureLatestFrame(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .registers 5
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 350
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_7

    .line 351
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    .line 353
    :cond_7
    return-void
.end method

.method public clearAnimations()V
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Manager/AnimationManager;->clearAnimations()V

    .line 282
    return-void
.end method

.method public create()V
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/External/NativeInterface;->createFramework(Lcom/samsung/vekit/Control/VEController;)V

    .line 270
    return-void
.end method

.method public detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/Animation;

    .line 277
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V

    .line 278
    return-void
.end method

.method public finalizeController()V
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_5

    .line 302
    return-void

    .line 303
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->finalizeFramework()V

    .line 305
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_12

    .line 306
    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->stopThread()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    .line 309
    :cond_12
    return-void
.end method

.method public getCurrentMediaPosition()J
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->getCurrentMediaPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    .line 340
    return-wide v0
.end method

.method public getExportPosition()J
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-eqz v0, :cond_a

    .line 368
    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->getExportPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    .line 370
    :cond_a
    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    return-wide v0
.end method

.method public initializeController(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V
    .registers 16
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "graphicBufferWidth"    # I
    .param p3, "graphicBufferHeight"    # I
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I
    .param p6, "viewMode"    # Lcom/samsung/vekit/Common/Type/ViewMode;
    .param p7, "frameworkType"    # Lcom/samsung/vekit/Common/Type/FrameworkType;

    .line 287
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_5

    .line 288
    return-void

    .line 289
    :cond_5
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/vekit/External/NativeInterface;->initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->initialize()V

    .line 291
    sget-object v0, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    if-ne p6, v0, :cond_2a

    .line 293
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-nez v0, :cond_25

    .line 294
    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameThread;

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Task/CaptureFrameThread;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    .line 296
    :cond_25
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->startThread()V

    .line 298
    :cond_2a
    return-void
.end method

.method public isAnimating()Z
    .registers 2

    .line 374
    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .line 378
    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return v0
.end method

.method synthetic lambda$new$0$com-samsung-vekit-Control-VEController(Lcom/samsung/vekit/Common/Type/EventType;)V
    .registers 5
    .param p1, "eventType"    # Lcom/samsung/vekit/Common/Type/EventType;

    .line 81
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent : EventType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pause()V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_5

    .line 428
    return-void

    .line 429
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->pause()V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 431
    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->getCurrentMediaPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    .line 432
    return-void
.end method

.method public pauseExport()J
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-eqz v0, :cond_a

    .line 356
    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->pauseExport()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    .line 358
    :cond_a
    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    return-wide v0
.end method

.method public play()V
    .registers 6

    .line 412
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_26

    .line 416
    :cond_d
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    .line 417
    .local v0, "layerGroup":Lcom/samsung/vekit/Layer/LayerGroup;
    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->calculateTotalDuration()J

    move-result-wide v1

    .line 418
    .local v1, "totalDuration":J
    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->update()V

    .line 420
    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v3, :cond_1f

    .line 421
    return-void

    .line 422
    :cond_1f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 423
    invoke-virtual {v3}, Lcom/samsung/vekit/External/NativeInterface;->play()V

    .line 424
    return-void

    .line 413
    .end local v0    # "layerGroup":Lcom/samsung/vekit/Layer/LayerGroup;
    .end local v1    # "totalDuration":J
    :cond_26
    :goto_26
    return-void
.end method

.method public release()V
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_5

    .line 313
    return-void

    .line 314
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->releaseFramework()V

    .line 315
    return-void
.end method

.method public resumeExport(J)V
    .registers 4
    .param p1, "renderTime"    # J

    .line 362
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-eqz v0, :cond_7

    .line 363
    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->resumeExport(J)V

    .line 365
    :cond_7
    return-void
.end method

.method public seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)Lcom/samsung/vekit/Control/VEController;
    .registers 6
    .param p1, "millisecond"    # J
    .param p3, "seekType"    # Lcom/samsung/vekit/Common/Type/SeekType;

    .line 324
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_5

    .line 325
    return-object p0

    .line 327
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    if-eqz v1, :cond_11

    .line 329
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "show : invalid state [playing]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object p0

    .line 333
    :cond_11
    iput-wide p1, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    .line 334
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V

    .line 335
    return-object p0
.end method

.method public setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V
    .registers 5
    .param p1, "info"    # Lcom/samsung/vekit/Common/Object/ExportInfo;

    .line 472
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExportInfo  width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getFd()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_3d

    .line 474
    return-void

    .line 476
    :cond_3d
    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V

    .line 477
    return-void
.end method

.method public setExportstatuslistener(Lcom/samsung/vekit/Listener/ExportStatusListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/ExportStatusListener;

    .line 479
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    .line 480
    return-void
.end method

.method public setPlayerStatusListener(Lcom/samsung/vekit/Listener/PlayerStatusListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/PlayerStatusListener;

    .line 483
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    .line 484
    return-void
.end method

.method public show()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_5

    .line 388
    return-void

    .line 389
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    if-eqz v1, :cond_11

    .line 391
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "show : invalid state [playing]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void

    .line 394
    :cond_11
    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->show()V

    .line 395
    return-void
.end method

.method public stop()V
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_5

    .line 436
    return-void

    .line 437
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->stop()V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 439
    return-void
.end method

.method public update()V
    .registers 1

    .line 383
    invoke-super {p0}, Lcom/samsung/vekit/Common/Object/Element;->update()V

    .line 384
    return-void
.end method

.method public updateViewport(Lcom/samsung/vekit/Common/Object/Vector4;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p1, "viewport":Lcom/samsung/vekit/Common/Object/Vector4;, "Lcom/samsung/vekit/Common/Object/Vector4<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v0, :cond_5

    .line 319
    return-void

    .line 320
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getZ()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getW()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/vekit/External/NativeInterface;->updateViewport(IIII)V

    .line 321
    return-void
.end method
