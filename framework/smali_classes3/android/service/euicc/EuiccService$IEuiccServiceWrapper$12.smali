.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IEraseSubscriptionsCallback;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 4
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1028
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;->val$callback:Landroid/service/euicc/IEraseSubscriptionsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1031
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;->val$slotId:I

    invoke-virtual {v0, v1}, Landroid/service/euicc/EuiccService;->onEraseSubscriptions(I)I

    move-result v0

    .line 1033
    .local v0, "result":I
    :try_start_a
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;->val$callback:Landroid/service/euicc/IEraseSubscriptionsCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IEraseSubscriptionsCallback;->onComplete(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 1036
    goto :goto_11

    .line 1034
    :catch_10
    move-exception v1

    .line 1037
    :goto_11
    return-void
.end method
