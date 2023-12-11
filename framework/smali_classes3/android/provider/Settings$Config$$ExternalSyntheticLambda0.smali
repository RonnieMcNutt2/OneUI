.class public final synthetic Landroid/provider/Settings$Config$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/provider/DeviceConfig$MonitorCallback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/Settings$Config$$ExternalSyntheticLambda0;->f$0:Landroid/provider/DeviceConfig$MonitorCallback;

    iput-object p2, p0, Landroid/provider/Settings$Config$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/provider/Settings$Config$$ExternalSyntheticLambda0;->f$0:Landroid/provider/DeviceConfig$MonitorCallback;

    iget-object v1, p0, Landroid/provider/Settings$Config$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Config;->lambda$handleMonitorCallback$1(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;)V

    return-void
.end method
