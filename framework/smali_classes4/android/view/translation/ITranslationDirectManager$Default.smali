.class public Landroid/view/translation/ITranslationDirectManager$Default;
.super Ljava/lang/Object;
.source "ITranslationDirectManager.java"

# interfaces
.implements Landroid/view/translation/ITranslationDirectManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ITranslationDirectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFinishTranslationSession(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/view/translation/TranslationRequest;
    .param p2, "sessionId"    # I
    .param p3, "transport"    # Landroid/os/ICancellationSignal;
    .param p4, "callback"    # Landroid/service/translation/ITranslationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
