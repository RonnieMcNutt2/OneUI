.class Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;
.super Ljava/lang/Object;
.source "EnhancedAttestationPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    .line 183
    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 194
    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-static {p2}, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->-$$Nest$fputmEnhancedAttestation(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;)V

    .line 196
    const-string v1, "SEMEAPolicy"

    const-string v2, "On onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    .line 198
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-static {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->-$$Nest$mhandlePendingRequest(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;)V

    .line 199
    return-void

    .line 197
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 186
    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->-$$Nest$fputmEnhancedAttestation(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;)V

    .line 188
    const-string v1, "SEMEAPolicy"

    const-string v2, "On onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
