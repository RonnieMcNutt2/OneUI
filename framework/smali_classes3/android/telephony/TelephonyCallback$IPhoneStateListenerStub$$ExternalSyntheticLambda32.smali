.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

.field public final synthetic f$1:Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

.field public final synthetic f$2:Landroid/telephony/emergency/EmergencyNumber;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;->f$1:Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

    iput-object p3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;->f$2:Landroid/telephony/emergency/EmergencyNumber;

    iput p4, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;->f$1:Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

    iget-object v2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;->f$2:Landroid/telephony/emergency/EmergencyNumber;

    iget v3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->$r8$lambda$cWJVNvA-rcEpG8wmPNoDNhBzjeA(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method
