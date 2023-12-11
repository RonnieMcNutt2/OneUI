.class public abstract Landroid/telecom/CallRedirectionService;
.super Landroid/app/Service;
.source "CallRedirectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallRedirectionService$CallRedirectionBinder;
    }
.end annotation


# static fields
.field private static final MSG_PLACE_CALL:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x2

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallRedirectionService"


# instance fields
.field private mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/telecom/CallRedirectionService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallRedirectionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallRedirectionAdapter(Landroid/telecom/CallRedirectionService;Lcom/android/internal/telecom/ICallRedirectionAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 185
    new-instance v0, Landroid/telecom/CallRedirectionService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallRedirectionService$1;-><init>(Landroid/telecom/CallRedirectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/CallRedirectionService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final cancelCall()V
    .registers 3

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v0, :cond_8

    .line 165
    invoke-interface {v0}, Lcom/android/internal/telecom/ICallRedirectionAdapter;->cancelCall()V

    .line 168
    goto :goto_14

    .line 163
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called from onPlaceCall."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telecom/CallRedirectionService;
    throw v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_10

    .line 166
    .restart local p0    # "this":Landroid/telecom/CallRedirectionService;
    :catch_10
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 241
    new-instance v0, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;-><init>(Landroid/telecom/CallRedirectionService;Landroid/telecom/CallRedirectionService$CallRedirectionBinder-IA;)V

    return-object v0
.end method

.method public abstract onPlaceCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
.end method

.method public onRedirectionTimeout()V
    .registers 1

    .line 96
    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public final placeCallUnmodified()V
    .registers 3

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v0, :cond_8

    .line 113
    invoke-interface {v0}, Lcom/android/internal/telecom/ICallRedirectionAdapter;->placeCallUnmodified()V

    .line 116
    goto :goto_14

    .line 111
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called from onPlaceCall."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telecom/CallRedirectionService;
    throw v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_10

    .line 114
    .restart local p0    # "this":Landroid/telecom/CallRedirectionService;
    :catch_10
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public final redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 6
    .param p1, "gatewayUri"    # Landroid/net/Uri;
    .param p2, "targetPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "confirmFirst"    # Z

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v0, :cond_8

    .line 144
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/ICallRedirectionAdapter;->redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 147
    goto :goto_14

    .line 142
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called from onPlaceCall."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telecom/CallRedirectionService;
    .end local p1    # "gatewayUri":Landroid/net/Uri;
    .end local p2    # "targetPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local p3    # "confirmFirst":Z
    throw v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_10

    .line 145
    .restart local p0    # "this":Landroid/telecom/CallRedirectionService;
    .restart local p1    # "gatewayUri":Landroid/net/Uri;
    .restart local p2    # "targetPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local p3    # "confirmFirst":Z
    :catch_10
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method
