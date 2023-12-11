.class public final synthetic Landroid/telecom/CallControl$CallControlResultReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/CallControl$CallControlResultReceiver;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/CallControl$CallControlResultReceiver;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallControl$CallControlResultReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/CallControl$CallControlResultReceiver;

    iput-object p2, p0, Landroid/telecom/CallControl$CallControlResultReceiver$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telecom/CallControl$CallControlResultReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/CallControl$CallControlResultReceiver;

    iget-object v1, p0, Landroid/telecom/CallControl$CallControlResultReceiver$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/telecom/CallControl$CallControlResultReceiver;->$r8$lambda$z7Umrx8-uAiA_Z4BMKzHYyZW6uw(Landroid/telecom/CallControl$CallControlResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method
