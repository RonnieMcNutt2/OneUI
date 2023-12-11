.class public final synthetic Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IpcDataCache$RemoteCall;


# instance fields
.field public final synthetic f$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda11;->f$0:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda11;->f$0:Landroid/app/admin/DevicePolicyManager;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/app/admin/DevicePolicyManager;->$r8$lambda$V0a4Ak9gJiCMagBMLYX0q3DbJSM(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
