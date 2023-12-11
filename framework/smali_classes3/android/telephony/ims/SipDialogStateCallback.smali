.class public abstract Landroid/telephony/ims/SipDialogStateCallback;
.super Ljava/lang/Object;
.source "SipDialogStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;


# direct methods
.method public static synthetic $r8$lambda$Wz84PTgubkTjO49svBagrngdHaM(Landroid/telephony/ims/SipDialogStateCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/SipDialogStateCallback;->lambda$binderDied$0()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$binderDied$0()V
    .registers 1

    .line 92
    invoke-virtual {p0}, Landroid/telephony/ims/SipDialogStateCallback;->onError()V

    return-void
.end method


# virtual methods
.method public attachExecutor(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 42
    if-eqz p1, :cond_b

    .line 45
    new-instance v0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;-><init>(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/concurrent/Executor;Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback;->mCallback:Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    .line 46
    return-void

    .line 43
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SipDialogStateCallback Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final binderDied()V
    .registers 3

    .line 91
    iget-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback;->mCallback:Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    if-eqz v0, :cond_10

    .line 92
    invoke-virtual {v0}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/SipDialogStateCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/ims/SipDialogStateCallback$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/SipDialogStateCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    :cond_10
    return-void
.end method

.method public getCallbackBinder()Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback;->mCallback:Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    return-object v0
.end method

.method public abstract onActiveSipDialogsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SipDialogState;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError()V
.end method
