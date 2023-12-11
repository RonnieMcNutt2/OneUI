.class public final synthetic Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

.field public final synthetic f$1:Lcom/samsung/android/wifi/SemWifiApClientDetails;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->lambda$onClientUpdated$0(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    return-void
.end method
