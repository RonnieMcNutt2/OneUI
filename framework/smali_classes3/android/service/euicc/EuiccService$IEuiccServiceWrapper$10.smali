.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->switchToSubscription(IILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

.field final synthetic val$forceDeactivateSim:Z

.field final synthetic val$iccid:Ljava/lang/String;

.field final synthetic val$portIndex:I

.field final synthetic val$slotId:I

.field final synthetic val$usePortIndex:Z


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ZIILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
    .registers 8
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 989
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput-boolean p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$usePortIndex:Z

    iput p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    iput p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$portIndex:I

    iput-object p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$iccid:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$forceDeactivateSim:Z

    iput-object p7, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 992
    const/4 v0, 0x0

    .line 993
    .local v0, "result":I
    iget-boolean v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$usePortIndex:Z

    if-eqz v1, :cond_16

    .line 994
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v1, v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$portIndex:I

    iget-object v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$iccid:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$forceDeactivateSim:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/service/euicc/EuiccService;->onSwitchToSubscriptionWithPort(IILjava/lang/String;Z)I

    move-result v0

    goto :goto_24

    .line 997
    :cond_16
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v1, v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    iget-object v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$iccid:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$forceDeactivateSim:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/euicc/EuiccService;->onSwitchToSubscription(ILjava/lang/String;Z)I

    move-result v0

    .line 1001
    :goto_24
    :try_start_24
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/ISwitchToSubscriptionCallback;->onComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 1004
    goto :goto_2b

    .line 1002
    :catch_2a
    move-exception v1

    .line 1005
    :goto_2b
    return-void
.end method
