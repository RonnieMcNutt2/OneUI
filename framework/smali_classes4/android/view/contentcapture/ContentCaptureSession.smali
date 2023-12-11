.class public abstract Landroid/view/contentcapture/ContentCaptureSession;
.super Ljava/lang/Object;
.source "ContentCaptureSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureSession$FlushReason;
    }
.end annotation


# static fields
.field public static final FLUSH_REASON_FORCE_FLUSH:I = 0x8

.field public static final FLUSH_REASON_FULL:I = 0x1

.field public static final FLUSH_REASON_IDLE_TIMEOUT:I = 0x5

.field public static final FLUSH_REASON_SESSION_CONNECTED:I = 0x7

.field public static final FLUSH_REASON_SESSION_FINISHED:I = 0x4

.field public static final FLUSH_REASON_SESSION_STARTED:I = 0x3

.field public static final FLUSH_REASON_TEXT_CHANGE_TIMEOUT:I = 0x6

.field public static final FLUSH_REASON_VIEW_ROOT_ENTERED:I = 0x2

.field public static final FLUSH_REASON_VIEW_TREE_APPEARED:I = 0xa

.field public static final FLUSH_REASON_VIEW_TREE_APPEARING:I = 0x9

.field private static final ID_GENERATOR:Ljava/security/SecureRandom;

.field private static final INITIAL_CHILDREN_CAPACITY:I = 0x5

.field static final NOTIFY_NODES_DISAPPEAR_NOW_SENDS_TREE_EVENTS:J = 0xf6d5e61L

.field public static final STATE_ACTIVE:I = 0x2

.field public static final STATE_BY_APP:I = 0x40

.field public static final STATE_DISABLED:I = 0x4

.field public static final STATE_DUPLICATED_ID:I = 0x8

.field public static final STATE_FLAG_SECURE:I = 0x20

.field public static final STATE_INTERNAL_ERROR:I = 0x100

.field public static final STATE_NOT_WHITELISTED:I = 0x200

.field public static final STATE_NO_RESPONSE:I = 0x80

.field public static final STATE_NO_SERVICE:I = 0x10

.field public static final STATE_SERVICE_DIED:I = 0x400

.field public static final STATE_SERVICE_RESURRECTED:I = 0x1000

.field public static final STATE_SERVICE_UPDATING:I = 0x800

.field public static final STATE_WAITING_FOR_SERVER:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UNKNOWN_STATE:I


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/contentcapture/ContentCaptureSession;",
            ">;"
        }
    .end annotation
.end field

.field private mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

.field private mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

.field private mDestroyed:Z

.field protected final mId:I

.field private final mLock:Ljava/lang/Object;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 244
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureSession;->getRandomSessionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>(I)V

    .line 245
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    .line 250
    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 251
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    .line 252
    return-void
.end method

.method constructor <init>(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3
    .param p1, "initialContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 256
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>()V

    .line 257
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureContext;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 258
    return-void
.end method

.method public static getFlushReasonAsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 667
    packed-switch p0, :pswitch_data_36

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 687
    :pswitch_17
    const-string v0, "VIEW_TREE_APPEARED"

    return-object v0

    .line 685
    :pswitch_1a
    const-string v0, "VIEW_TREE_APPEARING"

    return-object v0

    .line 683
    :pswitch_1d
    const-string v0, "FORCE_FLUSH"

    return-object v0

    .line 681
    :pswitch_20
    const-string v0, "CONNECTED"

    return-object v0

    .line 679
    :pswitch_23
    const-string v0, "TEXT_CHANGE"

    return-object v0

    .line 677
    :pswitch_26
    const-string v0, "IDLE"

    return-object v0

    .line 675
    :pswitch_29
    const-string v0, "FINISHED"

    return-object v0

    .line 673
    :pswitch_2c
    const-string v0, "STARTED"

    return-object v0

    .line 671
    :pswitch_2f
    const-string v0, "VIEW_ROOT"

    return-object v0

    .line 669
    :pswitch_32
    const-string v0, "FULL"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private static getRandomSessionId()I
    .registers 1

    .line 696
    nop

    :cond_1
    sget-object v0, Landroid/view/contentcapture/ContentCaptureSession;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    .line 697
    .local v0, "id":I
    if-eqz v0, :cond_1

    .line 698
    return v0
.end method

.method protected static getStateAsString(I)Ljava/lang/String;
    .registers 6
    .param p0, "state"    # I

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_14

    const-string v1, "UNKNOWN"

    goto :goto_1d

    .line 661
    :cond_14
    const-string v1, "STATE_"

    int-to-long v2, p0

    const-class v4, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-static {v4, v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 377
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V

    .line 378
    return-void
.end method

.method public final createContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .registers 6
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 289
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 290
    .local v0, "child":Landroid/view/contentcapture/ContentCaptureSession;
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_38

    .line 291
    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContentCaptureSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", child="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_38
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_3b
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_47

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    .line 298
    :cond_47
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    monitor-exit v1

    .line 300
    return-object v0

    .line 299
    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_4e

    throw v2
.end method

.method public final destroy()V
    .registers 9

    .line 342
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-eqz v1, :cond_2d

    .line 344
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v1, :cond_2b

    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): already destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_2b
    monitor-exit v0

    return-void

    .line 347
    :cond_2d
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    .line 351
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_5e

    .line 352
    sget-object v1, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mState:I

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureSession;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_5e
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_bd

    .line 356
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 357
    .local v1, "numberChildren":I
    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_88

    sget-object v2, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " children first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_88
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_89
    if-ge v2, v1, :cond_bd

    .line 359
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/contentcapture/ContentCaptureSession;
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_c2

    .line 361
    .local v3, "child":Landroid/view/contentcapture/ContentCaptureSession;
    :try_start_93
    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97
    .catchall {:try_start_93 .. :try_end_96} :catchall_c2

    .line 364
    goto :goto_ba

    .line 362
    :catch_97
    move-exception v4

    .line 363
    .local v4, "e":Ljava/lang/Exception;
    :try_start_98
    sget-object v5, Landroid/view/contentcapture/ContentCaptureSession;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception destroying child session #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v3    # "child":Landroid/view/contentcapture/ContentCaptureSession;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 367
    .end local v1    # "numberChildren":I
    .end local v2    # "i":I
    :cond_bd
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_98 .. :try_end_be} :catchall_c2

    .line 369
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->onDestroy()V

    .line 370
    return-void

    .line 367
    :catchall_c2
    move-exception v1

    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 634
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 635
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    if-eqz v0, :cond_1c

    .line 636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 638
    :cond_1c
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_1f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "destroyed: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 640
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_77

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "prefix2":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 643
    .local v2, "numberChildren":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "number children: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 644
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5c
    if-ge v3, v2, :cond_77

    .line 645
    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureSession;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/contentcapture/ContentCaptureSession;

    .line 646
    .local v4, "child":Landroid/view/contentcapture/ContentCaptureSession;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 644
    .end local v4    # "child":Landroid/view/contentcapture/ContentCaptureSession;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 649
    .end local v1    # "prefix2":Ljava/lang/String;
    .end local v2    # "numberChildren":I
    .end local v3    # "i":I
    :cond_77
    monitor-exit v0

    .line 650
    return-void

    .line 649
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_1f .. :try_end_7b} :catchall_79

    throw v1
.end method

.method abstract flush(I)V
.end method

.method public final getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public final getContentCaptureSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .registers 3

    .line 269
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    if-nez v0, :cond_d

    .line 270
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    .line 272
    :cond_d
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mContentCaptureSessionId:Landroid/view/contentcapture/ContentCaptureSessionId;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 278
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    return v0
.end method

.method abstract getMainCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;
.end method

.method abstract internalNotifySessionPaused()V
.end method

.method abstract internalNotifySessionResumed()V
.end method

.method abstract internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
.end method

.method abstract internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
.end method

.method abstract internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V
.end method

.method abstract internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
.end method

.method public abstract internalNotifyViewTreeEvent(Z)V
.end method

.method isContentCaptureEnabled()Z
    .registers 3

    .line 627
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_3
    iget-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mDestroyed:Z

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 629
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public newAutofillId(Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;
    .registers 7
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # J

    .line 605
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const-string v1, "hostId cannot be virtual: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 607
    new-instance v0, Landroid/view/autofill/AutofillId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method abstract newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
.end method

.method public final newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 589
    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;
    .registers 6
    .param p1, "parentId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualId"    # J

    .line 623
    new-instance v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;-><init>(Landroid/view/autofill/AutofillId;JI)V

    return-object v0
.end method

.method public final notifySessionPaused()V
    .registers 2

    .line 536
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 538
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionPaused()V

    .line 539
    return-void
.end method

.method public final notifySessionResumed()V
    .registers 2

    .line 525
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 527
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionResumed()V

    .line 528
    return-void
.end method

.method public final notifyViewAppeared(Landroid/view/ViewStructure;)V
    .registers 5
    .param p1, "node"    # Landroid/view/ViewStructure;

    .line 393
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 396
    :cond_a
    instance-of v0, p1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    if-eqz v0, :cond_15

    .line 400
    move-object v0, p1

    check-cast v0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    .line 401
    return-void

    .line 397
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifyViewDisappeared(Landroid/view/autofill/AutofillId;)V
    .registers 3
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 417
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 420
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V

    .line 421
    return-void
.end method

.method public final notifyViewInsetsChanged(Landroid/graphics/Insets;)V
    .registers 3
    .param p1, "viewInsets"    # Landroid/graphics/Insets;

    .line 509
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 513
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewInsetsChanged(Landroid/graphics/Insets;)V

    .line 514
    return-void
.end method

.method public final notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 495
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 499
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method public final notifyViewsAppeared(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/ViewStructure;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p1, "appearedNodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewStructure;>;"
    const-string v0, "appearedNodes"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 436
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 438
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 439
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStructure;

    .line 440
    .local v1, "v":Landroid/view/ViewStructure;
    instance-of v2, v1, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    if-eqz v2, :cond_20

    .line 438
    .end local v1    # "v":Landroid/view/ViewStructure;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 441
    .restart local v1    # "v":Landroid/view/ViewStructure;
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    .end local v0    # "i":I
    .end local v1    # "v":Landroid/view/ViewStructure;
    :cond_3d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(Z)V

    .line 446
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 447
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStructure;

    .line 448
    .restart local v1    # "v":Landroid/view/ViewStructure;
    move-object v2, v1

    check-cast v2, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    invoke-virtual {p0, v2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(Landroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    .line 446
    .end local v1    # "v":Landroid/view/ViewStructure;
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 450
    .end local v0    # "i":I
    :cond_57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(Z)V

    .line 451
    return-void
.end method

.method public final notifyViewsDisappeared(Landroid/view/autofill/AutofillId;[J)V
    .registers 12
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualIds"    # [J

    .line 471
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    const-string v1, "hostId cannot be virtual: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "virtual ids cannot be empty"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 473
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    .line 475
    :cond_20
    const-wide/32 v2, 0xf6d5e61

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 476
    invoke-virtual {p0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(Z)V

    .line 480
    :cond_2c
    array-length v0, p2

    const/4 v1, 0x0

    move v4, v1

    :goto_2f
    if-ge v4, v0, :cond_40

    aget-wide v5, p2, v4

    .line 481
    .local v5, "id":J
    new-instance v7, Landroid/view/autofill/AutofillId;

    iget v8, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-direct {v7, p1, v5, v6, v8}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    invoke-virtual {p0, v7}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(Landroid/view/autofill/AutofillId;)V

    .line 480
    .end local v5    # "id":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 483
    :cond_40
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 484
    invoke-virtual {p0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(Z)V

    .line 486
    :cond_49
    return-void
.end method

.method abstract onDestroy()V
.end method

.method public final setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 316
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 318
    :cond_7
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureSession;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 319
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 320
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 654
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
.end method
