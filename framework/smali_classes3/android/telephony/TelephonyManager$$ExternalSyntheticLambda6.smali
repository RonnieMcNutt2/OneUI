.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field public final synthetic f$1:Landroid/os/RemoteException;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;->f$1:Landroid/os/RemoteException;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;->f$1:Landroid/os/RemoteException;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->lambda$requestCellInfoUpdate$6(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    return-void
.end method
