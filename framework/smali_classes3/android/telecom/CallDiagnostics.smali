.class public abstract Landroid/telecom/CallDiagnostics;
.super Ljava/lang/Object;
.source "CallDiagnostics.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallDiagnostics$Listener;,
        Landroid/telecom/CallDiagnostics$MessageType;
    }
.end annotation


# static fields
.field public static final BATTERY_STATE_CHARGING:I = 0x3

.field public static final BATTERY_STATE_GOOD:I = 0x2

.field public static final BATTERY_STATE_LOW:I = 0x1

.field public static final COVERAGE_GOOD:I = 0x2

.field public static final COVERAGE_POOR:I = 0x1

.field public static final MESSAGE_CALL_AUDIO_CODEC:I = 0x2

.field public static final MESSAGE_CALL_NETWORK_TYPE:I = 0x1

.field public static final MESSAGE_DEVICE_BATTERY_STATE:I = 0x3

.field public static final MESSAGE_DEVICE_NETWORK_COVERAGE:I = 0x4


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mListener:Landroid/telecom/CallDiagnostics$Listener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearDiagnosticMessage(I)V
    .registers 3
    .param p1, "messageId"    # I

    .line 360
    iget-object v0, p0, Landroid/telecom/CallDiagnostics;->mListener:Landroid/telecom/CallDiagnostics$Listener;

    if-eqz v0, :cond_7

    .line 361
    invoke-interface {v0, p0, p1}, Landroid/telecom/CallDiagnostics$Listener;->onClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V

    .line 363
    :cond_7
    return-void
.end method

.method public final displayDiagnosticMessage(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "messageId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 347
    iget-object v0, p0, Landroid/telecom/CallDiagnostics;->mListener:Landroid/telecom/CallDiagnostics$Listener;

    if-eqz v0, :cond_7

    .line 348
    invoke-interface {v0, p0, p1, p2}, Landroid/telecom/CallDiagnostics$Listener;->onDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V

    .line 350
    :cond_7
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/telecom/CallDiagnostics;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public handleCallUpdated(Landroid/telecom/Call$Details;)V
    .registers 2
    .param p1, "newDetails"    # Landroid/telecom/Call$Details;

    .line 372
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnostics;->onCallDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 373
    return-void
.end method

.method public abstract onCallDetailsChanged(Landroid/telecom/Call$Details;)V
.end method

.method public abstract onCallDisconnected(II)Ljava/lang/CharSequence;
.end method

.method public abstract onCallDisconnected(Landroid/telephony/ims/ImsReasonInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract onCallQualityReceived(Landroid/telephony/CallQuality;)V
.end method

.method public abstract onReceiveDeviceToDeviceMessage(II)V
.end method

.method public final sendDeviceToDeviceMessage(II)V
    .registers 4
    .param p1, "message"    # I
    .param p2, "value"    # I

    .line 279
    iget-object v0, p0, Landroid/telecom/CallDiagnostics;->mListener:Landroid/telecom/CallDiagnostics$Listener;

    if-eqz v0, :cond_7

    .line 280
    invoke-interface {v0, p0, p1, p2}, Landroid/telecom/CallDiagnostics$Listener;->onSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V

    .line 282
    :cond_7
    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Landroid/telecom/CallDiagnostics;->mCallId:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setListener(Landroid/telecom/CallDiagnostics$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telecom/CallDiagnostics$Listener;

    .line 200
    iput-object p1, p0, Landroid/telecom/CallDiagnostics;->mListener:Landroid/telecom/CallDiagnostics$Listener;

    .line 201
    return-void
.end method
