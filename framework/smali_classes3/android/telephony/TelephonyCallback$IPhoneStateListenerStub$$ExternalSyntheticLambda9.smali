.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;

.field public final synthetic f$1:Landroid/telephony/PreciseDataConnectionState;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;->f$0:Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;->f$1:Landroid/telephony/PreciseDataConnectionState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;->f$0:Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;->f$1:Landroid/telephony/PreciseDataConnectionState;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPreciseDataConnectionStateChanged$24(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method
