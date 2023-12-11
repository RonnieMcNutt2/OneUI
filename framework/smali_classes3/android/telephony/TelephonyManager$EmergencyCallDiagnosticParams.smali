.class public Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmergencyCallDiagnosticParams"
.end annotation


# instance fields
.field private mCollectLogcat:Z

.field private mCollectTelecomDumpSys:Z

.field private mCollectTelephonyDumpsys:Z

.field private mLogcatStartTimeMillis:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogcatStartTime()J
    .registers 3

    .line 19536
    iget-wide v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mLogcatStartTimeMillis:J

    return-wide v0
.end method

.method public isLogcatCollectionEnabled()Z
    .registers 2

    .line 19531
    iget-boolean v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mCollectLogcat:Z

    return v0
.end method

.method public isTelecomDumpSysCollectionEnabled()Z
    .registers 2

    .line 19515
    iget-boolean v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mCollectTelecomDumpSys:Z

    return v0
.end method

.method public isTelephonyDumpSysCollectionEnabled()Z
    .registers 2

    .line 19523
    iget-boolean v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mCollectTelephonyDumpsys:Z

    return v0
.end method

.method public setLogcatCollection(ZJ)V
    .registers 4
    .param p1, "collectLogcat"    # Z
    .param p2, "startTimeMillis"    # J

    .line 19540
    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mCollectLogcat:Z

    .line 19541
    if-eqz p1, :cond_6

    .line 19543
    iput-wide p2, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mLogcatStartTimeMillis:J

    .line 19545
    :cond_6
    return-void
.end method

.method public setTelecomDumpSysCollection(Z)V
    .registers 2
    .param p1, "collectTelecomDumpSys"    # Z

    .line 19519
    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mCollectTelecomDumpSys:Z

    .line 19520
    return-void
.end method

.method public setTelephonyDumpSysCollection(Z)V
    .registers 2
    .param p1, "collectTelephonyDumpsys"    # Z

    .line 19527
    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mCollectTelephonyDumpsys:Z

    .line 19528
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 19549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmergencyCallDiagnosticParams{mCollectTelecomDumpSys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mCollectTelecomDumpSys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCollectTelephonyDumpsys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mCollectTelephonyDumpsys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCollectLogcat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mCollectLogcat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogcatStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticParams;->mLogcatStartTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
