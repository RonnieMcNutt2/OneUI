.class public Landroid/view/InsetsSourceConsumer;
.super Ljava/lang/Object;
.source "InsetsSourceConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceConsumer$ShowResult;
    }
.end annotation


# static fields
.field protected static final ANIMATION_STATE_HIDE:I = 0x2

.field protected static final ANIMATION_STATE_NONE:I = 0x0

.field protected static final ANIMATION_STATE_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InsetsSourceConsumer"


# instance fields
.field protected mAnimationState:I

.field protected final mController:Landroid/view/InsetsController;

.field private mHasViewFocusWhenWindowFocusGain:Z

.field private mHasWindowFocus:Z

.field private mId:I

.field private mPendingFrame:Landroid/graphics/Rect;

.field private mPendingVisibleFrame:Landroid/graphics/Rect;

.field private mSourceControl:Landroid/view/InsetsSourceControl;

.field protected final mState:Landroid/view/InsetsState;

.field private final mTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method public constructor <init>(IILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "state"    # Landroid/view/InsetsState;
    .param p5, "controller"    # Landroid/view/InsetsController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    .line 118
    .local p4, "transactionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    .line 119
    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    .line 120
    iput p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    .line 121
    iput-object p3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    .line 122
    iput-object p4, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 123
    iput-object p5, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 124
    return-void
.end method

.method private applyRequestedVisibilityToControl()V
    .registers 6

    .line 413
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 415
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_8e

    .line 420
    :cond_18
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 421
    .local v0, "requestedVisible":Z
    :goto_26
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 424
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_2e
    const-string v2, "InsetsSourceConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyRequestedVisibilityToControl: visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz v0, :cond_5e

    .line 430
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_67

    .line 432
    :cond_5e
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 435
    :goto_67
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v0, :cond_72

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_73

    :cond_72
    const/4 v3, 0x0

    :goto_73
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 436
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_79
    .catchall {:try_start_2e .. :try_end_79} :catchall_82

    .line 437
    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 438
    .end local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_7e
    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 439
    return-void

    .line 421
    .restart local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    :catchall_82
    move-exception v2

    if-eqz v1, :cond_8d

    :try_start_85
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8d
    :goto_8d
    throw v2

    .line 417
    .end local v0    # "requestedVisible":Z
    .end local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_8e
    :goto_8e
    return-void
.end method

.method private ensureControlPosition()V
    .registers 5

    .line 468
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 469
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 470
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 471
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 469
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 472
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    new-instance v2, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 474
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v2

    filled-new-array {v2}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v2

    .line 472
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/view/InsetsController;->applySurfaceParams(Z[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 475
    return-void
.end method

.method private isVisibleAndHasLeashButNoAnimation()Z
    .registers 6

    .line 461
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 462
    .local v0, "requestedVisible":Z
    :goto_10
    if-eqz v0, :cond_36

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v3, :cond_36

    .line 463
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 464
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    .line 462
    :goto_37
    return v1
.end method


# virtual methods
.method public applyLocalVisibilityOverride()Z
    .registers 6

    .line 327
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 328
    .local v0, "source":Landroid/view/InsetsSource;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 329
    return v1

    .line 331
    :cond_c
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v2

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, v1

    .line 334
    .local v2, "requestedVisible":Z
    :goto_1b
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v4, :cond_20

    .line 338
    return v1

    .line 340
    :cond_20
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-ne v4, v2, :cond_27

    .line 341
    return v1

    .line 345
    :cond_27
    invoke-virtual {v0, v2}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 346
    return v3
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 442
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 443
    .local v0, "token":J
    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 444
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 445
    const-wide v2, 0x10800000003L

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 446
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v2, :cond_34

    .line 447
    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 449
    :cond_34
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_40

    .line 450
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 452
    :cond_40
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_4c

    .line 453
    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 455
    :cond_4c
    const-wide v2, 0x10500000007L

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 456
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 457
    return-void
.end method

.method public getControl()Landroid/view/InsetsSourceControl;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method getId()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    return v0
.end method

.method getType()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    return v0
.end method

.method hasViewFocusWhenWindowFocusGain()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return v0
.end method

.method protected isRequestedVisibleAwaitingControl()Z
    .registers 3

    .line 239
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method protected isShowRequested()Z
    .registers 3

    .line 303
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public onAnimationStateChanged(Z)Z
    .registers 8
    .param p1, "running"    # Z

    .line 260
    if-nez p1, :cond_b

    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->isVisibleAndHasLeashButNoAnimation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 265
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->ensureControlPosition()V

    .line 269
    :cond_b
    const/4 v0, 0x0

    .line 270
    .local v0, "insetsChanged":Z
    if-nez p1, :cond_2c

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v1, :cond_2c

    .line 271
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 272
    .local v1, "source":Landroid/view/InsetsSource;
    if-eqz v1, :cond_27

    .line 273
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 274
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 275
    const/4 v0, 0x1

    .line 277
    :cond_27
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 278
    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 281
    .end local v1    # "source":Landroid/view/InsetsSource;
    :cond_2c
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v1

    .line 282
    .local v1, "showRequested":Z
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_3f

    if-eqz v1, :cond_3f

    .line 283
    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-ne v5, v2, :cond_3d

    move v5, v4

    goto :goto_46

    :cond_3d
    move v5, v3

    goto :goto_46

    .line 284
    :cond_3f
    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-ne v5, v4, :cond_45

    move v5, v4

    goto :goto_46

    :cond_45
    move v5, v3

    :goto_46
    nop

    .line 286
    .local v5, "cancelledForNewAnimation":Z
    if-eqz p1, :cond_4d

    .line 287
    if-eqz v1, :cond_4e

    move v2, v4

    goto :goto_4e

    .line 288
    :cond_4d
    move v2, v3

    :cond_4e
    :goto_4e
    iput v2, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    .line 296
    if-nez v5, :cond_57

    .line 297
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v2

    or-int/2addr v0, v2

    .line 299
    :cond_57
    return v0
.end method

.method public onPerceptible(Z)V
    .registers 2
    .param p1, "perceptible"    # Z

    .line 379
    return-void
.end method

.method public onWindowFocusGained(Z)V
    .registers 3
    .param p1, "hasViewFocus"    # Z

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 311
    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    .line 312
    return-void
.end method

.method public onWindowFocusLost()V
    .registers 2

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 319
    return-void
.end method

.method public removeSurface()V
    .registers 1

    .line 386
    return-void
.end method

.method requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3
    .param p1, "fromController"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 370
    return-void
.end method

.method public requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I
    .registers 4
    .param p1, "fromController"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public setControl(Landroid/view/InsetsSourceControl;[I[I)Z
    .registers 12
    .param p1, "control"    # Landroid/view/InsetsSourceControl;
    .param p2, "showTypes"    # [I
    .param p3, "hideTypes"    # [I

    .line 137
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 138
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_19

    if-eq v0, p1, :cond_19

    .line 139
    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 140
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 142
    :cond_19
    return v1

    .line 145
    :cond_1a
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 146
    .local v0, "lastControl":Landroid/view/InsetsSourceControl;
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 147
    nop

    .line 152
    const/4 v2, 0x1

    if-nez p1, :cond_5d

    .line 154
    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3, p0}, Landroid/view/InsetsController;->notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V

    .line 157
    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 158
    .local v3, "localSource":Landroid/view/InsetsSource;
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getLastDispatchedState()Landroid/view/InsetsState;

    move-result-object v4

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 159
    .local v4, "serverSource":Landroid/view/InsetsSource;
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_45

    move v5, v2

    goto :goto_46

    :cond_45
    move v5, v1

    .line 160
    .local v5, "localVisible":Z
    :goto_46
    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4f

    move v1, v2

    .line 161
    .local v1, "serverVisible":Z
    :cond_4f
    if-eqz v3, :cond_54

    .line 162
    invoke-virtual {v3, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 164
    :cond_54
    if-eq v5, v1, :cond_5b

    .line 165
    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v6}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 167
    .end local v1    # "serverVisible":Z
    .end local v3    # "localSource":Landroid/view/InsetsSource;
    .end local v4    # "serverSource":Landroid/view/InsetsSource;
    .end local v5    # "localVisible":Z
    :cond_5b
    goto/16 :goto_e6

    .line 168
    :cond_5d
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v3

    .line 169
    .local v3, "requestedVisible":Z
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    goto :goto_69

    :cond_68
    const/4 v4, 0x0

    .line 170
    .local v4, "oldLeash":Landroid/view/SurfaceControl;
    :goto_69
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 171
    .local v5, "newLeash":Landroid/view/SurfaceControl;
    if-eqz v5, :cond_8f

    if-eqz v4, :cond_77

    invoke-virtual {v5, v4}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v6

    if-nez v6, :cond_8f

    .line 172
    :cond_77
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->isInitiallyVisible()Z

    move-result v6

    if-eq v3, v6, :cond_8f

    .line 177
    if-eqz v3, :cond_87

    .line 178
    aget v6, p2, v1

    iget v7, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v6, v7

    aput v6, p2, v1

    goto :goto_e6

    .line 180
    :cond_87
    aget v6, p3, v1

    iget v7, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v6, v7

    aput v6, p3, v1

    goto :goto_e6

    .line 185
    :cond_8f
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 186
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 191
    :cond_9a
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    iget v6, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v1, v6}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_c1

    if-eqz v0, :cond_c4

    .line 197
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v1

    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, v6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 198
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 200
    :cond_c1
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyRequestedVisibilityToControl()V

    .line 204
    :cond_c4
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->isVisibleAndHasLeashButNoAnimation()Z

    move-result v1

    if-eqz v1, :cond_df

    if-eqz v0, :cond_df

    .line 205
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v1

    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 206
    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v6

    .line 205
    invoke-virtual {v1, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 212
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->ensureControlPosition()V

    .line 217
    :cond_df
    if-nez v3, :cond_e6

    if-nez v0, :cond_e6

    .line 218
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    .line 222
    .end local v3    # "requestedVisible":Z
    .end local v4    # "oldLeash":Landroid/view/SurfaceControl;
    .end local v5    # "newLeash":Landroid/view/SurfaceControl;
    :cond_e6
    :goto_e6
    if-eqz v0, :cond_f0

    .line 223
    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 225
    :cond_f0
    return v2
.end method

.method setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 247
    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    .line 248
    return-void
.end method

.method public updateSource(Landroid/view/InsetsSource;I)V
    .registers 7
    .param p1, "newSource"    # Landroid/view/InsetsSource;
    .param p2, "animationType"    # I

    .line 390
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 391
    .local v0, "source":Landroid/view/InsetsSource;
    const/4 v1, 0x0

    if-eqz v0, :cond_55

    const/4 v2, -0x1

    if-eq p2, v2, :cond_55

    .line 392
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_55

    .line 401
    :cond_1d
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object p1, v2

    .line 402
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 403
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 404
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3f

    .line 405
    :cond_3e
    nop

    :goto_3f
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 406
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 407
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 408
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 410
    return-void

    .line 393
    :cond_55
    :goto_55
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 394
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 395
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 396
    return-void
.end method
