.class public Lcom/android/internal/jank/InteractionJankMonitor$Session;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private final mCujType:I

.field private final mName:Ljava/lang/String;

.field private mReason:I

.field private final mTimeStamp:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "cujType"    # I
    .param p2, "postfix"    # Ljava/lang/String;

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mReason:I

    .line 1324
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    .line 1325
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mTimeStamp:J

    .line 1326
    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->generateSessionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mName:Ljava/lang/String;

    .line 1327
    return-void
.end method

.method private generateSessionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cujName"    # Ljava/lang/String;
    .param p2, "cujPostfix"    # Ljava/lang/String;

    .line 1330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1332
    .local v0, "hasPostfix":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-gt v1, v2, :cond_41

    .line 1336
    if-eqz v0, :cond_29

    .line 1337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    .line 1338
    .local v1, "remaining":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_29

    .line 1339
    add-int/lit8 v2, v1, -0x3

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1344
    .end local v1    # "remaining":I
    :cond_29
    if-eqz v0, :cond_36

    .line 1345
    const-string v1, "J<%s::%s>"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    .line 1346
    :cond_36
    const-string v1, "J<%s>"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1344
    :goto_40
    return-object v1

    .line 1333
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1334
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1333
    const-string v3, "The length of cuj name <%s> exceeds %d"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCuj()I
    .registers 2

    .line 1351
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1369
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPerfettoTrigger()Ljava/lang/String;
    .registers 4

    .line 1364
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    .line 1365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1364
    const-string v2, "com.android.telemetry.interaction-jank-monitor-%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReason()I
    .registers 2

    .line 1382
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mReason:I

    return v0
.end method

.method public getStatsdInteractionType()I
    .registers 3

    .line 1355
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    aget v0, v0, v1

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 1373
    iget-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mTimeStamp:J

    return-wide v0
.end method

.method public logToStatsd()Z
    .registers 3

    .line 1360
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getStatsdInteractionType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public setReason(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 1377
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mReason:I

    .line 1378
    return-void
.end method
