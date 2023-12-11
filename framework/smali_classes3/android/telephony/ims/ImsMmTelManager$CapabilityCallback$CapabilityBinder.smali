.class Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "ImsMmTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapabilityBinder"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;


# direct methods
.method public static synthetic $r8$lambda$GQQnt5XLtjDjZNgLoTN3b9S-U_g(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->lambda$onCapabilitiesStatusChanged$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExecutor(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .registers 2
    .param p1, "c"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 169
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    .line 170
    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 171
    return-void
.end method

.method private synthetic lambda$onCapabilitiesStatusChanged$0(I)V
    .registers 4
    .param p1, "config"    # I

    .line 182
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method private setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 202
    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 203
    return-void
.end method


# virtual methods
.method public onCapabilitiesStatusChanged(I)V
    .registers 6
    .param p1, "config"    # I

    .line 176
    const-string v0, "ImsMmTelManager"

    const-string/jumbo v1, "onCapabilitiesStatusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    if-nez v0, :cond_d

    return-void

    .line 180
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 182
    .local v0, "callingIdentity":J
    :try_start_11
    iget-object v2, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    .line 185
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->restoreCallingIdentity(J)V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->restoreCallingIdentity(J)V

    .line 186
    throw v2
.end method

.method public onChangeCapabilityConfigurationError(III)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 199
    return-void
.end method

.method public onQueryCapabilityConfiguration(IIZ)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "isEnabled"    # Z

    .line 193
    return-void
.end method
