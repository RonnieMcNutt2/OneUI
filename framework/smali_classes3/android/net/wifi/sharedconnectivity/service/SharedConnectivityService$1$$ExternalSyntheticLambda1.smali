.class public final synthetic Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;

.field public final synthetic f$1:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    invoke-static {v0, v1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->$r8$lambda$GXh_81gsUABIAvdkTIlLpYkf1mU(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    return-void
.end method
