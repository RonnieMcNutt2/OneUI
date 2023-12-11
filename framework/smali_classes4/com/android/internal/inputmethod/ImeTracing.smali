.class public abstract Lcom/android/internal/inputmethod/ImeTracing;
.super Ljava/lang/Object;
.source "ImeTracing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    }
.end annotation


# static fields
.field public static final IME_TRACING_FROM_CLIENT:I = 0x0

.field public static final IME_TRACING_FROM_IMMS:I = 0x2

.field public static final IME_TRACING_FROM_IMS:I = 0x1

.field public static final PROTO_ARG:Ljava/lang/String; = "--proto-com-android-imetracing"

.field static final TAG:Ljava/lang/String; = "imeTracing"

.field static sEnabled:Z

.field private static sInstance:Lcom/android/internal/inputmethod/ImeTracing;


# instance fields
.field protected mDumpInProgress:Z

.field protected final mDumpInProgressLock:Ljava/lang/Object;

.field private final mIsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Landroid/view/inputmethod/InputMethodManagerGlobal;->isImeTraceAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mIsAvailable:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mDumpInProgressLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/inputmethod/ImeTracing;
    .registers 1

    .line 61
    sget-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    if-nez v0, :cond_19

    .line 62
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->isSystemProcess()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 63
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    goto :goto_19

    .line 65
    :cond_12
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    .line 68
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    return-object v0
.end method

.method private static isSystemProcess()Z
    .registers 1

    .line 197
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sendToService$0(Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 82
    const-string v0, "imeTracing"

    const-string v1, "Exception while sending ime-related dump to server"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$startImeTrace$1(Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 90
    const-string v0, "imeTracing"

    const-string v1, "Could not start ime trace."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$stopImeTrace$2(Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 98
    const-string v0, "imeTracing"

    const-string v1, "Could not stop ime trace."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public abstract addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
.end method

.method public isAvailable()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mIsAvailable:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 172
    sget-boolean v0, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    return v0
.end method

.method protected logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .line 201
    const-string v0, "imeTracing"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz p1, :cond_d

    .line 203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 206
    :cond_d
    return-void
.end method

.method public saveForBugreport(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 157
    return-void
.end method

.method public sendToService([BILjava/lang/String;)V
    .registers 5
    .param p1, "protoDump"    # [B
    .param p2, "source"    # I
    .param p3, "where"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManagerGlobal;->startProtoDump([BILjava/lang/String;Ljava/util/function/Consumer;)V

    .line 83
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 165
    sput-boolean p1, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    .line 166
    return-void
.end method

.method public final startImeTrace()V
    .registers 2

    .line 90
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerGlobal;->startImeTrace(Ljava/util/function/Consumer;)V

    .line 91
    return-void
.end method

.method public abstract startTrace(Ljava/io/PrintWriter;)V
.end method

.method public final stopImeTrace()V
    .registers 2

    .line 98
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerGlobal;->stopImeTrace(Ljava/util/function/Consumer;)V

    .line 99
    return-void
.end method

.method public abstract stopTrace(Ljava/io/PrintWriter;)V
.end method

.method public abstract triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
.end method

.method public abstract triggerManagerServiceDump(Ljava/lang/String;)V
.end method

.method public abstract triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
.end method
