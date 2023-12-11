.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
.super Landroid/service/euicc/IEuiccService$Stub;
.source "EuiccService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/EuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IEuiccServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/euicc/EuiccService;


# direct methods
.method private constructor <init>(Landroid/service/euicc/EuiccService;)V
    .registers 2

    .line 804
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-direct {p0}, Landroid/service/euicc/IEuiccService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/euicc/EuiccService;Landroid/service/euicc/EuiccService$IEuiccServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;-><init>(Landroid/service/euicc/EuiccService;)V

    return-void
.end method


# virtual methods
.method public deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/service/euicc/IDeleteSubscriptionCallback;

    .line 973
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 984
    return-void
.end method

.method public downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V
    .registers 20
    .param p1, "slotId"    # I
    .param p2, "portIndex"    # I
    .param p3, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p4, "switchAfterDownload"    # Z
    .param p5, "forceDeactivateSim"    # Z
    .param p6, "resolvedBundle"    # Landroid/os/Bundle;
    .param p7, "callback"    # Landroid/service/euicc/IDownloadSubscriptionCallback;

    .line 810
    move-object v9, p0

    iget-object v0, v9, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v10

    new-instance v11, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method

.method public dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/service/euicc/IEuiccServiceDumpResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;

    invoke-direct {v1, p0, p1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1088
    return-void
.end method

.method public eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IEraseSubscriptionsCallback;

    .line 1028
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1039
    return-void
.end method

.method public eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "options"    # I
    .param p3, "callback"    # Landroid/service/euicc/IEraseSubscriptionsCallback;

    .line 1044
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1055
    return-void
.end method

.method public getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "forceDeactivateSim"    # Z
    .param p3, "callback"    # Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    .line 923
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 936
    return-void
.end method

.method public getDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    .registers 18
    .param p1, "slotId"    # I
    .param p2, "portIndex"    # I
    .param p3, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p4, "switchAfterDownload"    # Z
    .param p5, "forceDeactivateSim"    # Z
    .param p6, "callback"    # Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    .line 890
    move-object v8, p0

    iget-object v0, v8, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v9

    new-instance v10, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;

    move-object v0, v10

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ZIILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 918
    return-void
.end method

.method public getEid(ILandroid/service/euicc/IGetEidCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetEidCallback;

    .line 837
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEidCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 848
    return-void
.end method

.method public getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetEuiccInfoCallback;

    .line 956
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 968
    return-void
.end method

.method public getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

    .line 940
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 952
    return-void
.end method

.method public getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IGetOtaStatusCallback;

    .line 872
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetOtaStatusCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 883
    return-void
.end method

.method public retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;

    .line 1060
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$14;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$14;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1071
    return-void
.end method

.method public startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "statusChangedCallback"    # Landroid/service/euicc/IOtaStatusChangedCallback;

    .line 853
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 868
    return-void
.end method

.method public switchToSubscription(IILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;Z)V
    .registers 18
    .param p1, "slotId"    # I
    .param p2, "portIndex"    # I
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "forceDeactivateSim"    # Z
    .param p5, "callback"    # Landroid/service/euicc/ISwitchToSubscriptionCallback;
    .param p6, "usePortIndex"    # Z

    .line 989
    move-object v8, p0

    iget-object v0, v8, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v9

    new-instance v10, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p6

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ZIILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1007
    return-void
.end method

.method public updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
    .registers 13
    .param p1, "slotId"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    .line 1012
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-static {v0}, Landroid/service/euicc/EuiccService;->-$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1024
    return-void
.end method
