.class public Landroid/telephony/ims/stub/ImsUtImplBase;
.super Ljava/lang/Object;
.source "ImsUtImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsUtImplBase$CallBarringMode;
    }
.end annotation


# static fields
.field public static final CALL_BARRING_ALL:I = 0x7

.field public static final CALL_BARRING_ALL_INCOMING:I = 0x1

.field public static final CALL_BARRING_ALL_OUTGOING:I = 0x2

.field public static final CALL_BARRING_ANONYMOUS_INCOMING:I = 0x6

.field public static final CALL_BARRING_INCOMING_ALL_SERVICES:I = 0x9

.field public static final CALL_BARRING_OUTGOING_ALL_SERVICES:I = 0x8

.field public static final CALL_BARRING_OUTGOING_INTL:I = 0x3

.field public static final CALL_BARRING_OUTGOING_INTL_EXCL_HOME:I = 0x4

.field public static final CALL_BARRING_SPECIFIC_INCOMING_CALLS:I = 0xa

.field public static final CALL_BLOCKING_INCOMING_WHEN_ROAMING:I = 0x5

.field public static final INVALID_RESULT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ImsUtImplBase"


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 318
    return-void
.end method

.method public getInterface()Lcom/android/ims/internal/IImsUt;
    .registers 2

    .line 525
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;

    return-object v0
.end method

.method public queryCLIP()I
    .registers 2

    .line 362
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryClip()I

    move-result v0

    return v0
.end method

.method public queryCLIR()I
    .registers 2

    .line 354
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryClir()I

    move-result v0

    return v0
.end method

.method public queryCOLP()I
    .registers 2

    .line 378
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryColp()I

    move-result v0

    return v0
.end method

.method public queryCOLR()I
    .registers 2

    .line 370
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryColr()I

    move-result v0

    return v0
.end method

.method public queryCallBarring(I)I
    .registers 3
    .param p1, "cbType"    # I

    .line 325
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallBarringForServiceClass(II)I
    .registers 4
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 332
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .registers 4
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 339
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallWaiting()I
    .registers 2

    .line 346
    const/4 v0, -0x1

    return v0
.end method

.method public queryClip()I
    .registers 2

    .line 392
    const/4 v0, -0x1

    return v0
.end method

.method public queryClir()I
    .registers 2

    .line 385
    const/4 v0, -0x1

    return v0
.end method

.method public queryColp()I
    .registers 2

    .line 406
    const/4 v0, -0x1

    return v0
.end method

.method public queryColr()I
    .registers 2

    .line 399
    const/4 v0, -0x1

    return v0
.end method

.method public final setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 535
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 536
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 519
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 413
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIP(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 468
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateClip(Z)I

    move-result v0

    return v0
.end method

.method public updateCLIR(I)I
    .registers 3
    .param p1, "clirMode"    # I

    .line 460
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateClir(I)I

    move-result v0

    return v0
.end method

.method public updateCOLP(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 484
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateColp(Z)I

    move-result v0

    return v0
.end method

.method public updateCOLR(I)I
    .registers 3
    .param p1, "presentation"    # I

    .line 476
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateColr(I)I

    move-result v0

    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .registers 5
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 420
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .registers 6
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 428
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .registers 7
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;

    .line 437
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .registers 7
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 452
    const/4 v0, -0x1

    return v0
.end method

.method public updateClip(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 498
    const/4 v0, -0x1

    return v0
.end method

.method public updateClir(I)I
    .registers 3
    .param p1, "clirMode"    # I

    .line 491
    const/4 v0, -0x1

    return v0
.end method

.method public updateColp(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 512
    const/4 v0, -0x1

    return v0
.end method

.method public updateColr(I)I
    .registers 3
    .param p1, "presentation"    # I

    .line 505
    const/4 v0, -0x1

    return v0
.end method
