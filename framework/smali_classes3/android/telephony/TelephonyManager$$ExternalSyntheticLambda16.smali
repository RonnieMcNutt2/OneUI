.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field public final synthetic f$2:Landroid/os/RemoteException;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$1:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$2:Landroid/os/RemoteException;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$1:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;->f$2:Landroid/os/RemoteException;

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->lambda$requestCellInfoUpdate$7(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    return-void
.end method
