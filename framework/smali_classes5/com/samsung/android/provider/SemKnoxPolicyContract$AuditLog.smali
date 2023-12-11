.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$AuditLog;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuditLog"
.end annotation


# static fields
.field public static final ALERT:I = 0x1

.field public static final AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final CRITICAL:I = 0x2

.field public static final ERROR:I = 0x3

.field public static final NAME:Ljava/lang/String; = "AuditLog"

.field public static final NOTICE:I = 0x5

.field public static final REDACTED_AUDITLOG:Ljava/lang/String; = "RedactedAuditLogger"

.field public static final REDACTED_AUDITLOG_AS_USER:Ljava/lang/String; = "RedactedAuditLoggerAsUser"

.field public static final URI:Ljava/lang/String; = "content://com.sec.knox.provider/AuditLog"

.field public static final WARNING:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
