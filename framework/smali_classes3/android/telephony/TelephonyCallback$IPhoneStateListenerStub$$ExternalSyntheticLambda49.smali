.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;->f$0:Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

    iput p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;->f$0:Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

    iget v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallBackModeStarted$68(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;I)V

    return-void
.end method
