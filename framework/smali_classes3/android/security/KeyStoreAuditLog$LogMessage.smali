.class Landroid/security/KeyStoreAuditLog$LogMessage;
.super Ljava/lang/Object;
.source "KeyStoreAuditLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreAuditLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogMessage"
.end annotation


# static fields
.field public static final KEEP:Ljava/lang/String;

.field public static final REMOVE:Ljava/lang/String; = ""


# instance fields
.field message:Ljava/lang/String;

.field redactedMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 239
    const/4 v0, 0x0

    sput-object v0, Landroid/security/KeyStoreAuditLog$LogMessage;->KEEP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "redactedMessage"    # Ljava/lang/String;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Landroid/security/KeyStoreAuditLog$LogMessage;->message:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Landroid/security/KeyStoreAuditLog$LogMessage;->redactedMessage:Ljava/lang/String;

    .line 249
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogMessage{message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$LogMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", redactedMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/security/KeyStoreAuditLog$LogMessage;->redactedMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
